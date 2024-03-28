using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_grupaV_IT
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListItem predmet1= new ListItem("Интернет Технологии","Проф.д-р Гоце Арменски");
                ListItem predmet2 = new ListItem("Интернет", "Димитар Китаноски");
                ListItem predmet3 = new ListItem("Дигитална Електроника", "Влатко Спасев");

                ListItem kredit1 = new ListItem("6", "6");
                ListItem kredit2 = new ListItem("5.5", "5.5");
                ListItem kredit3 = new ListItem("5.5", "5.5");
                
                lbPredmeti.Items.Add(predmet1);
                lbPredmeti.Items.Add (predmet2);
                lbPredmeti.Items.Add (predmet3);

                lblKrediti.Items.Add(kredit1);
                lblKrediti.Items.Add(kredit2);
                lblKrediti.Items.Add(kredit3);
            }
        }

        protected void lbPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text =lbPredmeti.SelectedValue;
            lbPredmeti.SelectedIndex=lbPredmeti.SelectedIndex;

        }

        protected void lblKrediti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text=lbPredmeti.SelectedValue;
            lblKrediti.SelectedIndex=lblKrediti.SelectedIndex;
        }

        protected void KopceGlasaj_Click(object sender, EventArgs e)
        {
            if (lbPredmeti.SelectedIndex == -1)
            {
                undefined_glasanje.Text = "<span style='color: red;'>Одберете предмет!</span>";

            }
            else
            {
                Response.Redirect("uspeshnoglasanje.aspx");
            }

        }

        protected void Dodadi_Click(object sender, EventArgs e)
        {
            

            ListItem novPredmet=new ListItem(predmet_vnesuvanje.Text,predmet_vnesuvanje.Text);
            lbPredmeti.Items.Add(novPredmet);

            ListItem noviKrediti = new ListItem(krediti_vnesuvanje.Text, krediti_vnesuvanje.Text);
            lblKrediti.Items.Add(noviKrediti);

            //predmet_vnesuvanje.Text = "";
            //krediti_vnesuvanje.Text = ""; за ресетирање на вредности
        }

        protected void Izbrisi_Click(object sender, EventArgs e)
        {
            if(lbPredmeti.SelectedIndex == -1)
            {
               
                izbrisan.Text = "Изберете предмет кој сакате да го избришите";
                
            }
            else
            {
                lbPredmeti.Items.RemoveAt(lbPredmeti.SelectedIndex);
                lblKrediti.Items.RemoveAt(lblKrediti.SelectedIndex);
                lblProfesor.Text = "";
            }
        }
    }
}