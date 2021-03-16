using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace SporveBeslenme
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        int kategoriid;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            
            if(Request.QueryString["Kategoriid"] == null ) { kategoriid = 0; }
            else
            {
                kategoriid = int.Parse(Request.QueryString["Kategoriid"]);
            }
            SqlCommand komut = new SqlCommand("Select * From Tbl_Egzersizler where kategoriid=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr1 = komut.ExecuteReader();
            DataList3.DataSource = dr1;
            DataList3.DataBind();
            baglan.Close();

           



        }


    }
}
