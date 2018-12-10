<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="CampusRestaurant.WebForm2"  UnobtrusiveValidationMode="none" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link href="Styles/UserRegister.css" rel="stylesheet" / > 
    <script type="Scripts/UserRegister.js" ></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusRestaurantConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="There were errors on the page" ShowSummary="True" ShowMessageBox="true" ForeColor="#CC0000"/>
    <div class="auto-style1 signup-form">
            <h2>Register</h2>
        <div class="form-group">
                <div class="col-xs-6">
                    <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter FirstName" class="form-control"></asp:TextBox>
                </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is Required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
                <div class="col-xs-6">
                    <asp:TextBox ID="txtLastName" runat="server"  placeholder="Enter Lastname" class="form-control"></asp:TextBox>
                </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </div>
        <div class="form-group" >
                    <div class="col-xs-6">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="UserType" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Teacher" AutoPostBack="true" Sele  class="form-control"/>
                        <asp:RadioButton ID="RadioButton2" runat="server"  GroupName="UserType" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Student" AutoPostBack="true"  class="form-control"/>
                    </div>   
        </div>
        <br />
        <div class="form-group">
            <div style="float:left" class="col-xs-6">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter email" class="form-control" Width="311px"></asp:TextBox>
                </div> 
                <asp:Label ID="Label1"  runat="server"  ></asp:Label>
                <div style="float:right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email ID is Required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <br /><br />
        <div class="form-group">
            <div class="col-xs-7">
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password" TextMode="Password"  class="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Provide a password" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </div>
        <div class="form-group"> 
                <div class="col-xs-7">
                    <asp:TextBox ID="txtPassword2" runat="server" placeholder="Retype password" TextMode="Password" class="form-control"></asp:TextBox>
                </div>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match." ControlToValidate="txtPassword2" ControlToCompare="txtPassword" Display="Dynamic" SetFocusOnError ="True">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Please provide Confirm Password" Display="Dynamic" SetFocusOnError="True" ForeColor="#CC0000">*</asp:RequiredFieldValidator>     
        </div>
        <br />
        <div class="form-group">
                <div class="col-xs-7">
                    <textarea id="TextArea1" cols="28" rows="3" placeholder="Building Name, Room No" runat="server" class="form-control"></textarea>
                </div>
        </div>
        <div class="form-group">
                <asp:Button ID="Button1" class="btn btn-success btn-lgbtn-block" onclick="Button1_Click" runat="server" Text="Sign up" />
        </div>
    </div>   

</asp:Content>
