using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.DynamicData;

namespace EminYelaldi_210757029
{
    
    public partial class BiletBilgileri : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //İlk önce kullanıcının girdiği kullanıcı adı sonra girilen uçuş bilgileri ve son olarak seçilen koltuğun
            //koltuk numarasındaki bilgiler session yardımıyla çağırılmıştır...

            Random rnd = new Random();
            int BiletID = rnd.Next(0, 1001);
            LblUcusID.Text = Convert.ToString(Session["UcusID"]);
            LblNereden.Text = Convert.ToString(Session["Nereden"]);
            LblNereye.Text = Convert.ToString(Session["Nereye"]);
            LblTarih.Text = Convert.ToString(Session["Tarih"]);
            LblKalkis.Text = Convert.ToString(Session["Kalkis"]);
            LblVaris.Text = Convert.ToString(Session["Varis"]);
            LblTutar.Text = Convert.ToString(Session["Tutar"]);
            LblBiletID.Text = BiletID.ToString();
            LblKullanici.Text = Convert.ToString(Session["KullaniciAdi"]);

            int[] koltuklar = (int[])Session["secilenKoltuk"];
            String alinanKoltuk = "";
            int i = 0;
            for (i = 0; i < 24; i++)
            {
                if (koltuklar[i] == 1)
                {
                    alinanKoltuk = alinanKoltuk + " " + (i + 1);
                }
            }
            LblKoltuk.Text = alinanKoltuk;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Gösterilen bilgiler up_biletbilgi sp si ile BiletID siyle beraber Tbl_BiletDetay tablosuna taşınır...

            SqlCommand komut = new SqlCommand("up_biletBilgi", baglanti);
            DateTime tarih = Convert.ToDateTime(LblTarih.Text);
            DateTime kalkis = Convert.ToDateTime(LblKalkis.Text);
            DateTime varis = Convert.ToDateTime(LblVaris.Text);

            baglanti.Open();
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@UcusID", LblUcusID.Text).ToString();
            komut.Parameters.AddWithValue("@KullaniciAdi", LblKullanici.Text).ToString();
            komut.Parameters.AddWithValue("@UcusTarih", tarih);
            komut.Parameters.AddWithValue("@UcusSaat", kalkis);
            komut.Parameters.AddWithValue("@VarisSaat", varis);
            komut.Parameters.AddWithValue("@UcusTutar", LblTutar.Text).ToString();
            komut.Parameters.AddWithValue("@UcusKoltuk", LblKoltuk.Text.ToString());
            komut.Parameters.AddWithValue("@Nereden", LblNereden.Text.ToString());
            komut.Parameters.AddWithValue("@Nereye", LblNereye.Text.ToString());
            komut.Parameters.AddWithValue("@BiletID", LblBiletID.Text.ToString());
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            baglanti.Close();
            Response.Write("<script>confirm('Biletiniz başarıyla kayıt edilmiştir.')</script>");
            Response.Redirect("AnaSayfa.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Burada da eğer bileti iptal etmek istiyorsanız sizi anasayfaya kaydetmeden geri atar...
            Response.Redirect("AnaSayfa.aspx");
        }
    }
}