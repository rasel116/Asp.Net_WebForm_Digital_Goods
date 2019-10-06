<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddtoCartConfirmation.aspx.cs" Inherits="pro_support.AddtoCartConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <asp:Label ID="Label1" runat="server"  BackColor="#FFCCFF" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Names="Britannic Bold" Font-Size="XX-Large" Text=" Item Added SuccessFully" Center="50" Width="1241px"></asp:Label>

    </div>

    <div>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="1211px" Height="422px" Caption="Added On Cart" CaptionAlign="Top" CellSpacing="2" CssClass="bg-success" TabIndex="2">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="ProductImage">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>



    </div>
    <div>

        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/AddToCart.aspx">Continue Shopping</asp:HyperLink>

    </div>
</asp:Content>
