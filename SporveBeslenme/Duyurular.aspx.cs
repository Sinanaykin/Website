using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SporveBeslenme
{
    public partial class Duyurular : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string komut = "Select * From Tbl_Duyurular";
                dt = bgl.baglanti(komut);
                DataList3.DataSource = dt;
                DataList3.DataBind();

                string komut2 = "Select * From Tbl_Duyurular2";
                dt = bgl.baglanti(komut2);
                DataList4.DataSource = dt;
                DataList4.DataBind();




            }

        }
    }
}