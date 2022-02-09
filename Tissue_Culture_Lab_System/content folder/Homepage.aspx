<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SMContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                    <h1>Our Departments </h1>
                    <br /> <br /> <br /> <br /> <br />
                </center>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <center> 
                    <img width="200px" src="../Image/GR_12.png" />
                        <h4> <a href="employeeLogin.aspx"> Sales Management </a> </h4> 
                        <p class="text-justify"></p>
                </center>
            </div>

            <div class="col-md-3">
                <center>
                    <img width="150px"  src="../Image/GR_11.png" />
                        <h4> <a href="employeeLogin.aspx"> R&D Department </a></h4>
                        <p class="text-justify"></p>
                </center>
            </div>

            <div class="col-md-3">
                <center>
                    <img width="150px"  src="../Image/GR_04.png" />
                        <h4> <a href="#">  Production Management </a> </h4>
                        <p class="text-justify"></p>
                </center>
            </div>

            <div class="col-md-3">
                <center>
                    <img width="160px"  src="../Image/GR_08.png"/>
                        <h4> <a href="#">  Media Preparation Unit </a> </h4>
                        <p class="text-justify"></p>
                </center>
            </div>

            

            
    </div>

        <br /> <br />

        <div class="row">
            <div class="col-md-3">
                <center>
                    <img width="160px" src="../Image/GR_10.png" />
                        <h4> <a href="GR_Home.aspx"> Growth Room </a> </h4>
                        <p class="text-justify"></p>
                </center>
            </div>

            <div class="col-md-3">
                <center>
                    <img width="150px" src="../Image/GR_06.png" />
                        <h4> <a href="#"> Delivery Management </a> </h4>
                        <p class="text-justify"></p>
                </center>
            </div>

            <div class="col-md-3">
                <center>
                    <img width="210px" src="../Image/GR_09.png" />
                        <h4> <a href="#"> Inventory Management </a> </h4>
                        <p class="text-justify"></p>
                </center>
            </div>

            <div class="col-md-3">
                <center>
                    <img width="170px" src="../Image/GR_07.png" />
                        <h4> <a href="#"> HR Management </a></h4>
                        <p class="text-justify"></p>
                </center>
            </div> <br /> <br />  
    </div>
</div>

</asp:Content>
