using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Linq;
using DevExpress.XtraGrid;
using System.Data.OracleClient;
using System.Data;

namespace $safeprojectname$
{
    public partial class CekBilgileri : System.Web.UI.Page
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
        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();
            cmd = new OracleCommand( "Insert into CK (FIRMA,VERTAR,VADETAR,BANKA,CEKNO,TUTAR,ACIK,CARINO,CEKTUR,DURUMU ) values ('" + firma.Text + "','" + cekvertar.Text + "','" + vadetar.Text + "','" + banka.Text + "','" + cekno.Text + "','" + tutar.Text + "','" + aciklama.Text + "','" + carino.Text + "','" + cekturu.Text + "','" + durum.Text + "')",conn);
            

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("CekBilgileri.aspx");
        }

        protected void ASPxButton3_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();
            string sorgu = "Delete From CK Where CEKID=:id";

            cmd = new OracleCommand(sorgu, conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView1.GetSelectedFieldValues("CEKID")[0].ToString());


            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("CekBilgileri.aspx");
        }

        protected void cekbilgicek_Click(object sender, EventArgs e)
        {
            firma.Text = ASPxGridView1.GetSelectedFieldValues("FIRMA")[0].ToString();
            cekvertar.Text = ASPxGridView1.GetSelectedFieldValues("VERTAR")[0].ToString();
            vadetar.Text = ASPxGridView1.GetSelectedFieldValues("VADETAR")[0].ToString();
            banka.Text = ASPxGridView1.GetSelectedFieldValues("BANKA")[0].ToString();
            cekno.Text = ASPxGridView1.GetSelectedFieldValues("CEKNO")[0].ToString();
            tutar.Text = ASPxGridView1.GetSelectedFieldValues("TUTAR")[0].ToString();
            aciklama.Text = ASPxGridView1.GetSelectedFieldValues("ACIK")[0].ToString();
            carino.Text = ASPxGridView1.GetSelectedFieldValues("CARINO")[0].ToString();
            cekturu.Text = ASPxGridView1.GetSelectedFieldValues("CEKTUR")[0].ToString();
            durum.Text = ASPxGridView1.GetSelectedFieldValues("DURUMU")[0].ToString();
        }

        protected void cekguncelle_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            
            string sorgu = "Update CK set FIRMA=:fir,VERTAR=:vertar,VADETAR=:vadetar,BANKA=:bank,CEKNO=:cekno,TUTAR=:tut,ACIK=:acik,CARINO=:carino,CEKTUR=:cektur,DURUMU=:durum Where CEKID=:id ";
            OracleDataAdapter da = new OracleDataAdapter("Select *from CK", conn);

            da.UpdateCommand = new OracleCommand(sorgu, conn);
            
            da.UpdateCommand.Parameters.Add("@fir", firma.Text);
            da.UpdateCommand.Parameters.Add("@vertar", cekvertar.Text);
            da.UpdateCommand.Parameters.Add("@vadetar", vadetar.Text);
            da.UpdateCommand.Parameters.Add("@bank", banka.Text);
            da.UpdateCommand.Parameters.Add("@cekno", cekno.Text);
            da.UpdateCommand.Parameters.Add("@tut", tutar.Text);
            da.UpdateCommand.Parameters.Add("@acik", aciklama.Text);
            da.UpdateCommand.Parameters.Add("@carino", carino.Text);
            da.UpdateCommand.Parameters.Add("@cektur", cekturu.Text);
            da.UpdateCommand.Parameters.Add("@durum", durum.Text);

            conn.Open();


            cmd = new OracleCommand("Delete From CK Where CEKID = :id", conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView1.GetSelectedFieldValues("CEKID")[0].ToString());
            cmd.ExecuteNonQuery();
            DataSet ds = new DataSet();
            OracleCommandBuilder orac = new OracleCommandBuilder(da);

            da.Fill(ds, "CK");


            DataTable dt = ds.Tables["CK"];

            DataRow crow = dt.NewRow();

            crow["CEKID"] = ASPxGridView1.GetSelectedFieldValues("CEKID")[0].ToString();
            crow["FIRMA"] = firma.Text;
            crow["VERTAR"] = cekvertar.Text;
            crow["VADETAR"] = vadetar.Text;


            crow["BANKA"] = banka.Text;
            crow["CEKNO"] = cekno.Text;

            crow["TUTAR"] = tutar.Text;
            crow["ACIK"] = aciklama.Text;

            crow["CARINO"] = carino.Text;
            crow["CEKTUR"] = cekturu.Text;
            crow["DURUMU"] = durum.Text;

            ds.Tables["CK"].Rows.Add(crow);





            da.Update(ds, "CK");
            conn.Close();
            Response.Redirect("CekBilgileri.aspx");
        }

       
    }
}