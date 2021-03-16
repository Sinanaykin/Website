using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SporveBeslenme

{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
       string kategoriid = "";
        string islem = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                kategoriid = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler",baglan);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme İşlemi
            SqlConnection baglan1 = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");

            baglan1.Open();
            if (islem == "sil")
            {
                
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Kategoriler where kategoriid=@p1", baglan1);
                komutsil.Parameters.AddWithValue("@p1", kategoriid);
                komutsil.ExecuteNonQuery();
                baglan1.Close();

            }
            
            Panel2.Visible = false;
            Panel5.Visible = false;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values(@p1)",baglan);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglan.Close();

        }
    }
}