using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SporveBeslenme
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif snf3 = new sqlsinif();
        int kategoriid;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();

            if (Request.QueryString["kategoriid"] == null) { kategoriid = 0; }
            else
            {
                kategoriid = int.Parse(Request.QueryString["kategoriid"]);
            }
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From tbl_kategoriler where kategoriid=@p1", baglan);
                komut.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader dr3 = komut.ExecuteReader();
                while (dr3.Read())
                {
                    TextBox1.Text = dr3[1].ToString();
                    TextBox2.Text = dr3[2].ToString();
                }
                baglan.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("update tbl_kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3",baglan);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", kategoriid);
            komut.ExecuteNonQuery();
            baglan.Close();

        }
    }
}