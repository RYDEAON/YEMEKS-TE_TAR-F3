using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YEMEKSİTE_TARİF3
{
	public class sqlsinif
	{
		public SqlConnection baglanti()
		{
			SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-UNAPEKC\SQLEXPRESS;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;Encrypt=False;");
            baglan.Open();
			return baglan;
	}
	} 
}
	