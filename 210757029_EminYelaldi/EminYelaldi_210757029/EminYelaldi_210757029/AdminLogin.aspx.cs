using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EminYelaldi_210757029
{
    //ADMİN LOGİN PANELİ KODLARI
    public partial class AdminLogin : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //adminLogin fonksiyonu adminin girdiği bilgileri Tbl_Admin tablosuna eşleştirir ve eşleşiyorsa
            //adminin Admin ekranına giriş yapmasını sağlar...
            SqlCommand komut = new SqlCommand("SELECT dbo.adminLogin(@AdminAd ,@AdminSifre)", baglanti);
            komut.Parameters.AddWithValue("@AdminAd", TxtAdminAd.Text.ToString());
            komut.Parameters.AddWithValue("@AdminSifre", TxtAdminSifre.Text.ToString());
            baglanti.Open();
            int sonuc;
            sonuc= Convert.ToInt32(komut.ExecuteScalar());

            //Eğer bilgiler doğruysa girsin ama herhangi biri yanlışsa hata yazısını döndüren bölüm...
            if (sonuc == 1)
            {

                Response.Redirect("AdminUcus.aspx");
            }
            else
            {
                Label1.Text = "Yanlış admin adı veya şifre";
            }
            baglanti.Close();
        }
    }
}