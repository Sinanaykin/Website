using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace SporveBeslenme
{
    public class sqlsinif
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-ANBQKEB\SQLEXPRESS01;Initial Catalog=Dbo_sporvebeslenme;Integrated Security=True");
        public DataTable baglanti(string komut)
        

        {
            baglan.Open();
            SqlDataAdapter da = new SqlDataAdapter(komut, baglan);
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            baglan.Close();
            return dt;
        }

      
    }
}