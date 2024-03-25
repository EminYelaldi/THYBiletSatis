using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Drawing;

namespace EminYelaldi_210757029
{

    public partial class KoltukSecimi : System.Web.UI.Page
    {
        //Alınan ve alınacak koltukların statik int değerleri.... 
        static int[] bookedseat;
        static int[] tempbookseat;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                //Öncelikler her alınacak koltuk değerleri 0 olarak alınır...
                bookedseat = new int[24];
                tempbookseat = new int[24];
                tempbookseat[0] = 0;
                tempbookseat[1] = 0;
                tempbookseat[2] = 0;
                tempbookseat[3] = 0;
                tempbookseat[4] = 0;
                tempbookseat[5] = 0;
                tempbookseat[6] = 0;
                tempbookseat[7] = 0;
                tempbookseat[8] = 0;
                tempbookseat[9] = 0;
                tempbookseat[10] = 0;
                tempbookseat[11] = 0;
                tempbookseat[12] = 0;
                tempbookseat[13] = 0;
                tempbookseat[14] = 0;
                tempbookseat[15] = 0;
                tempbookseat[16] = 0;
                tempbookseat[17] = 0;
                tempbookseat[18] = 0;
                tempbookseat[19] = 0;
                tempbookseat[20] = 0;
                tempbookseat[21] = 0;
                tempbookseat[22] = 0;
                tempbookseat[23] = 0;

