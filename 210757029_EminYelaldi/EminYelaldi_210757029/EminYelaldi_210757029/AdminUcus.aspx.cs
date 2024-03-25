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
    //ADMİN UÇUŞ PANELİ KODLARI

    public partial class AdminUcus : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gcbind();
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Adminin seçtiği uçuşu gridview tablosundan iptal edebildiği bölüm... 

            int UcusID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_ucusIptal", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@UcusID", UcusID);

            int t = komut.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data Başarıyla Silindi!')</script>");
                GridView1.EditIndex = -1;
            }
            baglanti.Close();
            gcbind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Adminin seçtiği uçuşu editleyebildiği bölüm... 

            GridView1.EditIndex = e.NewEditIndex;
            gcbind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Adminin seçtiği uçuşun editini iptal edebildiği bölüm... 

            GridView1.EditIndex = -1;
            gcbind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Adminin seçtiği uçuşun editini güncelleyebildiği bölüm... 

            int UcusID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string Nereden = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string Nereye = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            DateTime UcusTarih = Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
            string Kalkis = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string Varis = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string Tutar = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;

            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_ucusGuncelle", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@UcusID", UcusID);
            komut.Parameters.AddWithValue("@UcusTarih", UcusTarih);
            komut.Parameters.AddWithValue("@UcusSaat", Kalkis);
            komut.Parameters.AddWithValue("@VarisSaat", Varis);
            komut.Parameters.AddWithValue("@UcusTutar", Tutar);
            komut.Parameters.AddWithValue("@Nereden", Nereden);
            komut.Parameters.AddWithValue("@Nereye", Nereye);
            int t = komut.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Uçuş Başarıyla Güncellendi!')</script>");
                GridView1.EditIndex = -1;
            }
            baglanti.Close();
            gcbind();
        }

        protected void gcbind()
        {
            //Uçuşların getirildiği bölüm...
            SqlCommand komut = new SqlCommand("SELECT * FROM dbo.ucusGetir()", baglanti);
            baglanti.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = Calendar1.SelectedDate;
            TxtTarih.Text = dt.ToString("yyyy/MM/dd");
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //up_ucusEkle sp siyle adminin gridview tablosuna uçuş eklediği bölüm...

            SqlCommand komut = new SqlCommand("up_ucusEkle", baglanti);

            DateTime kalkis = Convert.ToDateTime(TxtKalkis.Text);
            DateTime varis = Convert.ToDateTime(TxtVaris.Text);
            DateTime tarih = Convert.ToDateTime(TxtTarih.Text);
            baglanti.Open();
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@UcusID", TxtUcusID.Text);
            komut.Parameters.AddWithValue("@UcusTarih", tarih);
            komut.Parameters.AddWithValue("@UcusSaat", kalkis);
            komut.Parameters.AddWithValue("@VarisSaat", varis);
            komut.Parameters.AddWithValue("@UcusTutar", TxtTutar.Text);
            komut.Parameters.AddWithValue("@Nereden", TxtNereden.Text);
            komut.Parameters.AddWithValue("@Nereye", TxtNereye.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            Response.Write("<script>alert('Uçuş Başarıyla Eklendi!')</script>");

            baglanti.Close();
            gcbind();
        }
    }

}
