<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Home.Master" CodeBehind="HomeEmployee.aspx.vb" Inherits="PresentationLayer.HomeEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" />

<asp:Content ID="Content2" ContentPlaceHolderID="sidebarMenu" runat="server">
    <ul class="sidebar-menu">
        <li class="active">
            <a href="#">
                <i class="fa fa-dashboard"></i>
                <span>Panel Empleado</span>
            </a> 
        </li>
        <li>
            <a href="#">
                <i class="fa fa-th"></i>
                <span>Otro Panel</span>
            </a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server" />
