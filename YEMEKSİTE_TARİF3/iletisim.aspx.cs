﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YEMEKSİTE_TARİF3
{
	public partial class iletisim : System.Web.UI.Page
	{
		sqlsinif bgl = new sqlsinif();
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlCommand komut = new SqlCommand("insert into Tbl_mesajlar(mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", Txtgonderen.Text);
			komut.Parameters.AddWithValue("@p2", TxtBaslik.Text);
			komut.Parameters.AddWithValue("@p3", Txtmail.Text);
			komut.Parameters.AddWithValue("@p4", Txtmesaj.Text);
			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
		}
	}
}