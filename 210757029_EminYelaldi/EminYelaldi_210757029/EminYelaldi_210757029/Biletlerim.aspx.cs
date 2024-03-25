using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EminYelaldi_210757029
{
    //BİLETLERİM PANELİ KODLARI
    public partial class Biletlerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Bilet tablosundaki gridviewdaki seçilen biletin bilgileri session yardımıyla bu forma taşınır...

            LblBiletID.Text = Convert.ToString(Session["BiletID"]);
            LblNereden.Text = Convert.ToString(Session["Nereden"]);
            LblNereye.Text = Convert.ToString(Session["Nereye"]);
            LblTarih.Text = Convert.ToString(Session["Tarih"]);
            LblKalkis.Text = Convert.ToString(Session["Kalkis"]);
            LblVaris.Text = Convert.ToString(Session["Varis"]);
            LblTutar.Text = Convert.ToString(Session["Tutar"]);
            LblKoltuk.Text = Convert.ToString(Session["KoltukNo"]);
            LblKullanici.Text = Convert.ToString(Session["KullaniciAdi"]);
        }
    }
}