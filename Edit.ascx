<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edit.ascx.cs" Inherits="Vwc.Modules.VwcCourseOfferingDefine.Edit" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnForm dnnEditBasicSettings" id="dnnEditBasicSettings">
    <div class="dnnFormExpandContent dnnRight "><a href=""><%=LocalizeString("ExpandAll")%></a></div>

    <h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead dnnClear">
        <a href="" class="dnnSectionExpanded">
            <%=LocalizeString("BasicSettings")%></a></h2>
    <fieldset>
         <div class="dnnFormItem">
            <dnn:label ID="lblCourseTerm" runat="server" />
            <asp:TextBox ID="txtCourseTerm" runat="server"  Columns="4" />
        </div>
         <div class="dnnFormItem">
             <!--
            <dnn:label ID="lblAssignedUser" runat="server" />
            <asp:DropDownList ID="ddlAssignedUser" runat="server" />
              -->
              <dnn:label ID =" lblChooseCourse" runat="server" />
              <asp:DropDownList ID =" ddlTargetCourseID" runat="server" />
         </div>
        <div class="dnnFormItem">
            <dnn:label ID="lblCourseSection" runat="server" />
            <asp:TextBox ID="txtCourseSection" runat="server" />
        </div>
         <div class="dnnFormItem">
            <dnn:label ID="lblAssignedInstructor" runat="server" />
            <asp:DropDownList ID="ddlAssignedInstructor" runat="server" />
        </div>
     </fieldset>
     <fieldset>

<div class="dnnFormItem">
            <dnn:label ID="lblSectionDates" runat="server" />
            <asp:TextBox ID="txtSectionDates" runat="server" />
        </div>
          <div class="dnnFormItem">
            <dnn:label ID="lblSectionNotes" runat="server" />
            <asp:TextBox ID="txtSectionNotes" runat="server" />
        </div>
          <div class="dnnFormItem">
            <dnn:label ID="lblSectionClosedDate" runat="server" />
            <asp:Calendar ID="calSectionClosedDate" runat="server" />
        </div>
          <div class="dnnFormItem">
            <dnn:label ID="lblSectionSize" runat="server" />
            <asp:TextBox ID="txtSectionSize" runat="server" />
        </div>
          <div class="dnnFormItem">
            <dnn:label ID="lblPrerequisiteCourse" runat="server" />
            <asp:TextBox ID="txtPrerequisiteCourse" runat="server" />
        </div>

          <div class="dnnFormItem">
            <dnn:label ID="lblSectionSupplies" runat="server" />
            <asp:TextBox ID="txtSectionSupplies" runat="server" />
        </div>
          <div class="dnnFormItem">
            <dnn:label ID="lblSectionSuppliesFee" runat="server" />
            <asp:TextBox ID="txtSectionSuppliesFee" runat="server" />
        </div>
        
        
        
    </fieldset>
</div>
<asp:LinkButton ID="btnSubmit" runat="server"
    OnClick="btnSubmit_Click" resourcekey="btnSubmit" CssClass="dnnPrimaryAction" />
<asp:LinkButton ID="btnCancel" runat="server"
    OnClick="btnCancel_Click" resourcekey="btnCancel" CssClass="dnnSecondaryAction" />

<script type="text/javascript">
    /*globals jQuery, window, Sys */
    (function ($, Sys) {
        function dnnEditBasicSettings() {
            $('#dnnEditBasicSettings').dnnPanels();
            $('#dnnEditBasicSettings .dnnFormExpandContent a').dnnExpandAll({ expandText: '<%=Localization.GetString("ExpandAll", LocalResourceFile)%>', collapseText: '<%=Localization.GetString("CollapseAll", LocalResourceFile)%>', targetArea: '#dnnEditBasicSettings' });
        }

        $(document).ready(function () {
            dnnEditBasicSettings();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
                dnnEditBasicSettings();
            });
        });

    }(jQuery, window.Sys));
</script>
