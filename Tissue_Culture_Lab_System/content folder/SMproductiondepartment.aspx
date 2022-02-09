<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="SMproductiondepartment.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.SMproductiondepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SMContentPlaceHolder1" runat="server">
    

<div class="container-fluid">
        <div class="row">

        <div class="col-md-2">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="row">
                            <div class="col">
                                
                                        
                      
                            </div>
                        </div>

                        <div class="btn-group-vertical">
                           <a role="button" class="btn btn-secondary" href="SMsales.aspx">Seles</a>
                           <a role="button" class="btn btn-secondary" href="SMorder.aspx" >Order</a>
                           <a role="button" class="btn btn-secondary" href="MScustomer.aspx">Customer</a>
                           <a role="button" class="btn btn-secondary" href="SMrandd.aspx">R&D</a>
                           <a role="button" class="btn btn-secondary" href="SMproductiondepartment.aspx">Production Department</a>
                           <a role="button" class="btn btn-secondary" href="SMpreprationunit.aspx">Preparation Unit</a>
                           <a role="button" class="btn btn-secondary" href="SMgrowethroom.aspx">Groweth Room</a>
                           <a role="button" class="btn btn-secondary" href="SMdeliverymanagment.aspx">Delivery Managment</a>
                           <a role="button" class="btn btn-secondary" href="SMgreenhouseinvetory.aspx">Green house invetory</a>
                           <a role="button" class="btn btn-secondary" href="SMhrdepartment.aspx">HR Department</a>
                           <a role="button" class="btn btn-secondary" href="SMreport.aspx">Report</a>
                        </div>
                            

                        </div>                        

                    </div>
                </div>
            </div>
           
        <div class="col-md-7">
                  <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
               
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


               

            </div>

        </div>
    </div>


</asp:Content>
