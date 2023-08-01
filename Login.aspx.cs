using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Check;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Parking"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("S453", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion

        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Registration Successful. You can login now')", true);
            Session["Add"] = "";
        }
        if (Session["Login"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Your login session expired. Kindly re-login to continue..')", true);
            Session["Login"] = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label2.Visible = false;
        TextBox1.BorderColor = System.Drawing.Color.Empty;
        TextBox2.BorderColor = System.Drawing.Color.Empty;
        string str = "select sid,pass,sname,class from student where sid='" + TextBox1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string pass = ds.Tables[0].Rows[0][1].ToString();
            if (pass==TextBox2.Text)
            {
                Session["Type"] = "User";
                Session["ID"] = TextBox1.Text;
                Session["Sname"] = ds.Tables[0].Rows[0][2].ToString();
                Session["Sclass"] = ds.Tables[0].Rows[0][3].ToString();
                Response.Redirect("Lay.aspx");
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Incorrect Password !";
                Label3.ForeColor = System.Drawing.Color.IndianRed;
                TextBox2.BorderColor = System.Drawing.Color.IndianRed;
            }
        }
        else if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
        {
            Session["Type"] = "Admin";
            Response.Redirect("AddStud.aspx");
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "ID doesn't exist !";
            Label2.ForeColor = System.Drawing.Color.IndianRed;
            TextBox1.BorderColor = System.Drawing.Color.IndianRed;
        }
    }
}