<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="OnlineSchoolTuto.Views.Admin.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
        <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Administrar Maestros</h6>
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
                <input type="text" runat="server" id="TNameTb" class="form-control"/>
            </div>
                </div>

                
            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Email</label>
                <input type="text" runat="server" id="TEmailTb" class="form-control"/>
            </div>
                </div>

               
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Fecha de nacimiento</label>
                <input type="date" runat="server" id="DOBTb" class="form-control"/>
            </div>
                </div>
              
                </div>                
            
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Contraseña de salarios maestros</label>
                <input type="text" runat="server" id="SalaryTb" class="form-control"/>
            </div>
                </div>

                </div>            
           <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Contraseña</label><br />     
                <input type="text" runat="server" id="PassTb" class="form-control"/>    
            </div>
                </div>
                                    
                </div>  
    
            <div class="row mt-5">
                <label class="text-center text-danger" id="ErrMsg" runat="server"></label>
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" Class="btn btn-warning btn-block" />
                </div>
                  <div class="col d-grid">
                    <asp:Button Text="Guardar" runat="server" Class="btn btn-primary btn-block" OnClick="Unnamed2_Click" />
                </div>
                  <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" Class="btn btn-danger btn-block" />
                </div>
            </div>
            </div>

        <div class="col-7">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Lista de maestros</h5></div>
            </div>
            <asp:gridview runat="server" ID="TeachersList" class="table"></asp:gridview>
        </div>
    </div>
</asp:Content>
