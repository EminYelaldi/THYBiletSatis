using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EminYelaldi_210757029
{
    public partial class BiletTablosu : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Girilen kullanıcı adına özel müşterinin aldığı biletlerin bilgilerini getiren bölüm....
            //Bu bilgiler gridview tablosunda listelernir...
            
            SqlCommand komut = new SqlCommand("SELECT * FROM dbo.ozelBiletGetir(@KullaniciAdi)", baglanti);
            Label1.Text = Convert.ToString(Session["KullaniciAdi"]);
            baglanti.Open();
            komut.Parameters.AddWithValue("@KullaniciAdi", Label1.Text.ToString());
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            baglanti.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Burada gridview tablosunda bulunan müşteriye ait biletleri müşteri incelemek isterse
            //buradaki kod onu aldığı biletin görsel haline götürmesine ve incelemesini sağlar...

            GridViewRow gr = GridView1.SelectedRow;
            Session["BiletID"] = gr.Cells[0].Text;
            Session["UcusID"] = gr.Cells[1].Text;
            Session["KullaniciAd"] = gr.Cells[2].Text;
            Session["Nereden"] = gr.Cells[3].Text;
            Session["Nereye"] = gr.Cells[4].Text;
            Session["Tarih"] = gr.Cells[5].Text;
            Session["Kalkis"] = gr.Cells[6].Text;
            Session["Varis"] = gr.Cells[7].Text;
            Session["KoltukNo"] = gr.Cells[8].Text;
            Session["Tutar"] = gr.Cells[9].Text;


            Response.Redirect("Biletlerim.aspx");
        }
    }
}