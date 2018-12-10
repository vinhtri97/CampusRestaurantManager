<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RestaurantWebForm.aspx.cs" Inherits="CampusRestaurantManager.RestaurantWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Restaurant.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:Table ID="Table" runat="server" CssClass="table table-bordered  mx-auto">
        <asp:TableRow CssClass="text-lg-center">
            <asp:TableHeaderCell>
                <h1>Openning Restaurant</h1>
            </asp:TableHeaderCell>
            <asp:TableHeaderCell >
                <h1>Closing Restaurant</h1>
            </asp:TableHeaderCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Panel runat="server" id ="OpenningPanel"></asp:Panel>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Panel runat="server" id ="ClosingPanel"></asp:Panel>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>
