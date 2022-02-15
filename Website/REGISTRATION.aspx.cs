using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Website
{
    public partial class REGISTRATION : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SELECT[Id], [name], [email], [number], [password] FROM[users]
            //UPDATE[users] SET[name] = @name, [email] = @email, [number] = @number, [password] = @password WHERE[Id] = @Id
            //INSERT INTO[users] ([name], [email], [number], [password]) VALUES(@name, @email, @number, @password)
            //DELETE FROM[users] WHERE[Id] = @Id
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO[users] ([name], [email], [number], [password]) VALUES(@name, @email, @number, @password)", con);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@number", TextBox3.Text);
                cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                con.Open();
                int s = cmd.ExecuteNonQuery();
                con.Close();
                if (s==1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    Response.Redirect("~/LOGIN.aspx");
                }
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                }
            }
        }
    }
}