<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HomeCompany.master" CodeBehind="GeneralPanelCompany.aspx.vb" Inherits="PresentationLayer.GeneralPanelCompany" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Lista de Vacantes</h3>
                </div>
                <div class="box-body table-responsive">
                    <table id="tblVacancies" class="table table-bordered">
                        <thead>
                            <tr>
                                <td>CARGO</td>
                                <td>CONTRACTO</td>
                                <td>SALARIO</td>
                                <td>EXPERIENCIA</td>
                            </tr>
                        </thead>
                        <tbody id="tblBodyVacancies">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="js/Vacancies.js"></script>
</asp:Content>
