<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="OnlineSchoolTuto.Views.Admin.Schedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
 <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Administrar Marcas</h6>
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
                <asp:dropDownList runat="server" class="form-control">

                </asp:dropDownList>
            </div>
                </div>

                
            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>Dia</label> <br />
                 <asp:dropDownList runat="server" class="form-control">
                     <asp:ListItem>Lunes</asp:ListItem>
                     <asp:ListItem>Martes</asp:ListItem>
                     <asp:ListItem>Miercoles</asp:ListItem>
                     <asp:ListItem>Jueves</asp:ListItem>
                     <asp:ListItem>Viernes</asp:ListItem>
                </asp:dropDownList>
            </div>
                </div>

               
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>8AM-9AM</label>
                <input type="text" class="form-control"/>
                    </div>
                      <div class="mb-2"> 
                <label>9AM-10AM</label>
                <input type="text" class="form-control"/>
                    </div>
                </div>
              
                </div>                
            
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>10AM-11AM</label>
                <input type="text" class="form-control"/>
            </div>
                </div>
                <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>11AM-12PM</label>
                <input type="text" class="form-control"/>
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
          </div>

        <div class="col-7">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Lista de marcas</h5></div>
            </div>
            <asp:gridview runat="server" class="table"></asp:gridview>
        </div>
    </div>
</asp:Content>
