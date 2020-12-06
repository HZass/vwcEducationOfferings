/*
' Copyright (c) 2020  The Villages Woodworking Club
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

using System;
using DotNetNuke.Entities.Users;
using Vwc.Modules.VwcCourseOfferingDefine.Components;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Data;
using System.Data;

namespace Vwc.Modules.VwcCourseOfferingDefine
{
    /// -----------------------------------------------------------------------------
    /// <summary>   
    /// The Edit class is used to manage content
    /// 
    /// Typically your edit control would be used to create new content, or edit existing content within your module.
    /// The ControlKey for this control is "Edit", and is defined in the manifest (.dnn) file.
    /// 
    /// Because the control inherits from VwcCourseOfferingDefineModuleBase you have access to any custom properties
    /// defined there, as well as properties from DNN such as PortalId, ModuleId, TabId, UserId and many more.
    /// 
    /// </summary>
    /// -----------------------------------------------------------------------------
    public partial class Edit : VwcCourseOfferingDefineModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Implement your edit logic for your module
                if (!Page.IsPostBack)
                {
                    //get a list of users to assign the user to the Object

                    DataProvider courseQuery = DotNetNuke.Data.DataProvider.Instance();
                    IDataReader dr = courseQuery.ExecuteSQL("Select ID,CourseNumber,CourseTitle FROM VwcNewCourses ORDER BY CourseNumber");
                    while(dr.Read())
                    {
                        object[] sValues = new object[dr.FieldCount];
                        int iNumberOfFields = dr.GetValues(sValues);
                        ddlTargetCourseID.DataTextField = (string)sValues[1] + "  " + (string)sValues[2];
                        ddlTargetCourseID.DataValueField = sValues[0].ToString();
                        
                    }
                    
                     ddlTargetCourseID.DataBind();
                    ddlAssignedInstructor.DataSource = UserController.GetUsers(PortalId);
                    ddlAssignedInstructor.DataTextField = ("DisplayName");
                    ddlAssignedInstructor.DataValueField = ("UserId");
                    ddlAssignedInstructor.DataBind();

                    //check if we have an ID passed in via a querystring parameter, if so, load that item to edit.
                    //ItemId is defined in the ItemModuleBase.cs file
                    if (ItemId > 0)
                    {
                        var tc = new ItemController();

                        var t = tc.GetItem(ItemId, ModuleId);
                        if (t != null)
                        {
                            txtCourseTerm.Text = t.CourseTerm;
                            ddlTargetCourseID.Items.FindByValue(t.CourseNumber.ToString()).Selected = true;
                            txtCourseSection.Text = t.SectionID;
                            ddlAssignedInstructor.Items.FindByValue(t.AssignedUserId.ToString()).Selected = true;
                            txtSectionDates.Text = t.SectionDates;
                            txtSectionNotes.Text = t.SectionNote;
                            calSectionClosedDate.SelectedDate = t.SectionClosedDate;
                            txtSectionSize.Text = t.SectionSize.ToString();
                            txtSectionSupplies.Text = t.SectionSupplies;
                            txtSectionSuppliesFee.Text = t.SectionSuppliesFee.ToString();

                        }
                    }
                }
            }
            catch (Exception exc) //Module failed to load
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var t = new CourseOffering();
            var tc = new ItemController();

            if (ItemId > 0)
            {
                t = tc.GetItem(ItemId, ModuleId);
                t.CourseTerm = txtCourseTerm.Text.Trim();
                t.CourseNumber = ddlTargetCourseID.SelectedItem.Text;
                t.SectionID = txtCourseTerm.Text.Trim();
                t.InstructorID = Convert.ToInt32(ddlAssignedInstructor.SelectedValue);
                t.SectionDates = txtSectionDates.Text.Trim();
                t.SectionNote = txtSectionNotes.Text.Trim();
                t.SectionClosedDate = calSectionClosedDate.SelectedDate;
                t.SectionSize = Convert.ToInt32(txtSectionSize.Text.Trim());
                t.SectionSupplies = txtSectionSupplies.Text.Trim();
                t.SectionSuppliesFee = Convert.ToInt32(txtSectionSuppliesFee.Text.Trim());
                t.LastModifiedByUserId = UserId;
                t.LastModifiedOnDate = DateTime.Now;
                t.AssignedUserId = Convert.ToInt32(ddlTargetCourseID.SelectedValue);
            }
            else //insert new
            {
                t = new CourseOffering()
                {
                    AssignedUserId = Convert.ToInt32(ddlTargetCourseID.SelectedValue),
                    CreatedByUserId = UserId,
                    CreatedOnDate = DateTime.Now,
                    CourseTerm = txtCourseTerm.Text.Trim(),
                    CourseNumber = ddlTargetCourseID.SelectedItem.Text,
                    SectionID = txtCourseSection.Text.Trim(),
                    InstructorID = Convert.ToInt32(ddlAssignedInstructor.SelectedValue),
                    SectionDates = txtSectionDates.Text.Trim(),
                    SectionNote = txtSectionNotes.Text.Trim(),
                    SectionClosedDate = calSectionClosedDate.SelectedDate,
                    SectionSize = Convert.ToInt32(txtSectionSize.Text.Trim()),
                    SectionSupplies = txtSectionSupplies.Text.Trim(),
                    SectionSuppliesFee = Convert.ToInt32(txtSectionSuppliesFee.Text.Trim())
            };
            }

            t.LastModifiedOnDate = DateTime.Now;
            t.LastModifiedByUserId = UserId;
            t.ModuleId = ModuleId;

            if (t.Id > 0)
            {
                tc.UpdateItem(t);
            }
            else
            {
                tc.CreateItem(t);
            }
            Response.Redirect(DotNetNuke.Common.Globals.NavigateURL());
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(DotNetNuke.Common.Globals.NavigateURL());
        }
    }
}