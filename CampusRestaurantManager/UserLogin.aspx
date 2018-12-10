<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="CampusRestaurantManager.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/UserLogin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusRestaurantConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <div class="container-fluid position-relative">
        <p class="loginLabel d-inline-block">User Email</p>
        <asp:TextBox ID="userNameTxtbox" class="d-inline-block" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="usernameTxtBoxCustomValidator" CssClass="confirmPasswordRequiredFieldValidator" runat="server" ErrorMessage="Require" Display="Dynamic" ForeColor="Red" ValidateEmptyText ="true"></asp:CustomValidator>
    </div>
    <br />
    <div class="container-fluid position-relative">
        <p class="loginLabel d-inline-block">Password</p>
        <asp:TextBox ID="passwordTxtbox" runat="server" CssClass="d-inline-block"></asp:TextBox>
        <asp:CustomValidator ID="passwordTxtBoxCustomValidator" CssClass="confirmPasswordRequiredFieldValidator" runat="server" ErrorMessage="Require" Display="Dynamic" ForeColor="Red" ValidateEmptyText ="true" ></asp:CustomValidator>
    </div>
    <div class="container-fluid position-relative">
        <asp:HyperLink ID="registerLink" href="/" runat="server" CssClass="registerLink">Continue as guest</asp:HyperLink>
    </div>
    <div class="BtnDiv container-fluid position-relative">
        <asp:Button ID="SigninBtn" runat="server" Text="Sign in" CssClass="float-left SigninBtn" OnClick="SigninBtn_Click" />
        <asp:Button ID="SignupBtn" runat="server" Text="Sign up" CssClass="float-left SignupBtn" OnClick="SignupBtn_Click" />
    </div>
    <div class="container-fluid position-relative">
        <asp:CustomValidator ID="ValidUserCustomValidator" runat="server" ErrorMessage="Invalid User or Password" CssClass="ValidUserCustomValidator d-block" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
    </div>
    
</asp:Content>
