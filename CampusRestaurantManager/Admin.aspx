<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CampusRestaurantManager.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="container-fluid position-relative">
        <asp:Button ID="Button1" runat="server" Text="Modify Food" CssClass="btn btn-info" OnClick="Button1_Click"/>
    </div>
    <br />
    <div class="container-fluid position-relative">
        <asp:Button ID="Button2" runat="server" Text="Modify Restaurant" CssClass="btn btn-info" OnClick="Button2_Click"/>
    </div>
</asp:Content>
