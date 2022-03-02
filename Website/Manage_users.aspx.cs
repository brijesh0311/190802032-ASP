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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SELECT[Id], [name], [email], [number], [password] FROM[users]
            //UPDATE[users] SET[name] = @name, [email] = @email, [number] = @number, [password] = @password WHERE[Id] = @Id
            //INSERT INTO[users] ([name], [email], [number], [password]) VALUES(@name, @email, @number, @password)
            //DELETE FROM[users] WHERE[Id] = @Id
            Print();
        }
        public void Print() 
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT[Id], [name], [email], [number], [password] FROM[users]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
                
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            SqlCommand cmd = new SqlCommand("DELETE FROM[users] WHERE[Id] = @Id", con);
            cmd.Parameters.AddWithValue("@Id", btn.CommandArgument);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                Literal1.Text = "Data Deleted Sucessfully !";
                Print();
            }
            else
            {
                Literal1.Text = "Error for Delete Data !";
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT[Id], [name], [email], [number], [password] FROM[users]  WHERE[Id] = "+btn.CommandArgument , con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
            TextBox4.Text = dt.Rows[0][4].ToString();
            ViewState["user_id"] = btn.CommandArgument;


            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE[users] SET[name] = @name, [email] = @email, [number] = @number, [password] = @password WHERE[Id] = @Id", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@number", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Id", ViewState["user_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                //Response.Redirect("~/LOGIN.aspx");
                Literal7.Text = "Updated Sucessfully..";
                Print();
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Literal7.Text = "Error in Updation ";
            }
        }
    }
}