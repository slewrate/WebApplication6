<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelerikWebForm.aspx.cs" Inherits="TelerikWebForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
    <script type="text/javascript">
        //Put your JavaScript code here.
    </script>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <div>
        <telerik:RadDataForm ID="dataform" runat="server" CssClass="rdfLeftAligned rdfNoFieldHint" DataKeyNames="ID,ImageData,ImageName,UserID" DataSourceID="SqlDataSource1" RenderMode="Lightweight" Skin="Material" DataMember="DefaultView"><LayoutTemplate>
            <div class="RadDataForm RadDataForm_<%# Container.Skin %> rdfLeftAligned rdfNoFieldHint">
                <div id="itemPlaceholder" runat="server">
                </div>
                <div class="rdfPager">
                    <span>
                    <telerik:RadButton ID="btnFirst" runat="server" CommandArgument="First" CommandName="Page" CssClass="rdfActionButton rdfPageFirst" RenderMode="Lightweight" Skin="Material" ToolTip="First">
                        <Icon PrimaryIconCssClass="rdfIcon rdfPageFirstIcon" />
                    </telerik:RadButton>
                    <telerik:RadButton ID="btnPrev" runat="server" CommandArgument="Prev" CommandName="Page" CssClass="rdfActionButton rdfPagePrev" RenderMode="Lightweight" Skin="Material" ToolTip="Previous">
                        <Icon PrimaryIconCssClass="rdfIcon rdfPagePrevIcon" />
                    </telerik:RadButton>
                    </span><span>
                    <telerik:RadButton ID="btnNext" runat="server" CommandArgument="Next" CommandName="Page" CssClass="rdfActionButton rdfPageNext" RenderMode="Lightweight" Skin="Material" ToolTip="Next">
                        <Icon PrimaryIconCssClass="rdfIcon rdfPageNextIcon" />
                    </telerik:RadButton>
                    <telerik:RadButton ID="btnLast" runat="server" CommandArgument="Last" CommandName="Page" CssClass="rdfActionButton rdfPageLast" RenderMode="Lightweight" Skin="Material" ToolTip="Last">
                        <Icon PrimaryIconCssClass="rdfIcon rdfPageLastIcon" />
                    </telerik:RadButton>
                    </span>
                </div>
            </div>
