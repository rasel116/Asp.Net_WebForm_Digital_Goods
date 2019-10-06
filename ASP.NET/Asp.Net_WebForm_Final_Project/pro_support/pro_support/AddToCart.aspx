<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="pro_support.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
   <div>

       <asp:Label ID="Label1" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" ForeColor="#FF9966" Text="Add to Cart Now"></asp:Label>

       <br />

   </div>
    <section >

        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" BackColor="White" BorderColor="#333333" BorderStyle="Outset" BorderWidth="1px" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td>ProductId<asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Price:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="79px" ImageUrl="~/Images/addtocart.png"  Width="201px" CommandArgument='<%#Eval("ProductID")%>' CommandName="addtocart" />
                <br />
            </ItemTemplate>
        </asp:DataList>

        <br />
        <br />
        <br />
        <br />

    </section>
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ProductDetails]"></asp:SqlDataSource>

    </div>
</asp:Content>
