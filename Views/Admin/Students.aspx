﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="OnlineSchoolTuto.Views.Admin.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Administrar Estudiantes</h6>
        </div>
    </div>
    <div class="row">
        <div class="col-5">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <img src="../../Assets/Images/presentationddasd.png" />
                </div>
                <div class="col"></div>
            </div>
            <div class="row mt-5">
                <div class="col">
                    <div class="mb-2"> 
                <label>Nombre y Apellido</label>
                <input type="text" class="form-control"/>
            </div>
                </div>
                <div class="col">
                    <div class="mb-2"> 
                <label>Email</label>
                <input type="email" class="form-control"/>
            </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Telefono</label>
                <input type="text" class="form-control"/>
            </div>
                </div>
                <div class="col">
                    <div class="mb-2"> 
                <label>Direccion</label>
                <input type="email" class="form-control"/>
            </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Fecha de nacimiento</label>
                <input type="date" class="form-control"/>
            </div>
                </div>
                <div class="col">
                    <div class="mb-2"> 
                <label>Genero</label> <br />
                <asp:DropDownList runat="server" Class="form-control">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                    <asp:ListItem>No Binario</asp:ListItem>
                </asp:DropDownList>
            </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Contraseña</label>
                <input type="text" class="form-control"/>
            </div>
                </div>
                <div class="col">
                    <div class="mb-2"> 
                <label>Departamento</label> <br />
                <asp:DropDownList runat="server" Class="form-control">              
                </asp:DropDownList>
            </div>
                </div>
            </div>
           <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Maestro</label><br />
                <asp:DropDownList runat="server" Class="form-control">
               
                </asp:DropDownList>
            </div>
                </div>
                
                    
                </div>     
            <div class="row mt-5">
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" Class="btn btn-warning btn-block" />
                </div>
                  <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" Class="btn btn-primary btn-block" />
                </div>
                  <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" Class="btn btn-danger btn-block" />
                </div>
            </div>
            </div>

        <div class="col-7">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Lista de estudiantes</h5></div>
            </div>
            <asp:gridview runat="server" class="table"></asp:gridview>
        </div>
    </div>
</asp:Content>
