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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SELECT[service_Id], [Title], [Description], [status] FROM[services]
            //UPDATE[services] SET[Title] = @Title, [Description] = @Description, [status] = @status WHERE[service_Id] = @service_Id
            //INSERT INTO[services] ([Title], [Description], [status]) VALUES(@Title, @Description, @status)
            //DELETE FROM[services] WHERE[service_Id] = @service_Id
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT[service_Id], [Title], [Description], [status] FROM[services] WHERE[status] = 1", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}