<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="pro_support.Role" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <h1>Role Management</h1>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br /><br /><br />
    <div class="row" >
        <div class="col-sm-12 table-responsive table-bordered table-hover table bg-success "  >
            <h2>Users List</h2>
            <asp:GridView ID="grdUsers"  runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdUsers_GetData" ItemType="pro_support.Models.ApplicationUser" CssClass="table table-bordered table-striped table-condensed" OnPreRender="grdUsers_PreRender" Width="762px">
                <Columns>
                    <asp:BoundField HeaderText="User Name" DataField="UserName" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:TemplateField HeaderText="Roles">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# ListRoles(Item.Roles) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-sm-6 table-responsive table-bordered table-hover t" >
            <asp:DetailsView ID="dvUsers" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-striped table-condensed" SelectMethod="dvUsers_GetItem" UpdateMethod="dvUsers_UpdateItem" InsertMethod="dvUsers_InsertItem" DeleteMethod="dvUsers_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>


  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="row">
        <div class="col-sm-6">
            <h2>Roles List</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdRoles_GetData" CssClass="table table-bordered table-striped table-condensed" OnPreRender="grdRoles_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-striped table-condensed" SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
          </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

<div class="row">
        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-label">Select User : </label>
                <asp:DropDownList ID="ddlUsers" runat="server" SelectMethod="grdUsers_GetData" DataValueField="Id" DataTextField="UserName" CssClass="form-control">

                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="control-label">Add one or more roles : </label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" SelectMethod="grdRoles_GetData" DataValueField="Id" DataTextField="Name" CssClass="form-control">

                </asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>
    </asp:Content>