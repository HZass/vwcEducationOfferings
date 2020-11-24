/*
' Copyright (c) 2020 The Villages Woodworking Club
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
using System.Web.Caching;
using DotNetNuke.Common.Utilities;
using DotNetNuke.ComponentModel.DataAnnotations;
using DotNetNuke.Entities.Content;

namespace Vwc.Modules.VwcCourseOfferingDefine.Components
{
    [TableName("VwcNewCourseOfferings")]
    //setup the primary key for table
    [PrimaryKey("Id", AutoIncrement = true)]
    //configure caching using PetaPoco
    [Cacheable("CourseOfferings", CacheItemPriority.Default, 20)]
    //scope the objects to the ModuleId of a module on a page (or copy of a module on a page)
    [Scope("ModuleId")]
    class CourseOffering
    {
        ///<summary>
        /// The ID of your object with the name of the ItemName
        ///</summary>
        public int Id { get; set; }
        ///<summary>
        /// A string with the term of the course Offering
        ///</summary>
        public string CourseTerm { get; set; }
        public string CourseNumber { get; set; }
        public string CourseSection { get; set; }
        public int InstructorID { get; set; }
        public string SectionDates { get; set; }         
        public string SectionNote { get; set; }
        public int SectionSize { get; set; }
        public string PrerequisiteCourse { get; set; }
        public string SectionSupplies { get; set; }
        public int SectionSuppliesFee { get; set; }
        public DateTime SectionClosedDate { get; set; }
        public string InstructorName { get; set; }
        public string InstructorEmail { get; set; }
        public string InstructorHomePhone { get; set; }
        public string InstructorCellPhone { get; set; }
              
        ///<summary>
        /// An integer with the user id of the assigned user for the object
        ///</summary>
        public int AssignedUserId { get; set; }

        ///<summary>
        /// The ModuleId of where the object was created and gets displayed
        ///</summary>
        public int ModuleId { get; set; }

        ///<summary>
        /// An integer for the user id of the user who created the object
        ///</summary>
        public int CreatedByUserId { get; set; }

        ///<summary>
        /// An integer for the user id of the user who last updated the object
        ///</summary>
        public int LastModifiedByUserId { get; set; }

        ///<summary>
        /// The date the object was created
        ///</summary>
        public DateTime CreatedOnDate { get; set; }

        ///<summary>
        /// The date the object was updated
        ///</summary>
        public DateTime LastModifiedOnDate { get; set; }
    }
}
