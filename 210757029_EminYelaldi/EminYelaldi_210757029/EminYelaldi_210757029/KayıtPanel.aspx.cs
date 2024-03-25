using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Configuration;
using System.Web.Services.Description;

namespace EminYelaldi_210757029
{
    //KAYIT PANELİ KODLARI
    public partial class KayıtPanel : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayıt_Click(object sender, EventArgs e)
        {
            //Buradan kullanıcının girdiği parametreleri up_kayit sp si le veritabanına kayıt eder...
            //Sonrada anasayfaya yönlendirir...

            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_kayit", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.Add("@mstAd", SqlDbType.VarChar).Value = txtAd1.Text.ToString();
            komut.Parameters.Add("@mstSoyad", SqlDbType.VarChar).Value = txtSoyad1.Text.ToString();
            komut.Parameters.Add("@mstTelNo", SqlDbType.VarChar).Value = txtNumara1.Text.ToString();
            komut.Parameters.Add("@mstKullaniciAd", SqlDbType.VarChar).Value = txtKullaniciAd1.Text.ToString();
            komut.Parameters.Add("@mstSifre", SqlDbType.VarChar).Value = txtSifre1.Text.ToString();
            komut.Parameters.Add("@mstMail", SqlDbType.VarChar).Value = txtMail1.Text.ToString();
            
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("LoginPanel.Aspx");
        }
    }
}