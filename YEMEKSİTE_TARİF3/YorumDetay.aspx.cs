using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YEMEKSİTE_TARİF3
{
	public partial class YorumDetay : System.Web.UI.Page
	{
		sqlsinif bgl = new sqlsinif();
		string id = "";
		protected void Page_Load(object sender, EventArgs e)
		{
			id = Request.QueryString["Yemekid"];

			SqlCommand komut = new SqlCommand("Select YorumAdSoyad ,YorumMail,Yorumicerik,YemekAd From tbl_yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where   yorumid=@p1", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", id);
			SqlDataReader dr = komut.ExecuteReader();
			while (dr.Read())
			{
				TxtAd.Text = dr[1].ToString();
				Txtmail.Text = dr[2].ToString();
				Txticerik.Text = dr[5].ToString();
				
			}
			bgl.baglanti().Close();
		}
	}
}