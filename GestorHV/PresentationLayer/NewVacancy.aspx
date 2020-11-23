<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HomeCompany.master" CodeBehind="NewVacancy.aspx.vb" Inherits="PresentationLayer.NewVacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <section class="content-header">
        <h1 align="center">REGISTRO DE VACANTES</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <asp:Label Text="CARGO" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtPosition" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar cargo" ControlToValidate="txtPosition" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="SALARIO" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtSalary" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar salario" ControlToValidate="txtSalary" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <asp:Label Text="CONTRATO" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtContract" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar contrato" ControlToValidate="txtContract" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label Text="EXPERIENCIA" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="txtExperience" CssClass="form-control" />
                            <asp:RequiredFieldValidator ValidationGroup="new" ErrorMessage="Debe ingresar experiencia" ControlToValidate="txtExperience" runat="server" CssClass="text-danger" SetFocusOnError="true" />
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
