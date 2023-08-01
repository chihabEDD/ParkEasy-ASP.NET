using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class ViewBooking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Parking"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Type"] == "User")
            {
                SqlDataAdapter da;
                DataSet ds;
                LabelSid.Text = Session["ID"].ToString();
                string sel = "select section,slot,date,st,et,hrs from booking where sid='" + LabelSid.Text + "'";
                da = new SqlDataAdapter(sel, con);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.Visible = true;
                    GridView2.Visible = false;
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }
            else if (Session["Type"] == "Admin")
            {
                SqlDataAdapter da;
                DataSet ds;
                string sel = "select sname,Sclass,section,slot,date,st,et,hrs from booking";
                da = new SqlDataAdapter(sel, con);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.Visible = false;
                    GridView2.Visible = true;
                    GridView2.DataSource = ds;
                    GridView2.DataBind();
                }
            }
        }
        catch(Exception ex)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
