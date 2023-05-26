<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="OnlineSchoolTuto.Views.Admin.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Lista Departamentos</h6>
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
                <label>Departamentos</label> <br />
                        <input type="text" runat="server" class="form-control"/>
                    </div>
                </div>
              
            
                <div class="col">
                    <div class="mb-2"> 
                <label>Comentarios</label> <br />
             <input type="text" runat="server" class="form-control"/>
                    </div>
                </div>  
            </div>

            <div class="row mt-2">

            </div>

            <div class="row mt-1">
                <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Actualizar" runat="server" Id="EditBtn" Class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Guardar" runat="server" Id="SaveBtn" Class="btn btn-primary btn-block" OnClick="SaveBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Eliminar" runat="server" Id="DeleteBtn" Class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                </div>
            </div>
            
          </div>

        <div class="col-7">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Lista de departamentos</h5></div>
            </div>
            <asp:gridview runat="server" ID="DepartmentsList" class="table" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DepartmentsList_SelectedIndexChanged"></asp:gridview>
        </div>
    </div>
</asp:Content>
