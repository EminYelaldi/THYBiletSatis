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
    //ADMİN MÜŞTERİ PANELİ KODLARI
    public partial class AdminMusteri : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gmbind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Adminin seçtiği müşteriyi gridview tablosundan iptal edebildiği bölüm... 

            int MusteriID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_musteriIptal", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@MusteriID", MusteriID);

            int t = komut.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Müşteri Başarıyla Silindi!')</script>");
                GridView1.EditIndex = -1;
            }
            baglanti.Close();
            gmbind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Adminin seçtiği müşteriyi editleyebildiği bölüm... 

            GridView1.EditIndex = e.NewEditIndex;
            gmbind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Adminin seçtiği müşterinin editini güncelleyebildiği bölüm... 

            int MusteriID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string MusteriAd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string MusteriSoyad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string MusteriKullaniciAd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string MusteriMail = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string MusteriTelefon = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string MusteriSifre = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string MusteriCinsiyet = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_musteriGuncelle", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@MusteriID", MusteriID);
            komut.Parameters.AddWithValue("@MusteriAd", MusteriAd);
            komut.Parameters.AddWithValue("@MusteriSoyad", MusteriSoyad);
            komut.Parameters.AddWithValue("@MusteriKullaniciAd", MusteriKullaniciAd);
            komut.Parameters.AddWithValue("@MusteriMail", MusteriMail);
            komut.Parameters.AddWithValue("@MusteriTelefon", MusteriTelefon);
            komut.Parameters.AddWithValue("@MusteriSifre", MusteriSifre);
            komut.Parameters.AddWithValue("@MusteriCinsiyet", MusteriCinsiyet);
            int t = komut.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Muşteri Başarıyla Güncellendi!')</script>");
                GridView1.EditIndex = -1;
            }
            baglanti.Close();
            gmbind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Adminin seçtiği müşterinin editini iptal edebildiği bölüm... 

            GridView1.EditIndex = -1;
            gmbind();
        }
        protected void gmbind()
        {
            //Müşterilerin getirildiği bölüm...

            SqlCommand komut = new SqlCommand("SELECT * FROM dbo.musteriGetir()", baglanti);
            baglanti.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}