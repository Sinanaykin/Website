using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SporveBeslenme
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar", baglan);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglan.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}