<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRestaurant.aspx.cs" Inherits="CampusRestaurantManager.AdminRestaurant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="auto-style3">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style1" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True">
        <Columns>
            <asp:TemplateField HeaderText="Resturant ID">
                <EditItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("RES_ID") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("RES_ID") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("RES_NAME") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("RES_NAME") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("RES_ADDRESS") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("RES_ADDRESS") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Hours">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("RES_HOURS") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RES_HOURS") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Days">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("RES_DAYS") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RES_DAYS") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Phone Number">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("RES_PHONENO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("RES_PHONENO") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Restaurant Logo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("RES_LOGO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("RES_LOGO") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Operations">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    &nbsp;
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Insert</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusRestaurantConnectionString %>" DeleteCommand="DELETE FROM [Restaurants] WHERE [RES_ID] = @RES_ID" InsertCommand="INSERT INTO [Restaurants] ([RES_NAME], [RES_ADDRESS], [RES_HOURS], [RES_DAYS], [RES_PHONENO], [RES_LOGO]) VALUES (@RES_NAME, @RES_ADDRESS, @RES_HOURS, @RES_DAYS, @RES_PHONENO, @RES_LOGO)" SelectCommand="SELECT * FROM [Restaurants]" UpdateCommand="UPDATE [Restaurants] SET [RES_NAME] = @RES_NAME, [RES_ADDRESS] = @RES_ADDRESS, [RES_HOURS] = @RES_HOURS, [RES_DAYS] = @RES_DAYS, [RES_PHONENO] = @RES_PHONENO, [RES_LOGO] = @RES_LOGO WHERE [RES_ID] = @RES_ID">
        <DeleteParameters>
            <asp:Parameter Name="RES_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RES_NAME" Type="String" />
            <asp:Parameter Name="RES_ADDRESS" Type="String" />
            <asp:Parameter Name="RES_HOURS" Type="String" />
            <asp:Parameter Name="RES_DAYS" Type="String" />
            <asp:Parameter Name="RES_PHONENO" Type="String" />
            <asp:Parameter Name="RES_LOGO" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RES_NAME" Type="String" />
            <asp:Parameter Name="RES_ADDRESS" Type="String" />
            <asp:Parameter Name="RES_HOURS" Type="String" />
            <asp:Parameter Name="RES_DAYS" Type="String" />
            <asp:Parameter Name="RES_PHONENO" Type="String" />
            <asp:Parameter Name="RES_LOGO" Type="String" />
            <asp:Parameter Name="RES_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
    <br />
    </form>
</body>
</html>
