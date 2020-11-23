<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HomeAdmin.master" CodeBehind="ManageSponsors.aspx.vb" Inherits="PresentationLayer.GestionarPatrocinadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <section class="content-header">
        <h1 align="center">REGISTRO DE PATROCINADORES</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <asp:Label Text="NIT DE LA EMPRESA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtNit" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar NIT" ControlToValidate="txtNit" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="NOMBRE DE LA EMPRESA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar nombre" ControlToValidate="txtName" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="DIRECCIÓN DE LA EMPRESA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar dirección" ControlToValidate="txtAddress" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <asp:Label Text="EMAIL DE LA EMPRESA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar email" ControlToValidate="txtEmail" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="CONTRASEÑA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar su clave" ControlToValidate="txtPassword" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="REPITA CONTRASEÑA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtRepeatPassword" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe repetir su clave" ControlToValidate="txtRepeatPassword" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                            <asp:CompareValidator ValidationGroup="new" ErrorMessage="Las contraseñas deben coincidir" ControlToValidate="txtRepeatPassword" ControlToCompare="txtPassword" Operator="Equal" CssClass="text-danger" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Button ValidationGroup="new" Text="REGISTRAR" ID="btnRegister" runat="server" CssClass="btn btn-primary btn-block" Width="200px" />
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:Button Text="CANCELAR" ID="btnCancel" runat="server" CssClass="btn btn-danger btn-block" Width="200px" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
