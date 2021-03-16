using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace SporveBeslenme
{
    public partial class KategoriDetay2 : System.Web.UI.Page
    {
        sqlsinif snf1 = new sqlsinif();
        int kategori2id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();

            if (Request.QueryString["Kategori2id"] == null) { kategori2id = 0; }
            else
            {
                kategori2id = int.Parse(Request.QueryString["Kategori2id"]);
            }
            SqlCommand komut = new SqlCommand("Select * From Tbl_Besinler where kategori2id=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", kategori2id);
            SqlDataReader dr1 = komut.ExecuteReader();
            DataList3.DataSource = dr1;
            DataList3.DataBind();
            baglan.Close();





        }


    }
}
