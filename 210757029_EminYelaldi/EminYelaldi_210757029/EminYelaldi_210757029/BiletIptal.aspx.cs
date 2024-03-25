using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EminYelaldi_210757029
{
    public partial class BiletIptal : System.Web.UI.Page
    {
        //Bağlantinin değiştireleceği yer..
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Bilet ID ler eşleşiyorsa bileti silebilecek bölüm
            try
            {

                SqlCommand komut = new SqlCommand("up_biletIptal", baglanti);
                komut.CommandType = CommandType.StoredProcedure;
                baglanti.Open();
                komut.Parameters.AddWithValue("@BiletID", TxtIptal.Text);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(komut);
                sda.Fill(dt);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Write("Biletiniz İptal Edilmiştir!");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}