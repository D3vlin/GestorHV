<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Home.Master" CodeBehind="HomeCompany.aspx.vb" Inherits="PresentationLayer.HomeCompany" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server" />

<asp:Content ID="sidebarMenu" ContentPlaceHolderID="sidebarMenu" runat="server">
    <ul class="sidebar-menu">
        <li class="active">
            <a href="#">
                <i class="fa fa-dashboard"></i>
                <span>Panel Compañia</span>
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

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server" />
