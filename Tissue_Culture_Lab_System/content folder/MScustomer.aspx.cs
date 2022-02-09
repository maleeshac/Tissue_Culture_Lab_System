using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System
{
    public partial class MScustomer : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfCustomerExists())
            {
                updateCustomer();
            }
            else
            {
                Response.Write("<script>alert('customer does not exist');</script>");
            }
        }
        //Add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfCustomerExists()) {

                Response.Write("<script>alert('customer already Exists with this customer ID, try other ID ');</script>");

            }
            else
            {
                 addNewCustomer();
            }
            
        }
        //Delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfCustomerExists())
            {
                deleteCustomer();
            }
            else
            {
                Response.Write("<script>alert('customer does not exist');</script>");
            }
        }
        //Go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getCustomerByID();
        }

        //customer defined method

        bool checkIfCustomerExists()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sm_customer_tbl WHERE cus_id='"+TextBox1.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                 return false;
            }
           
        }

        void addNewCustomer()
        {
            //Response.Write("<script>alert('testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO sm_customer_tbl(cus_id,cus_name,cus_company,cus_email,cus_phonenumber,cus_orderquantity) values(@cus_id,@cus_name,@cus_company,@cus_email,@cus_phonenumber,@cus_orderquantity)", con);

                cmd.Parameters.AddWithValue("@cus_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_company", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_phonenumber", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_orderquantity", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('customer add Successfull');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        void updateCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" UPDATE sm_customer_tbl SET cus_name=@cus_name,cus_company=@cus_company,cus_email=@cus_email,cus_phonenumber=@cus_phonenumber,cus_orderquantity=@cus_orderquantity WHERE cus_id='"+TextBox1.Text.Trim()+"'", con);

                
                cmd.Parameters.AddWithValue("@cus_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_company", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_phonenumber", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_orderquantity", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('customer update Successfull');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deleteCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" DELETE FROM sm_customer_tbl WHERE cus_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@cus_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_company", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_phonenumber", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@cus_orderquantity", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('customer Deleted Successfull');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        void getCustomerByID()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sm_customer_tbl WHERE cus_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                    TextBox6.Text = dt.Rows[0][5].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Customer ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
               
            }

        }
    }
}