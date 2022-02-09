<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="SMsales.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.SMsales" %>
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
                           <a role="button" class="btn btn-secondary" href="SMorder.aspx">Order</a>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tissueLabDBConnectionString %>" SelectCommand="SELECT * FROM [sm_sales_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sal_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="sal_id" HeaderText="Sales ID" ReadOnly="True" SortExpression="sal_id" />
                                        <asp:BoundField DataField="sal_or_id" HeaderText="Order ID" SortExpression="sal_or_id" />
                                        <asp:BoundField DataField="sal_deliverddate" HeaderText="Deliverd Date" SortExpression="sal_deliverddate" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


               

            </div>

            <div class="col-md-3">

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
                                
                                        <h4>Sales Details</h4>
                      
                            </div>
                        </div>

                             <div class="col-md-8">
                                <label>Selles ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Selles ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Order ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Order ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Delivery Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Delivery Date" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Quntity</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Plant Quntity" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Payment Status</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Payment status" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                             <div class="col-md-8">
                                <label></label>
                                <label>Delivered Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>

                           

                        </div>
                        <br />

                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button3_Click"/>
                            </div>
                            <div class="col-6 ">
                               <asp:Button ID="Button4" class="btn  btn-lg btn-block btn-danger"  runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                            
                        </div>


                    </div>
                </div>
            </div>

            </div>
        </div>
    <br /><br />

</asp:Content>
