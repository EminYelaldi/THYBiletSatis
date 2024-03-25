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
    //ADMİN BİLET PANELİ KODLARI
    public partial class AdminBilet : System.Web.UI.Page
    {
        //Bağlantının değiştireleceği yer...
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Adminin seçtiği bileti gridview tablosundan iptal edebildiği bölüm...

            int BiletId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_biletIptal", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@BiletID", BiletId);

            int t = komut.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data Başarıyla Silindi!')</script>");
                GridView1.EditIndex = -1;
            }
            baglanti.Close();
            gvbind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Adminin seçtiği bileti editleyebildiği bölüm... 
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Adminin seçtiği biletin editini güncelleyebildiği bölüm... 

            int BiletId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string Nereden = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string Nereye = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            DateTime UcusTarih = Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
            string Kalkis = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string Varis = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string KoltukNo = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string Tutar = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

            baglanti.Open();
            SqlCommand komut = new SqlCommand("up_biletGuncelle", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@BiletID", BiletId);
            komut.Parameters.AddWithValue("@UcusTarih", UcusTarih);
            komut.Parameters.AddWithValue("@UcusSaat", Kalkis);
            komut.Parameters.AddWithValue("@VarisSaat", Varis);
            komut.Parameters.AddWithValue("@UcusTutar", Tutar);
            komut.Parameters.AddWithValue("@UcusKoltuk", KoltukNo);
            komut.Parameters.AddWithValue("@Nereden", Nereden);
            komut.Parameters.AddWithValue("@Nereye", Nereye);
            int t = komut.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data Başarıyla Güncellendi!')</script>");
                GridView1.EditIndex = -1;
            }
            baglanti.Close();
            gvbind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Adminin seçtiği biletin editini iptal edebildiği bölüm... 
            GridView1.EditIndex = -1;
            gvbind();
        }

        protected void gvbind()
        {
            //Biletlerin getirildiği bölüm...
            SqlCommand komut = new SqlCommand("SELECT * FROM dbo.adminBiletGetir()", baglanti);
            baglanti.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(komut);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Adminin gridview tablosundan seçtiği bileti kontrol etmek için seçtiği bölüm...
            gvbind();
            GridViewRow gr = GridView1.SelectedRow;
            Session["BiletID"] = gr.Cells[0].Text;
            Session["Nereden"] = gr.Cells[1].Text;
            Session["Nereye"] = gr.Cells[2].Text;
            Session["Tarih"] = gr.Cells[3].Text;
            Session["Kalkis"] = gr.Cells[4].Text;
            Session["Varis"] = gr.Cells[5].Text;
            Session["KoltukNo"] = gr.Cells[6].Text;
            Session["Tutar"] = gr.Cells[7].Text;


            Response.Redirect("AdminBiletKontrol.aspx");
        }
    }
}