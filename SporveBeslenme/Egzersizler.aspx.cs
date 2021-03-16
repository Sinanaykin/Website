using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SporveBeslenme
{
    public partial class Egzersizler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel5.Visible = false;

            if (Page.IsPostBack == false)
            {
                kategoriid = Request.QueryString["Egzersizid"];
                islem = Request.QueryString["islem"];
                    
                    //Kategori Listesi
                SqlConnection baglan1 = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
                baglan1.Open();
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", baglan1);
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                baglan1.Close();
            } 

            //Egzersiz Listesi
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Egzersizler", baglan);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglan.Close();

            SqlConnection baglan3 = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan3.Open();
            if (islem=="sil")
            {
               
                SqlCommand komut3 = new SqlCommand("Delete From Tbl_Egzersizler where Egzersizid=@p1", baglan3);
                komut3.Parameters.AddWithValue("@p1", kategoriid);
                komut3.ExecuteNonQuery();
                baglan3.Close();
            }
            
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
            //Egzersiz Ekleme
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("insert into tbl_Egzersizler (EgzersizAd,EgzersizTarif,Kategoriid) values (@p1,@p2,@p3)", baglan);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglan.Close();

            //Kategori Sayısını Arttırma
            SqlConnection baglan2 = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan2.Open();
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set kategoriadet= kategoriadet+1 where kategoriid=@p1", baglan2);
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan2.Close();

        }
    }
}