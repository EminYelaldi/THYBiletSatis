using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EminYelaldi_210757029
{
    //LOGİN PANELİ KODLARI
    public partial class Login : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer... 
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

         protected void Button1_Click(object sender, EventArgs e)
         {
            //Tbl_Musterideki tablodaki kayıt olan kullanıcı adı ve şifreyi girdiğimizde up_login sp si bunları eşler
            //ve eşlenen bilgiler doğrulandığında ana sayfaya aktarılır....

            SqlCommand komut = new SqlCommand("up_Login", baglanti);
            baglanti.Open();
             komut.CommandType = CommandType.StoredProcedure;
             komut.Parameters.AddWithValue("@KullaniciAdi", TxtKullaniciAdi1.Text.ToString());
             komut.Parameters.AddWithValue("@Sifre1", TxtSifre1.Text.ToString());
             DataTable dt = new DataTable();
             int sonuc =(Int32)komut.ExecuteScalar();

            //Eğer kullanıcı adı veya şifre yanlışsa tekrardan girmesini ister...
             if (sonuc ==1)
             {
                //Session ile müşterinin girdiği kullanıcı adı kayıt olur...
                Session["KullaniciAdi"] = TxtKullaniciAdi1.Text;
                Response.Redirect("AnaSayfa.aspx");
             }
             else
             {
                Label4.Text = "Yanlış Kullanıcı adı veya Şifre";
            }
            baglanti.Close();


        }


    }

}