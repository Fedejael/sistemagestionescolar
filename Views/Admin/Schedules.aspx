<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="OnlineSchoolTuto.Views.Admin.Schedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
 <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Administrar Horarios</h6>
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
                <asp:dropDownList runat="server" id="DepCb" class="form-control">

                </asp:dropDownList>
                    </div>
                </div>
              
            
                <div class="col">
                    <div class="mb-2"> 
                <label>Dia</label> <br />
                <asp:dropDownList runat="server" id="DayCb" class="form-control">
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
                <asp:dropDownList runat="server" id="Sub1Cb" class="form-control">
                     <asp:ListItem>Matematicas</asp:ListItem>
                     <asp:ListItem>Ingles</asp:ListItem>
                     <asp:ListItem>Portugues</asp:ListItem>
                     <asp:ListItem>Geografia</asp:ListItem>
                     <asp:ListItem>Historia</asp:ListItem>
                     <asp:ListItem>Computacion</asp:ListItem>
                     <asp:ListItem>Redes</asp:ListItem>
                </asp:dropDownList>
                    </div>
                      <div class="mb-2"> 
                <label>9AM-10AM</label>
                <asp:dropDownList runat="server" id="Sub2Cb" class="form-control">
                     <asp:ListItem>Matematicas</asp:ListItem>
                     <asp:ListItem>Ingles</asp:ListItem>
                     <asp:ListItem>Portugues</asp:ListItem>
                     <asp:ListItem>Geografia</asp:ListItem>
                     <asp:ListItem>Historia</asp:ListItem>
                     <asp:ListItem>Computacion</asp:ListItem>
                     <asp:ListItem>Redes</asp:ListItem>
                </asp:dropDownList>
                    </div>
                </div>
              
                </div>                
            
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>10AM-11AM</label>
                <asp:dropDownList runat="server" id="Sub3Cb" class="form-control">
                     <asp:ListItem>Matematicas</asp:ListItem>
                     <asp:ListItem>Ingles</asp:ListItem>
                     <asp:ListItem>Portugues</asp:ListItem>
                     <asp:ListItem>Geografia</asp:ListItem>
                     <asp:ListItem>Historia</asp:ListItem>
                     <asp:ListItem>Computacion</asp:ListItem>
                     <asp:ListItem>Redes</asp:ListItem>
                </asp:dropDownList>
                    </div>
                </div>
             </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>11AM-12PM</label>
                <asp:dropDownList runat="server" id="Sub4Cb" class="form-control">
                     <asp:ListItem>Matematicas</asp:ListItem>
                     <asp:ListItem>Ingles</asp:ListItem>
                     <asp:ListItem>Portugues</asp:ListItem>
                     <asp:ListItem>Geografia</asp:ListItem>
                     <asp:ListItem>Historia</asp:ListItem>
                     <asp:ListItem>Computacion</asp:ListItem>
                     <asp:ListItem>Redes</asp:ListItem>
                </asp:dropDownList>
                    </div>
                </div>

             </div> 

             <div class="row mt-2">
                <div class="col">
                    <div class="mb-2"> 
                <label>12PM-13PM</label>
                <asp:dropDownList runat="server" id="Sub5Cb" class="form-control">
                     <asp:ListItem>Matematicas</asp:ListItem>
                     <asp:ListItem>Ingles</asp:ListItem>
                     <asp:ListItem>Portugues</asp:ListItem>
                     <asp:ListItem>Geografia</asp:ListItem>
                     <asp:ListItem>Historia</asp:ListItem>
                     <asp:ListItem>Computacion</asp:ListItem>
                     <asp:ListItem>Redes</asp:ListItem>
                </asp:dropDownList>
                    </div>
                </div>

             </div>
           
                
                                    
                
    
            <div class="row mt-1">
                <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Actualizar" runat="server" id="EditBtn" Class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Guardar" runat="server" id="SaveBtn" Class="btn btn-primary btn-block" OnClick="SaveBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Eliminar" runat="server" id="DeleteBtn" Class="btn btn-danger btn-block" />
                </div>
            </div>
            
          </div>

        <div class="col-7">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Lista de horarios</h5></div>
            </div>
            <asp:gridview runat="server" id="ScheduleList" class="table"></asp:gridview>
        </div>
    </div>
</asp:Content>