                //Alınmış koltuğun fonksiyonu
                alreadybooked();
            }
        }
        private void alreadybooked()
        {
            //Bağlantının değiştireleceği yer..
            SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");

            //Burada Tbl_Koltuktaki koltuk numaraları eğer durumu B yani doluysa o koltuğun kırmızı ve tıklanamaması
            //veya durumu A yani boşsa o koltuğun mavi ve tıklanabilmesi komutuu sağlar...
            String koltukKayit = "Select * from Tbl_Koltuk";
            SqlCommand komut = new SqlCommand();
            komut.CommandText = koltukKayit;
            komut.Connection = baglanti;
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = komut;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            int rows = ds.Tables[0].Rows.Count;
            int i = 0;

            //Her bir koltuğun durumunu B oluşunu tek tek kontrol eder...
            while (i < rows)
            {
                String durum;

                durum = ds.Tables[0].Rows[i]["Durum"].ToString();
                if (durum == "B")
                {
                    bookedseat[i] = 1;

                    if (i == 1)
                    {
                        Button1.BackColor = System.Drawing.Color.Red;
                        Button1.Enabled = false;
                    }
                    if (i == 2)
                    {
                        Button2.BackColor = System.Drawing.Color.Red;
                        Button2.Enabled = false;
                    }
                    if (i == 3)
                    {
                        Button4.BackColor = System.Drawing.Color.Red;
                        Button4.Enabled = false;
                    }
                    if (i == 4)
                    {
                        Button5.BackColor = System.Drawing.Color.Red;
                        Button5.Enabled = false;
                    }
                    if (i == 5)
                    {
                        Button6.BackColor = System.Drawing.Color.Red;
                        Button6.Enabled = false;
                    }
                    if (i == 6)
                    {
                        Button7.BackColor = System.Drawing.Color.Red;
                        Button7.Enabled = false;
                    }
                    if (i == 7)
                    {
                        Button8.BackColor = System.Drawing.Color.Red;
                        Button8.Enabled = false;
                    }
                    if (i == 8)
                    {
                        Button9.BackColor = System.Drawing.Color.Red;
                        Button9.Enabled = false;
                    }
                    if (i == 9)
                    {
                        Button10.BackColor = System.Drawing.Color.Red;
                        Button10.Enabled = false;
                    }
                    if (i == 10)
                    {
                        Button11.BackColor = System.Drawing.Color.Red;
                        Button11.Enabled = false;
                    }
                    if (i == 11)
                    {
                        Button12.BackColor = System.Drawing.Color.Red;
                        Button12.Enabled = false;
                    }
                    if (i == 12)
                    {
                        Button13.BackColor = System.Drawing.Color.Red;
                        Button13.Enabled = false;
                    }
                    if (i == 13)
                    {
                        Button14.BackColor = System.Drawing.Color.Red;
                        Button14.Enabled = false;

                    }
                    if (i == 14)
                    {
                        Button15.BackColor = System.Drawing.Color.Red;
                        Button15.Enabled = false;

                    }
                    if (i == 15)
                    {

                        Button16.BackColor = System.Drawing.Color.Red;
                        Button16.Enabled = false;
                    }
                    if (i == 16)
                    {

                        Button17.BackColor = System.Drawing.Color.Red;
                        Button17.Enabled = false;
                    }
                    if (i == 17)
                    {

                        Button18.BackColor = System.Drawing.Color.Red;
                        Button18.Enabled = false;
                    }
                    if (i == 18)
                    {

                        Button19.BackColor = System.Drawing.Color.Red;
                        Button19.Enabled = false;
                    }
                    if (i == 19)
                    {

                        Button20.BackColor = System.Drawing.Color.Red;
                        Button20.Enabled = false;
                    }
                    if (i == 20)
                    {

                        Button21.BackColor = System.Drawing.Color.Red;
                        Button21.Enabled = false;
                    }
                    if (i == 21)
                    {

                        Button22.BackColor = System.Drawing.Color.Red;
                        Button22.Enabled = false;
                    }
                    if (i == 22)
                    {

                        Button23.BackColor = System.Drawing.Color.Red;
                        Button23.Enabled = false;
                    }
                    if (i == 23)
                    {

                        Button24.BackColor = System.Drawing.Color.Red;
                        Button24.Enabled = false;
                    }
                }
                //Her bir koltuğun durumunu A oluşunu tek tek kontrol eder...
                if (durum == "A")
                {
                    bookedseat[i] = 0;

                    if (i == 0)
                    {
                        Button25.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 1)
                    {
                        Button1.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 2)
                    {
                        Button2.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 3)
                    {
                        Button4.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 4)
                    {
                        Button5.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 5)
                    {
                        Button6.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 6)
                    {
                        Button7.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 7)
                    {
                        Button8.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 8)
                    {
                        Button9.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 9)
                    {
                        Button10.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 10)
                    {
                        Button11.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 11)
                    {
                        Button12.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 12)
                    {
                        Button13.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 13)
                    {
                        Button14.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 14)
                    {
                        Button15.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 15)
                    {

                        Button16.BackColor = System.Drawing.Color.DeepSkyBlue;
                    }
                    if (i == 16)
                    {

                        Button17.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 17)
                    {

                        Button18.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 18)
                    {

                        Button19.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 19)
                    {

                        Button20.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 20)
                    {

                        Button21.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 21)
                    {

                        Button22.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 22)
                    {

                        Button23.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }
                    if (i == 23)
                    {

                        Button24.BackColor = System.Drawing.Color.DeepSkyBlue;

                    }

                }
                i++;
            }
        }

        //ONAYLAMA BUTONU
        protected void Button25_Click(object sender, EventArgs e)
        {
            //Butona basılınca seçilen koltuğun koltuk numarasına göre B yani dolu yapmasını sağlar...

            int i = 0;
            for (i = 0; i < 24; i++)
            {
                if (tempbookseat[i] == 1)
                {
                    //Bağlantının değiştireleceği yer..
                    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-9CHRP53;Initial Catalog=210757029_EminYelaldi;Integrated Security=True");
                    
                    //Koltuğun durumunu dolu yapan koltukDatası....
                    string koltukData = "UPDATE Tbl_Koltuk SET Durum = 'B' WHERE KoltukNo =" + (i + 1);
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand();
                    komut.CommandText = koltukData;
                    komut.Connection = baglanti;
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                }
            }
            //Seçilen koltuğun bilgisi session ile kaydedilir...
            Session["secilenKoltuk"] = tempbookseat;

            //Tüm işlem bittikten sonra bilet bilgileri sayfasına atar...
            Response.Redirect("BiletBilgileri.aspx");
        }

        //Her bir butonun herhangi birisinin üstüne tıklandğında tıklanan butonun koltuk no su alınır ve buton yeşile döner...
        //Eğer tekrardan tıklanırsa veya başka buton seçilirse o koltuk numarası silinip diğer koltuğun bilgsi alınır...
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tempbookseat[0] == 0)
            {
                Button1.BackColor = System.Drawing.Color.Green;
                tempbookseat[0] = 1;
            }
            else
            {
                Button1.BackColor = System.Drawing.Color.Gray;
                tempbookseat[0] = 0;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (tempbookseat[1] == 0)
            {
                Button2.BackColor = System.Drawing.Color.Green;
                tempbookseat[1] = 1;

            }
            else
            {
                Button2.BackColor = System.Drawing.Color.Gray;
                tempbookseat[1] = 0;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (tempbookseat[2] == 0)
            {
                Button3.BackColor = System.Drawing.Color.Green;
                tempbookseat[2] = 1;

            }
            else
            {
                Button3.BackColor = System.Drawing.Color.Gray;
                tempbookseat[2] = 0;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (tempbookseat[3] == 0)
            {
                Button4.BackColor = System.Drawing.Color.Green;
                tempbookseat[3] = 1;

            }
            else
            {
                Button4.BackColor = System.Drawing.Color.Gray;
                tempbookseat[3] = 0;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (tempbookseat[4] == 0)
            {
                Button5.BackColor = System.Drawing.Color.Green;
                tempbookseat[4] = 1;

            }
            else
            {
                Button5.BackColor = System.Drawing.Color.Gray;
                tempbookseat[4] = 0;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (tempbookseat[5] == 0)
            {
                Button6.BackColor = System.Drawing.Color.Green;
                tempbookseat[5] = 1;

            }
            else
            {
                Button6.BackColor = System.Drawing.Color.Gray;
                tempbookseat[5] = 0;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (tempbookseat[6] == 0)
            {
                Button7.BackColor = System.Drawing.Color.Green;
                tempbookseat[6] = 1;

            }
            else
            {
                Button7.BackColor = System.Drawing.Color.Gray;
                tempbookseat[6] = 0;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (tempbookseat[7] == 0)
            {
                Button8.BackColor = System.Drawing.Color.Green;
                tempbookseat[7] = 1;

            }
            else
            {
                Button8.BackColor = System.Drawing.Color.Gray;
                tempbookseat[7] = 0;
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (tempbookseat[8] == 0)
            {
                Button9.BackColor = System.Drawing.Color.Green;
                tempbookseat[8] = 1;

            }
            else
            {
                Button9.BackColor = System.Drawing.Color.Gray;
                tempbookseat[8] = 0;
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (tempbookseat[9] == 0)
            {
                Button10.BackColor = System.Drawing.Color.Green;
                tempbookseat[9] = 1;

            }
            else
            {
                Button10.BackColor = System.Drawing.Color.Gray;
                tempbookseat[9] = 0;
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (tempbookseat[10] == 0)
            {
                Button11.BackColor = System.Drawing.Color.Green;
                tempbookseat[10] = 1;

            }
            else
            {
                Button11.BackColor = System.Drawing.Color.Gray;
                tempbookseat[10] = 0;
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (tempbookseat[11] == 0)
            {
                Button12.BackColor = System.Drawing.Color.Green;
                tempbookseat[11] = 1;

            }
            else
            {
                Button12.BackColor = System.Drawing.Color.Gray;
                tempbookseat[11] = 0;
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            if (tempbookseat[12] == 0)
            {
                Button13.BackColor = System.Drawing.Color.Green;
                tempbookseat[12] = 1;

            }
            else
            {
                Button13.BackColor = System.Drawing.Color.Gray;
                tempbookseat[12] = 0;
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            if (tempbookseat[13] == 0)
            {
                Button14.BackColor = System.Drawing.Color.Green;
                tempbookseat[13] = 1;

            }
            else
            {
                Button14.BackColor = System.Drawing.Color.Gray;
                tempbookseat[13] = 0;
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            if (tempbookseat[14] == 0)
            {
                Button15.BackColor = System.Drawing.Color.Green;
                tempbookseat[14] = 1;

            }
            else
            {
                Button15.BackColor = System.Drawing.Color.Gray;
                tempbookseat[14] = 0;
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            if (tempbookseat[15] == 0)
            {
                Button16.BackColor = System.Drawing.Color.Green;
                tempbookseat[15] = 1;

            }
            else
            {
                Button16.BackColor = System.Drawing.Color.Gray;
                tempbookseat[15] = 0;
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            if (tempbookseat[16] == 0)
            {
                Button17.BackColor = System.Drawing.Color.Green;
                tempbookseat[16] = 1;

            }
            else
            {
                Button17.BackColor = System.Drawing.Color.Gray;
                tempbookseat[16] = 0;
            }
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            if (tempbookseat[17] == 0)
            {
                Button18.BackColor = System.Drawing.Color.Green;
                tempbookseat[17] = 1;

            }
            else
            {
                Button18.BackColor = System.Drawing.Color.Gray;
                tempbookseat[17] = 0;
            }
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            if (tempbookseat[18] == 0)
            {
                Button19.BackColor = System.Drawing.Color.Green;
                tempbookseat[18] = 1;

            }
            else
            {
                Button19.BackColor = System.Drawing.Color.Gray;
                tempbookseat[18] = 0;
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            if (tempbookseat[19] == 0)
            {
                Button20.BackColor = System.Drawing.Color.Green;
                tempbookseat[19] = 1;

            }
            else
            {
                Button20.BackColor = System.Drawing.Color.Gray;
                tempbookseat[19] = 0;
            }
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            if (tempbookseat[20] == 0)
            {
                Button21.BackColor = System.Drawing.Color.Green;
                tempbookseat[20] = 1;

            }
            else
            {
                Button21.BackColor = System.Drawing.Color.Gray;
                tempbookseat[20] = 0;
            }
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            if (tempbookseat[21] == 0)
            {
                Button22.BackColor = System.Drawing.Color.Green;
                tempbookseat[21] = 1;

            }
            else
            {
                Button22.BackColor = System.Drawing.Color.Gray;
                tempbookseat[21] = 0;
            }
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            if (tempbookseat[22] == 0)
            {
                Button23.BackColor = System.Drawing.Color.Green;
                tempbookseat[22] = 1;

            }
            else
            {
                Button23.BackColor = System.Drawing.Color.Gray;
                tempbookseat[22] = 0;
            }
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            if (tempbookseat[23] == 0)
            {
                Button24.BackColor = System.Drawing.Color.Green;
                tempbookseat[23] = 1;

            }
            else
            {
                Button24.BackColor = System.Drawing.Color.Gray;
                tempbookseat[23] = 0;
            }
        }
    }
}