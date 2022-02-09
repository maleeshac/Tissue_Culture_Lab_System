<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="SMreport.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.SMreport" %>
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
           
        <div class="col-md-10">
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tissueLabDBConnectionString %>" SelectCommand="SELECT * FROM [sm_customer_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cus_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="cus_id" HeaderText="Customer ID" ReadOnly="True" SortExpression="cus_id" />
                                        <asp:BoundField DataField="cus_name" HeaderText="Name" SortExpression="cus_name" />
                                        <asp:BoundField DataField="cus_company" HeaderText="Company" SortExpression="cus_company" />
                                        <asp:BoundField DataField="cus_email" HeaderText="Email" SortExpression="cus_email" />
                                        <asp:BoundField DataField="cus_phonenumber" HeaderText="Phone Number" SortExpression="cus_phonenumber" />
                                        <asp:BoundField DataField="cus_orderquantity" HeaderText="Order Quantity" SortExpression="cus_orderquantity" />
                                    </Columns>
                                </asp:GridView>
                                
                            </div>
                        </div>
                        <br /><br />
                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tissueLabDBConnectionString %>" SelectCommand="SELECT * FROM [sm_order_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="or_id" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="or_id" HeaderText="Order ID" ReadOnly="True" SortExpression="or_id" />
                                        <asp:BoundField DataField="or_cus_id" HeaderText="Customer ID" SortExpression="or_cus_id" />
                                        <asp:BoundField DataField="or_plantvariety" HeaderText="Plant Variety" SortExpression="or_plantvariety" />
                                        <asp:BoundField DataField="or_quantity" HeaderText="Plant Quantity" SortExpression="or_quantity" />
                                        <asp:BoundField DataField="or_location" HeaderText="Location" SortExpression="or_location" />
                                        <asp:BoundField DataField="or_deliverydate" HeaderText="Delivery Date" SortExpression="or_deliverydate" />
                                        <asp:BoundField DataField="or_amount" HeaderText="Amount" SortExpression="or_amount" />
                                        <asp:BoundField DataField="or_paymentstatus" HeaderText="Payment Status" SortExpression="or_paymentstatus" />
                                    </Columns>
                                </asp:GridView>
                                </div>
                            </div>
                        <br /><br />
                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:tissueLabDBConnectionString %>" SelectCommand="SELECT * FROM [sm_sales_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="sal_id" DataSourceID="SqlDataSource3">
                                    <Columns>
                                        <asp:BoundField DataField="sal_id" HeaderText="Sales ID" ReadOnly="True" SortExpression="sal_id" />
                                        <asp:BoundField DataField="sal_or_id" HeaderText="Order ID" SortExpression="sal_or_id" />
                                        <asp:BoundField DataField="sal_deliverddate" HeaderText="Deliverd Date" SortExpression="sal_deliverddate" />
                                    </Columns>
                                </asp:GridView>
                                </div>
                            </div>
                        <br /><br />
                        <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Print Report</a> </button>

                    </div>
                </div>

            
               

            </div>

        </div>
    </div>

    <br />
</asp:Content>
