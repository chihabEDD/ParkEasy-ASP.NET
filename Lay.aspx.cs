using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Success ! Slot booked')", true);
            Session["Add"] = "";
        }
        Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Select a section below to proceed with booking')", true);
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "G1";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "G2";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "G3";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "G4";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "P1";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "P2";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "P3";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "P4";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "P5";
        Response.Redirect("Book.aspx");
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Session["Value"] = "P6";
        Response.Redirect("Book.aspx");
    }
}