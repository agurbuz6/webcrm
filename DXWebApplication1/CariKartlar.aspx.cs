using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Linq;
using System.Data.SqlClient;

using DevExpress.XtraGrid;
using System.Data.OracleClient;
using System.Data.OracleClient;
using System.Data.OleDb;
using System.Data;




namespace $safeprojectname$
{
    public partial class CariKartlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string dbyol = "Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)"
        + "(HOST=Ahmet-Asus)(PORT=1521)))(CONNECT_DATA=(SERVER=Ahmet-Asus)))"
        + ";User Id=ahmet;Password=852654;";
        OracleConnection conn;
        OracleCommand cmd;

        OracleDataAdapter da;





        protected void ASPxTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);


  
            conn.Open();
            string SORGU="Insert into CURRENTS  (CTAR,CSTAFF,CISLEM,CAL,CVER,CACIK) values ('" + tarih.Text + "','" + firma.Text + "','" + islem.Text + "','" + alinan.Text + "','" + verilen.Text + "','" + aciklama.Text + "')";

        

           cmd = new OracleCommand(SORGU,conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("CariKartlar.aspx");
        }

        protected void ASPxButton2_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();
            string sorgu = "Delete From CURRENTS Where CID=:ıd";

            cmd = new OracleCommand(sorgu, conn);
            cmd.Parameters.AddWithValue(":ıd", ASPxGridView1.GetSelectedFieldValues("CID")[0].ToString());


            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("CariKartlar.aspx");
        }

        protected void caricek_Click(object sender, EventArgs e)
        {
            tarih.Text = ASPxGridView1.GetSelectedFieldValues("CTAR")[0].ToString();
            firma.Text = ASPxGridView1.GetSelectedFieldValues("CSTAFF")[0].ToString();
            islem.Text = ASPxGridView1.GetSelectedFieldValues("CISLEM")[0].ToString();
            alinan.Text = ASPxGridView1.GetSelectedFieldValues("CAL")[0].ToString();
            verilen.Text = ASPxGridView1.GetSelectedFieldValues("CVER")[0].ToString();
            aciklama.Text = ASPxGridView1.GetSelectedFieldValues("CACIK")[0].ToString();
        }

        protected void cariguncelle_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);

            string sorgu = "Update CURRENTS set CTAR=:tar,CSTAFF=:fir,CISLEM=:islem,CAL=:alin,CVER=:veril,CACIK=:acik Where CID=:id ";
            OracleDataAdapter da = new OracleDataAdapter("Select *from CURRENTS", conn);
            da.UpdateCommand = new OracleCommand(sorgu, conn);
            //da.UpdateCommand.Parameters.Add(":ıd", OracleType.Number, 10, "md");

            da.UpdateCommand.Parameters.Add(":tar", OracleType.NVarChar, 20, "CTAR");

            da.UpdateCommand.Parameters.Add(":fir", OracleType.NVarChar, 20, "CSTAFF");

            da.UpdateCommand.Parameters.Add(":islem", OracleType.NVarChar, 20, "CISLEM");

            da.UpdateCommand.Parameters.Add(":alin", OracleType.NVarChar, 20, "CAL");

            da.UpdateCommand.Parameters.Add(":veril", OracleType.NVarChar, 20, "CVER");
            da.UpdateCommand.Parameters.Add(":acik", OracleType.NVarChar, 20, "CACIK");




            conn.Open();


            cmd = new OracleCommand("Delete From CURRENTS Where CID= :ıd", conn);
            cmd.Parameters.AddWithValue(":ıd", ASPxGridView1.GetSelectedFieldValues("CID")[0].ToString());

            cmd.ExecuteNonQuery();
            
            DataSet ds = new DataSet();
            OracleCommandBuilder orac = new OracleCommandBuilder(da);
           
            da.Fill(ds, "CURRENTS");
            
           
               DataTable dt = ds.Tables["CURRENTS"];

            DataRow crow =dt.NewRow();


            crow["CID"] = ASPxGridView1.GetSelectedFieldValues("CID")[0].ToString();
                crow["CTAR"] =tarih.Text;
                crow["CSTAFF"] = firma.Text;
                crow["CISLEM"] = islem.Text;


                crow["CAL"] =alinan.Text;
                crow["CVER"] = verilen.Text;
                crow["CACIK"] = aciklama.Text;


                ds.Tables["CURRENTS"].Rows.Add(crow);



            
            
            da.Update(ds,"CURRENTS");
          
       

            conn.Close();
            Response.Redirect("CariKartlar.aspx");
        }

 

     
    }
}