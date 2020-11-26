<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HomeAdmin.master" CodeBehind="GeneralPanelAdmin.aspx.vb" Inherits="PresentationLayer.GeneralPanelAdmin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Lista de Patrocinadores</h3>
                </div>
                <div class="box-body table-responsive">
                    <table id="tblSponsors" class="table table-bordered">
                        <thead>
                            <tr>
                                <td>NIT</td>
                                <td>NOMBRE</td>
                                <td>DIRECCIÓN</td>
                            </tr>
                        </thead>
                        <tbody id="tblBodySponsors">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Lista de Empleados</h3>
                </div>
                <div class="box-body table-responsive">
                    <table id="tblEmployees" class="table table-bordered">
                        <thead>
                            <tr>
                                <td>IDENTIFICACIÓN</td>
                                <td>NOMBRES</td>
                                <td>EMAIL</td>
                                <td>PROFESIÓN</td>
                            </tr>
                        </thead>
                        <tbody id="tblBodyEmployees">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="js/AdminList.js"></script>
</asp:Content>
