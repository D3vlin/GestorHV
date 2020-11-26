<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HomeEmployee.master" CodeBehind="GeneralPanelEmployee.aspx.vb" Inherits="PresentationLayer.GeneralPanelEmployee" %>

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
    <script src="js/EmployeeList.js"></script>
</asp:Content>
