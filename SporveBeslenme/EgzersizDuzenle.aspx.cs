using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SporveBeslenme
{
    public partial class EgzersizDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        int kategoriid;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();

            if (Request.QueryString["Egzersizid"] == null) { kategoriid = 0; }
            else
            {
                kategoriid = int.Parse(Request.QueryString["Egzersizid"]);
            }
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From tbl_egzersizler where Egzersizid=@p1", baglan);
                komut.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader dr3 = komut.ExecuteReader();
                while (dr3.Read())
                {
                    TextBox1.Text = dr3[1].ToString();
                    TextBox2.Text = dr3[2].ToString();
                }
                baglan.Close();

                //Kategori Listesi
                if (Page.IsPostBack == false)
                {
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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("update tbl_egzersizler set egzersizad=@p1,egzersiztarif=@p2,kategoriid=@p3,EgzersizResim=@p5 where egzersizid=@p4", baglan);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p4", kategoriid);
            komut.Parameters.AddWithValue("@p5", "~/resimler/"+FileUpload1.FileName);
            komut.ExecuteNonQuery();
            baglan.Close();
        }
    }
}