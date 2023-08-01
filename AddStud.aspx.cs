using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class AddStud : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Parking"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Success. Student details added.')", true);
            Session["Add"] = "";
        }
        if (!IsPostBack)
        {
            string str = "Select top 1 sid from student order by sid desc";
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox1.Text = "1001";
                TextBox1.Enabled = false;
            }
            else
            {
                string s = ds.Tables[0].Rows[0][0].ToString();
                int s1 = Convert.ToInt32(s) + 1;
                TextBox1.Text = s1.ToString();
                TextBox1.Enabled = false;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text != "")
        {
            string pass = CreateRandomPassword(6);
            string ins = "Insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + pass + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("tesstmail18@gmail.com");
            mail.To.Add(TextBox4.Text);
            mail.Subject = "Online Parking Booking System";
            mail.Body = "Dear " + TextBox3.Text + ",\r\n\r\n Your Registration at Online Parking Booking System is successful.\r\n\r\n Kindly use below login credentials:\r\n\r\n Login ID  : " + TextBox1.Text + "\r\n\r\n Password : " + pass + " \r\n\r\n\r\n\r\n";

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("tesstmail18@gmail.com", "testmail");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);

            Session["Add"] = "Data";
            Response.Redirect("AddStud.aspx");
        }
        else
        {
            LabelErr.Visible = true;
        }
    }
    public static string CreateRandomPassword(int PasswordLength)
    {
        string allowedChars = "0123456789abcdefg";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        int allowedCharCount = allowedChars.Length;
        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = allowedChars[(int)((allowedChars.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }
}