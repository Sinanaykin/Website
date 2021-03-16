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
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string komut = "Select * From Tbl_Hakkimizda";
                dt = bgl.baglanti(komut);
                DataList5.DataSource = dt;
                DataList5.DataBind();

            }

        }
    }
}