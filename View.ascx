<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Vwc.Modules.VwcCourseOfferingDefine.View" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<asp:Repeater ID="rptItemList" runat="server" OnItemDataBound="rptItemListOnItemDataBound" OnItemCommand="rptItemListOnItemCommand">
    <HeaderTemplate>
        <ul class="tm_tl">
    </HeaderTemplate>

    <ItemTemplate>
            <table style="width: 640px;" border="0">
      <tbody>
        <tr>
          <td style="width: 115px; text-align: right;"><dnn:Label ID="lblCourseTerm" runat="server" /></td> 
          <td style="margin-left: -37px;  "<%#DataBinder.Eval(Container.DataItem,"CourseTerm").ToString() %>"><br></td>
          </td>
          <td style="margin-left: -21px; text-align: right;"><dnn:Label ID="lblCourseNumber" runat="server" /> </td>
          <td style="margin-left: -104px; width: 65.633px;"> "<%#DataBinder.Eval(Container.DataItem,"CourseNumber").ToString() %>"> <br>
          </td>
          <td style="width: 68.7px; text-align: right;"><dnn:Label ID="lblCourseSection" runat="server" /></td>
          <td style="width: 60px;">"<%#DataBinder.Eval(Container.DataItem,"CourseNumber").ToString() %>">  <br>
          </td>
        </tr>
        <tr>
          <td style="text-align: right;"> <dnn:Label ID="lblCourseTitle" runat="server" /></td>
          <td rowspan="1" colspan="5"> "<%#DataBinder.Eval(Container.DataItem,"CourseTitle").ToString() %>">  <br>
          </td>
        </tr>
        <tr>
          <td style="height: 34px;">
            <div style="margin-left: 40px;"><dnn:Label ID="lblInstructorName" runat="server" /> 
          </td>
          <td rowspan="1" colspan="2"> "<%#DataBinder.Eval(Container.DataItem,"InstructorName").ToString() %>">  <br>
          </td>
          <td style="text-align: right;"><dnn:Label ID="lblInstructorId" runat="server" /> </td>
          <td rowspan="1" colspan="2"> "<%#DataBinder.Eval(Container.DataItem,"InstructorID").ToString() %>"  <br>
          </td>
        </tr>
        <tr>
          <td><br>
          </td>
          <td style="width: 138.667px; text-align: right;"><dnn:Label ID="lblInstructorEmail" runat="server" /> </td>
          <td style="width: 224px;">  "<%#DataBinder.Eval(Container.DataItem,"InstructorID").ToString() %>"   <br>
          </td>
          <td style="text-align: right;"><dnn:Label ID="lblInstructorPhone" runat="server" /></td>
          <td rowspan="1" colspan="2"> "<%#DataBinder.Eval(Container.DataItem,"InstructorPhone").ToString() %>" <br>
          </td>
        </tr>
        <tr>
          <td style="text-align: right;"><dnn:Label ID="lblSectionDates" runat="server" /></td>
          <td rowspan="1" colspan="5"> "<%#DataBinder.Eval(Container.DataItem,"SectionDates").ToString() %>"<br>
          </td>
        </tr>
        <tr>
          <td style="text-align: right;"><dnn:Label ID="lblSectionNotes" runat="server" /></td>
          <td rowspan="1" colspan="5"> "<%#DataBinder.Eval(Container.DataItem,"SectionNotes").ToString() %>"<br>
          </td>
        </tr>
        <tr>
          
          <td rowspan="1" colspan="2" style="text-align: right;"><dnn:Label ID="lblSectionClosedDate" runat="server" /></td>
          <td>"<%#DataBinder.Eval(Container.DataItem,"SectionNotes").ToString() %>" <br>
          </td>
        </tr>
        <tr>
          <td style="text-align: right;"><dnn:Label ID="lblSectionSize" runat="server" /></td>
          <td><%#DataBinder.Eval(Container.DataItem,"SectionSize").ToString() %>" <br>
          </td>
          <td style="text-align: right;"><dnn:Label ID="lblPrerequisiteCourse" runat="server" /> </td>
          <td rowspan="1" colspan="3"> <%#DataBinder.Eval(Container.DataItem,"PrerequisiteCourse").ToString() %>"<br>
          </td>
        </tr>
        <tr>
          <td style="text-align: right;"><dnn:Label ID="lblSectionSupplies" runat="server" /></td>
          <td rowspan="1" colspan="2"> <%#DataBinder.Eval(Container.DataItem,"SectionSupplies").ToString() %>"<br>
          </td>
          <td rowspan="1" colspan="2" style="text-align: right;"><dnn:Label ID="lblSectionSuppliesFee" runat="server" /></td>
          <td> <%#DataBinder.Eval(Container.DataItem,"SectionSuppliesFee").ToString() %>"<br>
          </td>
        </tr>
      </tbody>
    </table>
        

            <asp:Panel ID="pnlAdmin" runat="server" Visible="false">
                <asp:HyperLink ID="lnkEdit" runat="server" ResourceKey="EditItem.Text" Visible="false" Enabled="false" />
                <asp:LinkButton ID="lnkDelete" runat="server" ResourceKey="DeleteItem.Text" Visible="false" Enabled="false" CommandName="Delete" />
            </asp:Panel>

    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
