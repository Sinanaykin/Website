using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SporveBeslenme
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_GununYemegi", baglan);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();

                }
                baglan.Close();
                SqlConnection baglan1 = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
                baglan1.Open();
                SqlCommand komut1 = new SqlCommand("Select * From Tbl_GununYemegi2", baglan1);
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    TextBox6.Text = dr1[1].ToString();
                    TextBox5.Text = dr1[2].ToString();

                }
                baglan1.Close();

            }

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();

            SqlCommand komut = new SqlCommand("Update Tbl_GununYemegi set GununYemegiAd=@p1,GununYemegiBesinDegerleri=@p2", baglan);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        
            komut.ExecuteNonQuery();
            baglan.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
          
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();

            SqlCommand komut = new SqlCommand("Update Tbl_GununYemegi2 set GununYemegiAd2=@p1,GununYemegiBesinDegerleri2=@p2", baglan);
            komut.Parameters.AddWithValue("@p1", TextBox6.Text);
            komut.Parameters.AddWithValue("@p2", TextBox5.Text);
            
            komut.ExecuteNonQuery();
            baglan.Close();
        }
    }
}