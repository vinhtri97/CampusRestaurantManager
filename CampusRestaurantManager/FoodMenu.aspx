<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FoodMenu.aspx.cs" Inherits="CampusRestaurantManager.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/FoodMenu.css" rel="stylesheet" />
    <script src="Scripts/CustomJS/JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Panel ID="FoodMenuPanel" runat="server" CssClass ="FoodMenu d-block align-items-center"></asp:Panel>
    <asp:Panel ID="OrderSummaryPanel" runat="server" CssClass ="OrderSummaryPanel d-block align-items-center">
        <asp:Button ID="SubmitBtn" runat="server" CssClass="btn btn-block" Text="Place Order" OnClick="SubmitBtn_Click" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" CssClass="w-auto h-auto border">     
            <ContentTemplate>
                <asp:Label ID ="SubtotalLabel" runat="server" Text="Subtotal:" CssClass="updateLabel border-info border-top border-left border-right text-info text-center d-block"></asp:Label>
                <asp:Label ID ="TaxLabel" runat="server" Text="Tax:" CssClass="updateLabel border-info border-left border-right text-info text-center d-block"></asp:Label>
                <asp:Label ID ="TotalLabel" runat="server" Text="Total:" CssClass="updateLabel border-info border-bottom border-left border-right text-info text-center d-block"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>
