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
    //ANA SAYFA EKRANI KODLAR

    public partial class AnaSayfa : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Burada nereden nereye ve hangi tarihte bir yere gitmek istiyorsak o bilgileri giriyoruz.
            //Sonra up_ucusBul sp si bu girilen bilgilere göre Tbl_Ucus tablosundaki ucuşları getirir.
            //Böylece kullanıcının istediği uçuşlar gridview yardımıyla ekrana gelir.

            SqlCommand komut = new SqlCommand("up_ucusBul", baglanti);
            DateTime tarih = Convert.ToDateTime(TxtTarih.Text);
            baglanti.Open();


            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@Nereden", DrpNereden.Text);
            komut.Parameters.AddWithValue("@Nereye", DrpNereye.Text);
            komut.Parameters.AddWithValue("@Tarih", tarih);

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();



            baglanti.Close();

        }


        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Burada gridviewda seçilen uçuşa ait bilgiler session yardımıyla kayıt edilir...

            GridViewRow gr = GridView3.SelectedRow;

            Session["UcusID"] = gr.Cells[0].Text;
            Session["Nereden"] = gr.Cells[1].Text;
            Session["Nereye"] = gr.Cells[2].Text;
            Session["Tarih"] = gr.Cells[3].Text;
            Session["Kalkis"] = gr.Cells[4].Text;
            Session["Varis"] = gr.Cells[5].Text;
            Session["Tutar"] = gr.Cells[6].Text;

            //Bilgiler kayıt edildikten sonra koltuk seçimi ekranına gider...
            Response.Redirect("KoltukSecimi.aspx");

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //Tarih formatını belirlemek için yazılmış kod...

            DateTime dt = Calendar1.SelectedDate;
            TxtTarih.Text = dt.ToString("yyyy/MM/dd");
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Calendar1.Visible = true;
        }
    }
}