</LayoutTemplate>
            <ItemTemplate>
                <fieldset class="rdfFieldset rdfBorders">
                    <legend class="rdfLegend">View</legend>
                    <div class="rdfRow">
                        <asp:Label ID="IDLabel2" runat="server" CssClass="rdfLabel" Text="ID"></asp:Label>
                        <asp:Label ID="IDLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("ID") %>' />
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="ImageDataLabel2" runat="server" CssClass="rdfLabel" Text="ImageData"></asp:Label>
                        <asp:Image ID="img_radimage" runat="server" Height="256" Width="256" ImageAlign="Middle" ImageUrl='<%# Eval("ID","~/StreamImage.ashx?imageID={0}") %>'/>
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="ImageNameLabel2" runat="server" CssClass="rdfLabel" Text="ImageName"></asp:Label>
                        <asp:Label ID="ImageNameLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("ImageName") %>' />
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="UserIDLabel2" runat="server" CssClass="rdfLabel" Text="UserID"></asp:Label>
                        <asp:Label ID="UserIDLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("UserID") %>' />
                    </div>
                    <div class="rdfCommandButtons">
                        <hr class="rdfHr" />
                        <telerik:RadButton ID="InitInsertButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="InitInsert" RenderMode="Lightweight" Skin="Material" Text="Insert" ToolTip="Insert" />
                        <telerik:RadButton ID="EditButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Edit" RenderMode="Lightweight" Skin="Material" Text="Edit" ToolTip="Edit" />
                        <telerik:RadButton ID="DeleteButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Delete" RenderMode="Lightweight" Skin="Material" Text="Delete" ToolTip="Delete" />
                    </div>
                </fieldset>
            </ItemTemplate>
            <EditItemTemplate>
                <fieldset class="rdfFieldset rdfBorders">
                    <legend class="rdfLegend">Edit</legend>
                    <div class="rdfRow">
                        <asp:Label ID="IDLabel2" runat="server" CssClass="rdfLabel" Text="ID"></asp:Label>
                        <asp:Label ID="IDLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("ID") %>' />
                    </div>
                    <div class="rdfRow">
                        
                        <telerik:RadImageEditor ID="ImageEditor" runat="server" ImageUrl='<%# Eval("ID","~/StreamImage.ashx?imageID={0}") %>' ></telerik:RadImageEditor>
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="ImageNameLabel2" runat="server" AssociatedControlID="ImageNameTextBox" CssClass="rdfLabel" Text="ImageName"></asp:Label>
                        <telerik:RadTextBox ID="ImageNameTextBox" runat="server" RenderMode="Lightweight" Skin="Material" Text='<%# Bind("ImageName") %>' WrapperCssClass="rdfInput" />
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="UserIDLabel2" runat="server" AssociatedControlID="UserIDTextBox" CssClass="rdfLabel" Text="UserID"></asp:Label>
                        <telerik:RadTextBox ID="UserIDTextBox" runat="server" RenderMode="Lightweight" Skin="Material" Text='<%# Bind("UserID") %>' WrapperCssClass="rdfInput" />
                    </div>
                    <div class="rdfCommandButtons">
                        <hr class="rdfHr" />
                        <telerik:RadButton ID="UpdateButton" runat="server" ButtonType="SkinnedButton" CommandName="Update" RenderMode="Lightweight" Skin="Material" Text="Update" ToolTip="Update" />
                        <telerik:RadButton ID="CancelButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Cancel" RenderMode="Lightweight" Skin="Material" Text="Cancel" ToolTip="Cancel" />
                    </div>
                </fieldset>
            </EditItemTemplate>
            <InsertItemTemplate>
                <fieldset class="rdfFieldset rdfBorders">
                    <legend class="rdfLegend">Insert</legend>
                    <div class="rdfRow">
                        <asp:Label ID="ImageDataLabel2" runat="server" AssociatedControlID="ImageDataTextBox" CssClass="rdfLabel" Text="ImageData"></asp:Label>
                        <telerik:RadTextBox ID="ImageDataTextBox" runat="server" RenderMode="Lightweight" Skin="Material" Text='<%# Bind("ImageData") %>' WrapperCssClass="rdfInput" />
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="ImageNameLabel2" runat="server" AssociatedControlID="ImageNameTextBox" CssClass="rdfLabel" Text="ImageName"></asp:Label>
                        <telerik:RadTextBox ID="ImageNameTextBox" runat="server" RenderMode="Lightweight" Skin="Material" Text='<%# Bind("ImageName") %>' WrapperCssClass="rdfInput" />
                    </div>
                    <div class="rdfRow">
                        <asp:Label ID="UserIDLabel2" runat="server" AssociatedControlID="UserIDTextBox" CssClass="rdfLabel" Text="UserID"></asp:Label>
                        <telerik:RadTextBox ID="UserIDTextBox" runat="server" RenderMode="Lightweight" Skin="Material" Text='<%# Bind("UserID") %>' WrapperCssClass="rdfInput" />
                    </div>
                    <div class="rdfCommandButtons">
                        <hr class="rdfHr" />
                        <telerik:RadButton ID="PerformInsertButton" runat="server" ButtonType="SkinnedButton" CommandName="PerformInsert" RenderMode="Lightweight" Skin="Material" Text="Insert" ToolTip="Insert" />
                        <telerik:RadButton ID="CancelButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Cancel" RenderMode="Lightweight" Skin="Material" Text="Cancel" ToolTip="Cancel" />
                    </div>
                </fieldset>
            </InsertItemTemplate>
            <EmptyDataTemplate>
                <div class="RadDataForm RadDataForm_<%# Container.Skin %>">
                    <div class="rdfEmpty">
                        There are no items to be displayed.</div>
                </div>
            </EmptyDataTemplate>
        </telerik:RadDataForm>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flowConnectionString %>" SelectCommand="SELECT * FROM [AsyncUploadImages]"></asp:SqlDataSource>
        <telerik:RadImageTile ID="bla" runat="server" Skin="Black"></telerik:RadImageTile>
    </div>
    </form>
</body>
</html>
