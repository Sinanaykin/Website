using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SporveBeslenme
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif bgl = new sqlsinif();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string komut = "Select * From Tbl_Kategoriler";
                dt = bgl.baglanti(komut);
                DataList1.DataSource = dt;
                DataList1.DataBind();


                string komut2 = "Select * From Tbl_Kategori2ler";
                dt = bgl.baglanti(komut2);

                DataList2.DataSource = dt;
                DataList2.DataBind();
            }

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

