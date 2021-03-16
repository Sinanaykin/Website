using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace SporveBeslenme
{
    public partial class iletisim : System.Web.UI.Page

    {
        sqlsinif bgl = new sqlsinif();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
            baglan.Open();
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGönderen,MesajBaslik,MesajMail,Mesajicerik) values(@p1,@p2,@p3,@p4)", baglan);
            komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
            komut.Parameters.AddWithValue("@p2", TxtBaslik.Text);
            komut.Parameters.AddWithValue("@p3", TxtMail.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            baglan.Close();
        }
    }
}