<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="AdminFoodItem.aspx.cs" Inherits="CampusRestaurantManager.AdminFoodItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusRestaurantConnectionString %>" DeleteCommand="DELETE FROM [FOOD] WHERE [FOOD_ID] = @FOOD_ID" InsertCommand="INSERT INTO [FOOD] ([FOOD_NAME], [FOOD_PRICE], [FOOD_DESC], [IMG_SRC], [RES_ID]) VALUES (@FOOD_NAME, @FOOD_PRICE, @FOOD_DESC, @IMG_SRC, @RES_ID)" SelectCommand="SELECT * FROM [FOOD]" UpdateCommand="UPDATE [FOOD] SET [FOOD_NAME] = @FOOD_NAME, [FOOD_PRICE] = @FOOD_PRICE, [FOOD_DESC] = @FOOD_DESC, [IMG_SRC] = @IMG_SRC, [RES_ID] = @RES_ID WHERE [FOOD_ID] = @FOOD_ID">
                <DeleteParameters>
                    <asp:Parameter Name="FOOD_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FOOD_NAME" Type="String" />
                    <asp:Parameter Name="FOOD_PRICE" Type="Double" />
                    <asp:Parameter Name="FOOD_DESC" Type="String" />
                    <asp:Parameter Name="IMG_SRC" Type="String" />
                    <asp:Parameter Name="RES_ID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FOOD_NAME" Type="String" />
                    <asp:Parameter Name="FOOD_PRICE" Type="Double" />
                    <asp:Parameter Name="FOOD_DESC" Type="String" />
                    <asp:Parameter Name="IMG_SRC" Type="String" />
                    <asp:Parameter Name="RES_ID" Type="Int32" />
                    <asp:Parameter Name="FOOD_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="FOOD_ID" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="FOOD_ID" InsertVisible="False" SortExpression="FOOD_ID">
                        <EditItemTemplate>
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("FOOD_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FOOD_NAME" SortExpression="FOOD_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FOOD_NAME") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("FOOD_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </FooterTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FOOD_PRICE" SortExpression="FOOD_PRICE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FOOD_PRICE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price is required" ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("FOOD_PRICE") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Price is required" ControlToValidate="txtPrice" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FOOD_DESC" SortExpression="FOOD_DESC">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FOOD_DESC") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Description is required" ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("FOOD_DESC") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Description is required" ControlToValidate="txtDesc" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IMG_SRC" SortExpression="IMG_SRC">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("IMG_SRC") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Image source is required" ControlToValidate="TextBox4" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("IMG_SRC") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtImage" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Image source is required" ControlToValidate="txtImage" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RES_ID" SortExpression="RES_ID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" selectedValue='<%# Bind("RES_ID") %>'>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("RES_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="DropDownList11" runat="server" selectedValue='<%# Bind("RES_ID") %>'>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
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
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <br />
        </div>
    </form>
</body>
</html>
