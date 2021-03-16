using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SporveBeslenme
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string komut = "Select * From Tbl_Anasayfa";
                dt = bgl.baglanti(komut);
                DataList3.DataSource = dt;
                DataList3.DataBind();

                




            }

        }
    }
}