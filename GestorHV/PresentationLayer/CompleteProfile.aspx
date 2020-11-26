<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HomeEmployee.master" CodeBehind="CompleteProfile.aspx.vb" Inherits="PresentationLayer.CompleteProfile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <section class="content-header">
        <h1 align="center">COMPLETA TU PERFIL</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <asp:Label Text="NÚMERO DE IDENTIFICACIÓN" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtIdentification" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar identificación" ControlToValidate="txtIdentification" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="NOMBRES" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtNames" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar nombres" ControlToValidate="txtNames" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <asp:Label Text="EMAIL" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar email" ControlToValidate="txtEmail" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="PROFESIÓN" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtProfession" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar profesión" ControlToValidate="txtProfession" runat="server" CssClass="text-danger" SetFocusOnError="true" />
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
                            <asp:Button ValidationGroup="new" Text="ACTUALIZAR" ID="btnUpdate" runat="server" CssClass="btn btn-primary btn-block" Width="200px" />
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
