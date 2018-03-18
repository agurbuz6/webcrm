using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using DevExpress.XtraGrid;

using System.Data.OracleClient;






namespace $safeprojectname$
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string dbyol = "Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)"
           + "(HOST=Ahmet-Asus)(PORT=1521)))(CONNECT_DATA=(SERVER=Ahmet-Asus)))"
           + ";User Id=ahmet;Password=852654;";
        OracleConnection conn;
        OracleCommand cmd;

        OracleDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
           // bilgicek();
        }
       
        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
                    conn.Open();
                    cmd = new OracleCommand("insert into tablems (mtcno,mad,msoyad,mtelno,madres) values ('"  + tc.Text + "','" + adi.Text + "','" + soyadi.Text + "','" + tel.Text + "','" + adres.Text + "')", conn);
    
          
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("MusteriKayit.aspx");
        }
        
        protected void sil_Click(object sender, EventArgs e)
        {

        






            conn = new OracleConnection(dbyol);
            conn.Open();
            
            cmd = new OracleCommand("Delete From tablems Where md = :md", conn);
            cmd.Parameters.AddWithValue(":md", ASPxGridView1.GetSelectedFieldValues("MD")[0].ToString());
            


            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("MusteriKayit.aspx");
        }
        /*public void bilgicek()
        {
            tc.Text=ASPxGridView1.GetSelectedFieldValues("musteritcno")[0].ToString();
        }*/

        protected void güncelle_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            string sql = "Update tablems set    mtcno=:tc,mad=:ad,msoyad=:soyad,mtelno=:tel,madres=:adres where md=:ıd ";

            OracleDataAdapter da = new OracleDataAdapter("Select *from tablems", conn);

            da.UpdateCommand = new OracleCommand(sql, conn);
          //da.UpdateCommand.Parameters.Add(":ıd", OracleType.Number, 10, "md");
            da.UpdateCommand.Parameters.Add(":tc", OracleType.VarChar, 20, "mtcno");
            da.UpdateCommand.Parameters.Add(":ad", OracleType.VarChar, 20, "mad");
            da.UpdateCommand.Parameters.Add(":soyad", OracleType.VarChar, 20, "msoyad");
            da.UpdateCommand.Parameters.Add(":tel", OracleType.VarChar, 10, "mtelno");
            da.UpdateCommand.Parameters.Add(":adres", OracleType.VarChar, 20, "madres");
            conn.Open();

            cmd = new OracleCommand("Delete From tablems Where md = :md", conn);
            cmd.Parameters.AddWithValue(":md", ASPxGridView1.GetSelectedFieldValues("MD")[0].ToString());

            cmd.ExecuteNonQuery();

            DataSet ds = new DataSet();
            OracleCommandBuilder orac = new OracleCommandBuilder(da);
           
            da.Fill(ds, "tablems");
            
           
               DataTable dt = ds.Tables["tablems"];

            DataRow crow =dt.NewRow();
            crow["md"] = ASPxGridView1.GetSelectedFieldValues("MD")[0].ToString();
                crow["mtcno"] = tc.Text;
                crow["mad"] = adi.Text;
                crow["msoyad"] = soyadi.Text;

                crow["mtelno"] = tel.Text;
                crow["madres"] = adres.Text;

                ds.Tables["tablems"].Rows.Add(crow);

            da.Update(ds,"tablems");

            conn.Close();
            Response.Redirect("MusteriKayit.aspx");
         

        }
       

        protected void cek_Click(object sender, EventArgs e)
        {
            id.Text = ASPxGridView1.GetSelectedFieldValues("MD")[0].ToString();
            tc.Text = ASPxGridView1.GetSelectedFieldValues("MTCNO")[0].ToString();
            adi.Text = ASPxGridView1.GetSelectedFieldValues("MAD")[0].ToString();
            soyadi.Text = ASPxGridView1.GetSelectedFieldValues("MSOYAD")[0].ToString();
            tel.Text = ASPxGridView1.GetSelectedFieldValues("MTELNO")[0].ToString();
            adres.Text = ASPxGridView1.GetSelectedFieldValues("MADRES")[0].ToString();
        }

        protected void adi_TextChanged(object sender, EventArgs e)
        {

        }




  
    }
}