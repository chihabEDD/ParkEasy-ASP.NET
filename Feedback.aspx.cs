using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Parking"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Success ! Feedback Submitted')", true);
            Session["Add"] = "";
        }
        try
        {
            LabelSid.Text = Session["Sname"].ToString();
        }
         catch (Exception ex)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string date = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm");
        string ins = "insert into feedback values('" + LabelSid.Text + "','" + TextBox1.Text + "','" + date + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Add"] = "Data";
        Response.Redirect("Feedback.aspx");
    }
}