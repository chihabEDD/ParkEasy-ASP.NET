using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Parking"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LabelSname.Text = Session["Sname"].ToString();
            LabelSid.Text = Session["ID"].ToString();
            LabelSclass.Text = Session["Sclass"].ToString();
        }
        catch (Exception ex)
        {

        }
    }
    public void btn(Button id)
    {
        LabelErr2.Visible = false;
        Button btn1;
        string str = "select section,slot,date,st,et from booking where section='" + LabelSec.Text + "' and date='" + TextBox1.Text + "' AND ((ST >= '" + DropDownList1.Text + "') AND (ET <= '" + LabelTime.Text + "') OR (ST < '" + DropDownList1.Text + "') AND (ET >= '" + LabelTime.Text + "') OR (ST > '" + DropDownList1.Text + "') AND(ET >= '" + LabelTime.Text + "') AND(ST < '" + LabelTime.Text + "') OR (ST < '" + DropDownList1.Text + "') AND(ET <= '" + LabelTime.Text + "') AND(ET > '" + DropDownList1.Text + "'))";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (LabelSec.Text == "G1" || LabelSec.Text == "G2")
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string slot = ds.Tables[0].Rows[i][1].ToString();
                    
                    for (int j = 1; j <= 17; j++)
                    {
                        string btn = "Button" + Convert.ToString(j);
                        btn1 = FindControl(btn) as Button;
                        if (slot == btn1.Text)
                        {
                            btn1.BackColor = System.Drawing.Color.Red;
                            btn1.ForeColor = System.Drawing.Color.White;
                            btn1.Enabled = false;
                        }
                    }
                }
            }
            else if (LabelSec.Text == "G3")
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string slot = ds.Tables[0].Rows[i][1].ToString();

                    for (int j = 35; j <= 53; j++)
                    {
                        string btn = "Button" + Convert.ToString(j);
                        btn1 = FindControl(btn) as Button;
                        if (slot == btn1.Text)
                        {
                            btn1.BackColor = System.Drawing.Color.Red;
                            btn1.ForeColor = System.Drawing.Color.White;
                            btn1.Enabled = false;
                        }
                    }
                }
            }
            else if (LabelSec.Text == "G4")
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string slot = ds.Tables[0].Rows[i][1].ToString();

                    for (int j = 54; j <= 103; j++)
                    {
                        string btn = "Button" + Convert.ToString(j);
                        btn1 = FindControl(btn) as Button;
                        if (slot == btn1.Text)
                        {
                            btn1.BackColor = System.Drawing.Color.Red;
                            btn1.ForeColor = System.Drawing.Color.White;
                            btn1.Enabled = false;
                        }
                    }
                }
            }
            else if (LabelSec.Text == "P1" || LabelSec.Text == "P2" || LabelSec.Text == "P3" || LabelSec.Text == "P4" || LabelSec.Text == "P5" || LabelSec.Text == "P6")
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string slot = ds.Tables[0].Rows[i][1].ToString();

                    for (int j = 104; j <= 118; j++)
                    {
                        string btn = "Button" + Convert.ToString(j);
                        btn1 = FindControl(btn) as Button;
                        if (slot == btn1.Text)
                        {
                            btn1.BackColor = System.Drawing.Color.Red;
                            btn1.ForeColor = System.Drawing.Color.White;
                            btn1.Enabled = false;
                        }
                    }
                }
            }
        }
        id.BackColor = System.Drawing.Color.Empty;
        id.ForeColor = System.Drawing.Color.Empty;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.BackColor = System.Drawing.Color.Green;
        Button1.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button1.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button1")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button2")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
        Button2.BackColor = System.Drawing.Color.Green;
        Button2.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button2.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button3")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
        Button3.BackColor = System.Drawing.Color.Green;
        Button3.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button3.Text;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Button4.BackColor = System.Drawing.Color.Green;
        Button4.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button4.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button"+Convert.ToString(i);
            if (str != "Button4")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        Button5.BackColor = System.Drawing.Color.Green;
        Button5.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button5.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button5")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Button6.BackColor = System.Drawing.Color.Green;
        Button6.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button6.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button6")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Button7.BackColor = System.Drawing.Color.Green;
        Button7.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button7.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button7")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Button8.BackColor = System.Drawing.Color.Green;
        Button8.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button8.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button8")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Button9.BackColor = System.Drawing.Color.Green;
        Button9.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button9.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button9")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Button10.BackColor = System.Drawing.Color.Green;
        Button10.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button10.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button10")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Button11.BackColor = System.Drawing.Color.Green;
        Button11.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button11.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button11")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Button12.BackColor = System.Drawing.Color.Green;
        Button12.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button12.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button12")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Button13.BackColor = System.Drawing.Color.Green;
        Button13.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button13.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button13")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        Button14.BackColor = System.Drawing.Color.Green;
        Button14.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button14.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button14")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        Button15.BackColor = System.Drawing.Color.Green;
        Button15.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button15.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button15")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Button16.BackColor = System.Drawing.Color.Green;
        Button16.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button16.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button16")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        Button17.BackColor = System.Drawing.Color.Green;
        Button17.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button17.Text;
        for (int i = 1; i <= 17; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button17")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button35_Click(object sender, EventArgs e)
    {
        Button35.BackColor = System.Drawing.Color.Green;
        Button35.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button35.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button35")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button36_Click(object sender, EventArgs e)
    {
        Button36.BackColor = System.Drawing.Color.Green;
        Button36.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button36.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button36")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button37_Click(object sender, EventArgs e)
    {
        Button37.BackColor = System.Drawing.Color.Green;
        Button37.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button37.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button37")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button38_Click(object sender, EventArgs e)
    {
        Button38.BackColor = System.Drawing.Color.Green;
        Button38.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button38.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button38")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button39_Click(object sender, EventArgs e)
    {
        Button39.BackColor = System.Drawing.Color.Green;
        Button39.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button39.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button39")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button40_Click(object sender, EventArgs e)
    {
        Button40.BackColor = System.Drawing.Color.Green;
        Button40.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button40.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button40")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button41_Click(object sender, EventArgs e)
    {
        Button41.BackColor = System.Drawing.Color.Green;
        Button41.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button41.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button41")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button42_Click(object sender, EventArgs e)
    {
        Button42.BackColor = System.Drawing.Color.Green;
        Button42.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button42.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button42")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button43_Click(object sender, EventArgs e)
    {
        Button43.BackColor = System.Drawing.Color.Green;
        Button43.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button43.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button43")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button44_Click(object sender, EventArgs e)
    {
        Button44.BackColor = System.Drawing.Color.Green;
        Button44.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button44.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button44")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button45_Click(object sender, EventArgs e)
    {
        Button45.BackColor = System.Drawing.Color.Green;
        Button45.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button45.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button45")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button46_Click(object sender, EventArgs e)
    {
        Button46.BackColor = System.Drawing.Color.Green;
        Button46.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button46.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button46")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button47_Click(object sender, EventArgs e)
    {
        Button47.BackColor = System.Drawing.Color.Green;
        Button47.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button47.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button47")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button48_Click(object sender, EventArgs e)
    {
        Button48.BackColor = System.Drawing.Color.Green;
        Button48.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button48.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button48")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button49_Click(object sender, EventArgs e)
    {
        Button49.BackColor = System.Drawing.Color.Green;
        Button49.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button49.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button49")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button50_Click(object sender, EventArgs e)
    {
        Button50.BackColor = System.Drawing.Color.Green;
        Button50.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button50.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button50")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button51_Click(object sender, EventArgs e)
    {
        Button51.BackColor = System.Drawing.Color.Green;
        Button51.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button51.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button51")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button52_Click(object sender, EventArgs e)
    {
        Button52.BackColor = System.Drawing.Color.Green;
        Button52.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button52.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button52")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button53_Click(object sender, EventArgs e)
    {
        Button53.BackColor = System.Drawing.Color.Green;
        Button53.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button53.Text;
        for (int i = 35; i <= 53; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button53")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button54_Click(object sender, EventArgs e)
    {
        Button54.BackColor = System.Drawing.Color.Green;
        Button54.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button54.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button54")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button55_Click(object sender, EventArgs e)
    {
        Button55.BackColor = System.Drawing.Color.Green;
        Button55.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button55.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button55")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button56_Click(object sender, EventArgs e)
    {
        Button56.BackColor = System.Drawing.Color.Green;
        Button56.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button56.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button56")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button57_Click(object sender, EventArgs e)
    {
        Button57.BackColor = System.Drawing.Color.Green;
        Button57.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button57.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button57")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button58_Click(object sender, EventArgs e)
    {
        Button58.BackColor = System.Drawing.Color.Green;
        Button58.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button58.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button58")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button59_Click(object sender, EventArgs e)
    {
        Button59.BackColor = System.Drawing.Color.Green;
        Button59.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button59.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button59")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button60_Click(object sender, EventArgs e)
    {
        Button60.BackColor = System.Drawing.Color.Green;
        Button60.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button6.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button60")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button61_Click(object sender, EventArgs e)
    {
        Button61.BackColor = System.Drawing.Color.Green;
        Button61.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button61.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button61")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button62_Click(object sender, EventArgs e)
    {
        Button62.BackColor = System.Drawing.Color.Green;
        Button62.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button62.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button62")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button63_Click(object sender, EventArgs e)
    {
        Button63.BackColor = System.Drawing.Color.Green;
        Button63.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button63.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button63")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button64_Click(object sender, EventArgs e)
    {
        Button64.BackColor = System.Drawing.Color.Green;
        Button64.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button64.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button64")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button65_Click(object sender, EventArgs e)
    {
        Button65.BackColor = System.Drawing.Color.Green;
        Button65.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button65.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button65")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button66_Click(object sender, EventArgs e)
    {
        Button66.BackColor = System.Drawing.Color.Green;
        Button66.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button66.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button66")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button67_Click(object sender, EventArgs e)
    {
        Button67.BackColor = System.Drawing.Color.Green;
        Button67.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button67.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button67")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button68_Click(object sender, EventArgs e)
    {
        Button68.BackColor = System.Drawing.Color.Green;
        Button68.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button68.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button68")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button69_Click(object sender, EventArgs e)
    {
        Button69.BackColor = System.Drawing.Color.Green;
        Button69.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button69.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button69")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button70_Click(object sender, EventArgs e)
    {
        Button70.BackColor = System.Drawing.Color.Green;
        Button70.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button70.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button70")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button71_Click(object sender, EventArgs e)
    {
        Button71.BackColor = System.Drawing.Color.Green;
        Button71.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button71.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button71")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button72_Click(object sender, EventArgs e)
    {
        Button72.BackColor = System.Drawing.Color.Green;
        Button72.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button72.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button72")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button73_Click(object sender, EventArgs e)
    {
        Button73.BackColor = System.Drawing.Color.Green;
        Button73.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button73.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button73")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button74_Click(object sender, EventArgs e)
    {
        Button74.BackColor = System.Drawing.Color.Green;
        Button74.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button74.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button74")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button75_Click(object sender, EventArgs e)
    {
        Button75.BackColor = System.Drawing.Color.Green;
        Button75.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button75.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button75")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button76_Click(object sender, EventArgs e)
    {
        Button76.BackColor = System.Drawing.Color.Green;
        Button76.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button76.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button76")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button77_Click(object sender, EventArgs e)
    {
        Button77.BackColor = System.Drawing.Color.Green;
        Button77.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button77.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button77")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button78_Click(object sender, EventArgs e)
    {
        Button78.BackColor = System.Drawing.Color.Green;
        Button78.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button78.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button78")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button79_Click(object sender, EventArgs e)
    {
        Button79.BackColor = System.Drawing.Color.Green;
        Button79.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button79.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button79")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button80_Click(object sender, EventArgs e)
    {
        Button80.BackColor = System.Drawing.Color.Green;
        Button80.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button80.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button80")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button81_Click(object sender, EventArgs e)
    {
        Button81.BackColor = System.Drawing.Color.Green;
        Button81.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button81.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button81")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button82_Click(object sender, EventArgs e)
    {
        Button82.BackColor = System.Drawing.Color.Green;
        Button82.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button82.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button82")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button83_Click(object sender, EventArgs e)
    {
        Button83.BackColor = System.Drawing.Color.Green;
        Button83.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button83.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button83")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button84_Click(object sender, EventArgs e)
    {
        Button84.BackColor = System.Drawing.Color.Green;
        Button84.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button84.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button84")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button85_Click(object sender, EventArgs e)
    {
        Button85.BackColor = System.Drawing.Color.Green;
        Button85.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button85.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button85")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button86_Click(object sender, EventArgs e)
    {
        Button86.BackColor = System.Drawing.Color.Green;
        Button86.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button86.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button86")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button87_Click(object sender, EventArgs e)
    {
        Button87.BackColor = System.Drawing.Color.Green;
        Button87.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button87.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button87")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button88_Click(object sender, EventArgs e)
    {
        Button88.BackColor = System.Drawing.Color.Green;
        Button88.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button88.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button88")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button89_Click(object sender, EventArgs e)
    {
        Button89.BackColor = System.Drawing.Color.Green;
        Button89.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button89.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button89")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button90_Click(object sender, EventArgs e)
    {
        Button90.BackColor = System.Drawing.Color.Green;
        Button90.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button90.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button90")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button91_Click(object sender, EventArgs e)
    {
        Button91.BackColor = System.Drawing.Color.Green;
        Button91.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button91.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button91")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button92_Click(object sender, EventArgs e)
    {
        Button92.BackColor = System.Drawing.Color.Green;
        Button92.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button92.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button92")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button93_Click(object sender, EventArgs e)
    {
        Button93.BackColor = System.Drawing.Color.Green;
        Button93.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button93.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button93")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button94_Click(object sender, EventArgs e)
    {
        Button94.BackColor = System.Drawing.Color.Green;
        Button94.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button94.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button94")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button95_Click(object sender, EventArgs e)
    {
        Button95.BackColor = System.Drawing.Color.Green;
        Button95.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button95.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button95")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button96_Click(object sender, EventArgs e)
    {
        Button96.BackColor = System.Drawing.Color.Green;
        Button96.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button96.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button96")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button97_Click(object sender, EventArgs e)
    {
        Button97.BackColor = System.Drawing.Color.Green;
        Button97.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button97.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button97")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button98_Click(object sender, EventArgs e)
    {
        Button98.BackColor = System.Drawing.Color.Green;
        Button98.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button98.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button98")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button99_Click(object sender, EventArgs e)
    {
        Button99.BackColor = System.Drawing.Color.Green;
        Button99.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button99.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button99")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button100_Click(object sender, EventArgs e)
    {
        Button100.BackColor = System.Drawing.Color.Green;
        Button100.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button100.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button100")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button101_Click(object sender, EventArgs e)
    {
        Button101.BackColor = System.Drawing.Color.Green;
        Button101.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button101.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button101")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button102_Click(object sender, EventArgs e)
    {
        Button102.BackColor = System.Drawing.Color.Green;
        Button102.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button102.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button102")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button103_Click(object sender, EventArgs e)
    {
        Button103.BackColor = System.Drawing.Color.Green;
        Button103.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button103.Text;
        for (int i = 54; i <= 103; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button103")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button104_Click(object sender, EventArgs e)
    {
        Button104.BackColor = System.Drawing.Color.Green;
        Button104.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button104.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button104")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button105_Click(object sender, EventArgs e)
    {
        Button105.BackColor = System.Drawing.Color.Green;
        Button105.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button105.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button105")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button106_Click(object sender, EventArgs e)
    {
        Button106.BackColor = System.Drawing.Color.Green;
        Button106.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button106.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button106")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button107_Click(object sender, EventArgs e)
    {
        Button107.BackColor = System.Drawing.Color.Green;
        Button107.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button107.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button107")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button108_Click(object sender, EventArgs e)
    {
        Button108.BackColor = System.Drawing.Color.Green;
        Button108.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button108.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button108")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button109_Click(object sender, EventArgs e)
    {
        Button109.BackColor = System.Drawing.Color.Green;
        Button109.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button109.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button109")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button110_Click(object sender, EventArgs e)
    {
        Button110.BackColor = System.Drawing.Color.Green;
        Button110.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button110.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button110")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button111_Click(object sender, EventArgs e)
    {
        Button111.BackColor = System.Drawing.Color.Green;
        Button111.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button111.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button111")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button112_Click(object sender, EventArgs e)
    {
        Button112.BackColor = System.Drawing.Color.Green;
        Button112.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button112.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button112")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button113_Click(object sender, EventArgs e)
    {
        Button113.BackColor = System.Drawing.Color.Green;
        Button113.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button113.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button113")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button114_Click(object sender, EventArgs e)
    {
        Button114.BackColor = System.Drawing.Color.Green;
        Button114.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button114.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button114")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button115_Click(object sender, EventArgs e)
    {
        Button115.BackColor = System.Drawing.Color.Green;
        Button115.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button115.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button115")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button116_Click(object sender, EventArgs e)
    {
        Button116.BackColor = System.Drawing.Color.Green;
        Button116.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button116.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button116")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button117_Click(object sender, EventArgs e)
    {
        Button117.BackColor = System.Drawing.Color.Green;
        Button117.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button117.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button117")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button118_Click(object sender, EventArgs e)
    {
        Button118.BackColor = System.Drawing.Color.Green;
        Button118.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button118.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button118")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button119_Click(object sender, EventArgs e)
    {
        Button119.BackColor = System.Drawing.Color.Green;
        Button119.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button119.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button119")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button120_Click(object sender, EventArgs e)
    {
        Button120.BackColor = System.Drawing.Color.Green;
        Button120.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button120.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button120")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button121_Click(object sender, EventArgs e)
    {
        Button121.BackColor = System.Drawing.Color.Green;
        Button121.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button121.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button121")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button122_Click(object sender, EventArgs e)
    {
        Button122.BackColor = System.Drawing.Color.Green;
        Button122.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button122.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button122")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button123_Click(object sender, EventArgs e)
    {
        Button123.BackColor = System.Drawing.Color.Green;
        Button123.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button123.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button123")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button124_Click(object sender, EventArgs e)
    {
        Button124.BackColor = System.Drawing.Color.Green;
        Button124.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button124.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button124")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button125_Click(object sender, EventArgs e)
    {
        Button125.BackColor = System.Drawing.Color.Green;
        Button125.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button125.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button125")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button126_Click(object sender, EventArgs e)
    {
        Button126.BackColor = System.Drawing.Color.Green;
        Button126.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button126.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button126")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button127_Click(object sender, EventArgs e)
    {
        Button127.BackColor = System.Drawing.Color.Green;
        Button127.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button127.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button127")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button128_Click(object sender, EventArgs e)
    {
        Button128.BackColor = System.Drawing.Color.Green;
        Button128.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button128.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button128")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button129_Click(object sender, EventArgs e)
    {
        Button129.BackColor = System.Drawing.Color.Green;
        Button129.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button129.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button129")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button130_Click(object sender, EventArgs e)
    {
        Button130.BackColor = System.Drawing.Color.Green;
        Button130.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button130.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button130")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button131_Click(object sender, EventArgs e)
    {
        Button131.BackColor = System.Drawing.Color.Green;
        Button131.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button131.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button131")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button132_Click(object sender, EventArgs e)
    {
        Button132.BackColor = System.Drawing.Color.Green;
        Button132.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button132.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button132")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button133_Click(object sender, EventArgs e)
    {
        Button133.BackColor = System.Drawing.Color.Green;
        Button133.ForeColor = System.Drawing.Color.White;
        LabelSlot.Text = Button133.Text;
        for (int i = 104; i <= 133; i++)
        {
            string str = "Button" + Convert.ToString(i);
            if (str != "Button133")
            {
                Button btn1 = FindControl(str) as Button;
                btn(btn1);
            }
        }
    }

    protected void Button285_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            if (DropDownList1.Text != "--Select--")
            {
                if (DropDownList2.Text != "--Select--")
                {
                    if (LabelSlot.Text != "")
                    {
                        if (DropDownList2.Text == "1 hr")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(1).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "2 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(2).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "3 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(3).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "4 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(4).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "5 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(5).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "6 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(6).ToString("HH:mm");
                        }

                        string ins = "insert into booking values('1','" + LabelSec.Text + "','" + LabelSlot.Text + "','" + TextBox1.Text + "','" + DropDownList1.Text + "','" + LabelTime.Text + "','" + DropDownList2.Text + "','" + LabelSname.Text + "','" + LabelSclass.Text + "','" + LabelSid.Text + "')";
                        SqlCommand cmd = new SqlCommand(ins, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Session["Add"] = "Data";
                        Response.Redirect("Lay.aspx");
                    }
                    else
                    {
                        LabelErr2.Text = "Kindly select any one slot";
                        LabelErr2.Visible = true;
                        LabelErr0.Visible = false;
                        LabelErr.Visible = false;
                        LabelErr1.Visible = false;
                    }
                }
                else
                {
                    LabelErr1.Text = "Kindly select the time required in hours";
                    LabelErr1.Visible = true;
                    LabelErr0.Visible = false;
                    LabelErr.Visible = false;
                    LabelErr2.Visible = false;
                    Panel1.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Button285.Visible = false;
                }
            }
            else
            {
                LabelErr.Text = "Kindly select the start time";
                LabelErr.Visible = true;
                LabelErr0.Visible = false;
                LabelErr1.Visible = false;
                LabelErr2.Visible = false;
                Panel1.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Button285.Visible = false;
            }
        }
        else
        {
            LabelErr0.Text = "Kindly select the date";
            LabelErr0.Visible = true;
            LabelErr1.Visible = false;
            LabelErr2.Visible = false;
            Panel1.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Button285.Visible = false;
        }
    }

    public string dfun(string str)
    {
        DateTime dt = Convert.ToDateTime(str);
        string s = dt.ToString("yyyy-MM-dd");
        return s;
    }

    protected void Button284_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            LabelSlot.Text = "";
            string dt1 = System.DateTime.Now.ToString("yyyy-MM-dd");
            dt1 = dfun(dt1);
            DateTime s = Convert.ToDateTime(dt1);
            string date = TextBox1.Text;
            date = dfun(date);
            DateTime s1 = Convert.ToDateTime(date);
            if (s1 >= s)
            {
                if (DropDownList1.Text != "--Select--")
                {
                    if (DropDownList2.Text != "--Select--")
                    {
                        btnReload();
                        LabelErr0.Visible = false;
                        LabelErr.Visible = false;
                        LabelErr1.Visible = false;
                        Button285.Visible = true;
                        if (Session["Value"] == "G1")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel1.Visible = true;
                        }
                        else if (Session["Value"] == "G2")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel1.Visible = true;
                        }
                        else if (Session["Value"] == "G3")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel3.Visible = true;
                        }
                        else if (Session["Value"] == "G4")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel4.Visible = true;
                        }
                        else if (Session["Value"] == "P1")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel5.Visible = true;
                        }
                        else if (Session["Value"] == "P2")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel5.Visible = true;
                        }
                        else if (Session["Value"] == "P3")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel5.Visible = true;
                        }
                        else if (Session["Value"] == "P4")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel5.Visible = true;
                        }
                        else if (Session["Value"] == "P5")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel5.Visible = true;
                        }
                        else if (Session["Value"] == "P6")
                        {
                            LabelSec.Text = Session["Value"].ToString();
                            Panel5.Visible = true;
                        }
                        Button btn1;
                        if (DropDownList2.Text == "1 hr")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(1).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "2 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(2).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "3 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(3).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "4 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(4).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "5 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(5).ToString("HH:mm");
                        }
                        else if (DropDownList2.Text == "6 hrs")
                        {
                            DateTime time = Convert.ToDateTime(DropDownList1.Text);
                            LabelTime.Text = time.AddHours(6).ToString("HH:mm");
                        }
                        string [] split = LabelTime.Text.Split(':');
                        if (Convert.ToInt32(split[0]) <= 18)
                        {
                            LabelErr2.Visible = false;
                            string str = "select section,slot,date,st,et from booking where section='" + LabelSec.Text + "' and date='" + TextBox1.Text + "' AND ((ST >= '" + DropDownList1.Text + "') AND (ET <= '" + LabelTime.Text + "') OR (ST < '" + DropDownList1.Text + "') AND (ET >= '" + LabelTime.Text + "') OR (ST > '" + DropDownList1.Text + "') AND(ET >= '" + LabelTime.Text + "') AND(ST < '" + LabelTime.Text + "') OR (ST < '" + DropDownList1.Text + "') AND(ET <= '" + LabelTime.Text + "') AND(ET > '" + DropDownList1.Text + "'))";
                            SqlDataAdapter da = new SqlDataAdapter(str, con);
                            DataSet ds = new DataSet();
                            da.Fill(ds);
                            if (ds.Tables[0].Rows.Count > 0)
                            {
                                if (LabelSec.Text == "G1" || LabelSec.Text == "G2")
                                {
                                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                    {
                                        string slot = ds.Tables[0].Rows[i][1].ToString();

                                        for (int j = 1; j <= 17; j++)
                                        {
                                            string btn = "Button" + Convert.ToString(j);
                                            btn1 = FindControl(btn) as Button;
                                            if (slot == btn1.Text)
                                            {
                                                btn1.BackColor = System.Drawing.Color.Red;
                                                btn1.ForeColor = System.Drawing.Color.White;
                                                btn1.Enabled = false;
                                            }
                                        }
                                    }
                                }
                                else if (LabelSec.Text == "G3")
                                {
                                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                    {
                                        string slot = ds.Tables[0].Rows[i][1].ToString();

                                        for (int j = 35; j <= 53; j++)
                                        {
                                            string btn = "Button" + Convert.ToString(j);
                                            btn1 = FindControl(btn) as Button;
                                            if (slot == btn1.Text)
                                            {
                                                btn1.BackColor = System.Drawing.Color.Red;
                                                btn1.ForeColor = System.Drawing.Color.White;
                                                btn1.Enabled = false;
                                            }
                                        }
                                    }
                                }
                                else if (LabelSec.Text == "G4")
                                {
                                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                    {
                                        string slot = ds.Tables[0].Rows[i][1].ToString();

                                        for (int j = 54; j <= 103; j++)
                                        {
                                            string btn = "Button" + Convert.ToString(j);
                                            btn1 = FindControl(btn) as Button;
                                            if (slot == btn1.Text)
                                            {
                                                btn1.BackColor = System.Drawing.Color.Red;
                                                btn1.ForeColor = System.Drawing.Color.White;
                                                btn1.Enabled = false;
                                            }
                                        }
                                    }
                                }
                                else if (LabelSec.Text == "P1" || LabelSec.Text == "P2" || LabelSec.Text == "P3" || LabelSec.Text == "P4" || LabelSec.Text == "P5" || LabelSec.Text == "P6")
                                {
                                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                    {
                                        string slot = ds.Tables[0].Rows[i][1].ToString();

                                        for (int j = 104; j <= 118; j++)
                                        {
                                            string btn = "Button" + Convert.ToString(j);
                                            btn1 = FindControl(btn) as Button;
                                            if (slot == btn1.Text)
                                            {
                                                btn1.BackColor = System.Drawing.Color.Red;
                                                btn1.ForeColor = System.Drawing.Color.White;
                                                btn1.Enabled = false;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        else
                        {
                            LabelErr2.Text = "Time should not exceed 18:00 hrs";
                            LabelErr2.Visible = true;
                            Panel1.Visible = false;
                            Panel3.Visible = false;
                            Panel4.Visible = false;
                            Panel5.Visible = false;
                            Button285.Visible = false;
                        }
                    }
                    else
                    {
                        LabelErr1.Text = "Kindly select the time required in hours";
                        LabelErr1.Visible = true;
                        LabelErr0.Visible = false;
                        LabelErr.Visible = false;
                        LabelErr2.Visible = false;
                        Panel1.Visible = false;
                        Panel3.Visible = false;
                        Panel4.Visible = false;
                        Panel5.Visible = false;
                        Button285.Visible = false;
                    }
                }
                else
                {
                    LabelErr.Text = "Kindly select the start time";
                    LabelErr.Visible = true;
                    LabelErr0.Visible = false;
                    LabelErr1.Visible = false;
                    LabelErr2.Visible = false;
                    Panel1.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Button285.Visible = false;
                }
            }
            else
            {
                LabelErr0.Text = "Selected date should be current or future";
                LabelErr0.Visible = true;
                LabelErr.Visible = false;
                LabelErr1.Visible = false;
                LabelErr2.Visible = false;
                Panel1.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Button285.Visible = false;
            }
        }
        else
        {
            LabelErr0.Text = "Kindly select the date";
            LabelErr0.Visible = true;
            LabelErr1.Visible = false;
            LabelErr2.Visible = false;
            Panel1.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Button285.Visible = false;
        }
    }
    public void btnReload()
    {
        if (LabelSec.Text == "G1" || LabelSec.Text == "G2")
        {
            for (int i = 1; i <= 17; i++)
            {
                string btn = "Button" + Convert.ToString(i);
                Button btn1 = FindControl(btn) as Button;
                btn1.BackColor = System.Drawing.Color.Empty;
                btn1.ForeColor = System.Drawing.Color.Empty;
                btn1.Enabled = true;
            }
        }
        else if (LabelSec.Text == "G3")
        {
            for (int i = 35; i <= 53; i++)
            {
                string btn = "Button" + Convert.ToString(i);
                Button btn1 = FindControl(btn) as Button;
                btn1.BackColor = System.Drawing.Color.Empty;
                btn1.ForeColor = System.Drawing.Color.Empty;
                btn1.Enabled = true;
            }
        }
        else if (LabelSec.Text == "G4")
        {
            for (int i = 54; i <= 103; i++)
            {
                string btn = "Button" + Convert.ToString(i);
                Button btn1 = FindControl(btn) as Button;
                btn1.BackColor = System.Drawing.Color.Empty;
                btn1.ForeColor = System.Drawing.Color.Empty;
                btn1.Enabled = true;
            }
        }
        else if (LabelSec.Text == "P1" || LabelSec.Text == "P2" || LabelSec.Text == "P3" || LabelSec.Text == "P4" || LabelSec.Text == "P5" || LabelSec.Text == "P6")
        {
            for (int i = 104; i <= 118; i++)
            {
                string btn = "Button" + Convert.ToString(i);
                Button btn1 = FindControl(btn) as Button;
                btn1.BackColor = System.Drawing.Color.Empty;
                btn1.ForeColor = System.Drawing.Color.Empty;
                btn1.Enabled = true;
            }
        }
    }
}