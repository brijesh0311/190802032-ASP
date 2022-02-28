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
    }
}