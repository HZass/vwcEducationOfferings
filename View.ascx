<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Vwc.Modules.VwcCourseOfferingDefine.View" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<asp:Repeater ID="rptItemList" runat="server" OnItemDataBound="rptItemListOnItemDataBound" OnItemCommand="rptItemListOnItemCommand">
    <HeaderTemplate>
        <ul class="tm_tl">
    </HeaderTemplate>

    <ItemTemplate>
     
     
</div>
<div style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><table width="70%" border="1" cellpadding="2" cellspacing="2" style="border-color: #333333; border-style: solid; background-color: #ffffff;">
<tr valign="top">
<td rowspan=4 width="143" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 12pt; font-family: 'Arial Rounded MT Bold'; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Course Data</span></p>
</td>
<td colspan=4 width="639" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><br />
</td>
</tr>
<tr valign="top">
<td width="207" height="19" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Course Term:</span></p>
</td>
<td colspan=3 width="543" height="19" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem, "CourseTerm")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"CourseTerm").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Course Number:</span></p>
</td>
<td width="151" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem,"CourseNumber").ToString() %></span></p>
</td>
<td width="182" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Section </span></p>
</td>
<td width="210" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem,"SectionID").ToString() %> </span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Prerequisite Course(s):</span></p>
</td>
<td colspan=3 width="210" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><%#DataBinder.Eval(Container.DataItem, "PrerequisiteCourse")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"PrerequisiteCourse").ToString() %><br />
</td>
</tr>
<tr valign="top">
<td rowspan=5 width="143" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 12pt; font-family: 'Arial Rounded MT Bold'; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Instructor Data</span></p>
</td>
<td colspan=4 width="639" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><br />
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Name:</span></p>
</td>
<td colspan=3 width="210" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"> <%#DataBinder.Eval(Container.DataItem, "InstructorName").ToString() %> </span></p>
</td>
</tr>
<tr valign="top">
<td colspan=2 rowspan=3 width="358" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><br />
</td>
<td width="182" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Email Address</span></p>
</td>
<td width="210" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem, "InstructorEmail")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"InstructorEmail").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="182" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Villages ID</span></p>
</td>
<td width="210" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"> <%#DataBinder.Eval(Container.DataItem,"InstructorID").ToString() %> </span></p>
</td>
</tr>
<tr valign="top">
<td width="182" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Telephone Number</span></p>
</td>
<td width="210" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem, "InstructorHomePhone")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"InstructorHomePhone").ToString() %> </span></p>
</td>
</tr>
<tr valign="top">
<td rowspan=7 width="143" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 12pt; font-family: 'Arial Rounded MT Bold'; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Session Data</span></p>
</td>
<td colspan=4 width="639" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><br />
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Course Dates</span></p>
</td>
<td colspan=3 style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"> <%#DataBinder.Eval(Container.DataItem, "SectionDates")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"SectionDates").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Course Time/Notes</span></p>
</td>
<td colspan=3 style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"> <%#DataBinder.Eval(Container.DataItem, "SectionNote")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"SectionNote").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Registration Closed Date</span></p>
</td>
<td colspan=3 width="151" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem,"SectionClosedDate").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Session Class Size</span></p>
</td>
<td colspan=3 width="151" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"> <%#DataBinder.Eval(Container.DataItem, "SectionSize")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"SectionSize").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Supplies</span></p>
</td>
<td colspan=3 width="151" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem, "SectionSupplies")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"SectionSupplies").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td width="207" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 8pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: normal; color: #000000; background-color: transparent; text-decoration: none;">Supplies Fee</span></p>
</td>
<td colspan=3 width="151" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><p style=" text-align: left; text-indent: 0px; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"><span style=" font-size: 14pt; font-family: 'Arial', 'Helvetica', sans-serif; font-style: normal; font-weight: bold; color: #800000; background-color: transparent; text-decoration: none;"><%#DataBinder.Eval(Container.DataItem, "SectionSuppliesFee")==null ? String.Empty : DataBinder.Eval(Container.DataItem,"SectionSuppliesFee").ToString() %></span></p>
</td>
</tr>
<tr valign="top">
<td colspan=5 height="52" style="border-color : #333333 #333333 #333333 #333333; border-style: solid;"><br />
</td>
</tr>
</table>
</div>

            <asp:Panel ID="pnlAdmin" runat="server" Visible="false">
                <asp:HyperLink ID="lnkEdit" runat="server" ResourceKey="EditItem.Text" Visible="false" Enabled="false" />
                <asp:LinkButton ID="lnkDelete" runat="server" ResourceKey="DeleteItem.Text" Visible="false" Enabled="false" CommandName="Delete" />
            </asp:Panel>
<br /><br />
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
