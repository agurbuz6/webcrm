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
    public partial class PersonelBilgiGirisi : System.Web.UI.Page
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
        protected void ASPxButton3_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();
            cmd = new OracleCommand("insert into STAFF (SADI,SSOYADI,STC,SGOREVI) values ('" + adi.Text + "','" + soyadi.Text + "','" + tc.Text + "','" + görevi.Text + "')", conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("PersonelBilgiGirisi.aspx");
        }

        

        protected void ASPxButton5_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();

            cmd = new OracleCommand("Delete From STAFF Where SID = :id", conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView1.GetSelectedFieldValues("SID")[0].ToString());



            cmd.ExecuteNonQuery();
            conn.Close();
            
            Response.Redirect("PersonelBilgiGirisi.aspx");
        }

        protected void Bilgilericek_Click(object sender, EventArgs e)
        {
            adi.Text = ASPxGridView1.GetSelectedFieldValues("SADI")[0].ToString();
            soyadi.Text = ASPxGridView1.GetSelectedFieldValues("SSOYADI")[0].ToString();
            tc.Text = ASPxGridView1.GetSelectedFieldValues("STC")[0].ToString();
            görevi.Text = ASPxGridView1.GetSelectedFieldValues("SGOREVI")[0].ToString();
        }

        protected void personelguncelle_Click(object sender, EventArgs e)
        {

            conn = new OracleConnection(dbyol);
            string sql = "Update STAFF set    SADI=:ad,SSOYADI=:soyad,STC=:tc,SGOREVI=:gorev where SID=:id ";

            OracleDataAdapter da = new OracleDataAdapter("Select *from STAFF", conn);

            da.UpdateCommand = new OracleCommand(sql, conn);
            //da.UpdateCommand.Parameters.Add(":ıd", OracleType.Number, 10, "md");

            da.UpdateCommand.Parameters.Add(":ad", OracleType.VarChar, 20, "SAD");

            da.UpdateCommand.Parameters.Add(":soyad", OracleType.VarChar, 20, "SSOYADI");

            da.UpdateCommand.Parameters.Add(":tc", OracleType.VarChar, 10, "STC");

            da.UpdateCommand.Parameters.Add(":gorev", OracleType.VarChar, 20, "SGOREVI");



            conn.Open();


            cmd = new OracleCommand("Delete From STAFF Where SID = :id", conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView1.GetSelectedFieldValues("SID")[0].ToString());



            cmd.ExecuteNonQuery();




            DataSet ds = new DataSet();
            OracleCommandBuilder orac = new OracleCommandBuilder(da);

            da.Fill(ds, "STAFF");


            DataTable dt = ds.Tables["STAFF"];

            DataRow crow = dt.NewRow();

            crow["SID"] = ASPxGridView1.GetSelectedFieldValues("SID")[0].ToString();
            
            crow["SADI"] = adi.Text;
            crow["SSOYADI"] = soyadi.Text;


            crow["STC"] = tc.Text;
            crow["SGOREVI"] = görevi.Text;

            ds.Tables["STAFF"].Rows.Add(crow);


            da.Update(ds, "STAFF");

            conn.Close();

            Response.Redirect("PersonelBilgiGirisi.aspx");
        }
    }
}