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
    public partial class LOGIN : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [users] WHERE [email] = @email AND [password] = @password", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            con.Open();
            int s = (int)cmd.ExecuteScalar();
            if (s == 1)
            {
                Session["email"] = TextBox1.Text;
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Response.Redirect("~/HOME_C.aspx");
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;

            }
            con.Close();
           }
        }
    }
}