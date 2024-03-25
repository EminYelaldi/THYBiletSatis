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
    //ŞİFREMİ UNUTTUM PANELİ KODLARI
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Kullanıcı eğer şifresini unuttuysa up_sifremiUnuttum sp si ile kullanıcı
            //mail ve yeni şifresinin girerek yeni şifresi artık o olur...
            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_sifremiUnuttum", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@Mail", txtMail.Text);
            komut.Parameters.AddWithValue("@Sifre", txtSifre.Text);

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            Response.Write("<script>confirm('Şifreniz Güncellenmiştir.')</script>");
           baglanti.Close();
            Response.Redirect("LoginPanel.aspx");


        }
    }
}