using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Website
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SELECT[service_Id], [Title], [Description], [status] FROM[services]
            //UPDATE[services] SET[Title] = @Title, [Description] = @Description, [status] = @status WHERE[service_Id] = @service_Id
            //INSERT INTO[services] ([Title], [Description], [status]) VALUES(@Title, @Description, @status)
            //DELETE FROM[services] WHERE[service_Id] = @service_Id
            Print();
        }

        public void Print()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT[service_Id], [Title], [Description], [status] FROM[services]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO[services] ([Title], [Description], [status]) VALUES(@Title, @Description, @status)", con);
            cmd.Parameters.AddWithValue("@Title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Description", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                
                //Response.Redirect("~/LOGIN.aspx");
                Literal7.Text = "Inserted Service Sucessfully..";
                Print();
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Literal7.Text = "Error in Inserted data ";
                Print();
            }

        }
    }
}