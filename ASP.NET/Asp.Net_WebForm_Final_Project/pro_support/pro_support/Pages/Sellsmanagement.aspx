<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Sellsmanagement.aspx.cs" Inherits="pro_support.Pages.Sellsmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="LotID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Caption="Lot Details" CaptionAlign="Top">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="LotID" HeaderText="LotID" InsertVisible="False" ReadOnly="True" SortExpression="LotID" />
            <asp:BoundField DataField="LotName" HeaderText="LotName" SortExpression="LotName" />
            <asp:BoundField DataField="LotCost" HeaderText="LotCost" SortExpression="LotCost" />
            <asp:BoundField DataField="LotQuantity" HeaderText="LotQuantity" SortExpression="LotQuantity" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Lotinfo] WHERE [LotID] = @LotID" InsertCommand="INSERT INTO [Lotinfo] ([LotName], [LotCost], [LotQuantity]) VALUES (@LotName, @LotCost, @LotQuantity)" SelectCommand="SELECT * FROM [Lotinfo]" UpdateCommand="UPDATE [Lotinfo] SET [LotName] = @LotName, [LotCost] = @LotCost, [LotQuantity] = @LotQuantity WHERE [LotID] = @LotID">
        <DeleteParameters>
            <asp:Parameter Name="LotID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LotName" Type="String" />
            <asp:Parameter Name="LotCost" Type="Decimal" />
            <asp:Parameter Name="LotQuantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LotName" Type="String" />
            <asp:Parameter Name="LotCost" Type="Decimal" />
            <asp:Parameter Name="LotQuantity" Type="Int32" />
            <asp:Parameter Name="LotID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" GridLines="None" Caption=" Product Details">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductQuantity" HeaderText="ProductQuantity" SortExpression="ProductQuantity" />
            <asp:BoundField DataField="ProductSellingQuantity" HeaderText="ProductSellingQuantity" SortExpression="ProductSellingQuantity" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ProductDetails] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [ProductDetails] ([ProductName], [ProductQuantity], [ProductSellingQuantity], [ProductPrice], [ProductImage]) VALUES (@ProductName, @ProductQuantity, @ProductSellingQuantity, @ProductPrice, @ProductImage)" SelectCommand="SELECT * FROM [ProductDetails]" UpdateCommand="UPDATE [ProductDetails] SET [ProductName] = @ProductName, [ProductQuantity] = @ProductQuantity, [ProductSellingQuantity] = @ProductSellingQuantity, [ProductPrice] = @ProductPrice, [ProductImage] = @ProductImage WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="ProductSellingQuantity" Type="Int32" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="ProductSellingQuantity" Type="Int32" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductImage" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Caption=" Order Information" DataKeyNames="OrderID" DataSourceID="SqlDataSource3">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" SortExpression="SellingPrice" />
        <asp:BoundField DataField="SellingQuantity" HeaderText="SellingQuantity" SortExpression="SellingQuantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Salesinfo] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Salesinfo] ([ProductName], [SellingPrice], [SellingQuantity]) VALUES (@ProductName, @SellingPrice, @SellingQuantity)" SelectCommand="SELECT * FROM [Salesinfo]" UpdateCommand="UPDATE [Salesinfo] SET [ProductName] = @ProductName, [SellingPrice] = @SellingPrice, [SellingQuantity] = @SellingQuantity WHERE [OrderID] = @OrderID">
    <DeleteParameters>
        <asp:Parameter Name="OrderID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="SellingPrice" Type="Int32" />
        <asp:Parameter Name="SellingQuantity" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="SellingPrice" Type="Int32" />
        <asp:Parameter Name="SellingQuantity" Type="Int32" />
        <asp:Parameter Name="OrderID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
