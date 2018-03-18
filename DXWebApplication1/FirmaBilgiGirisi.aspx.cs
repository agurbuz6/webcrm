using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DevExpress.XtraGrid;
using System.Data;
using System.Data.OracleClient;
namespace $safeprojectname$
{
    public partial class FirmaBilgiGirisi : System.Web.UI.Page
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
        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.MenuItemEventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();
      
            cmd=new OracleCommand( "Insert into FIRMA (FADI,ADRESI,YETKILI,TELNO ) values ('" + firmaadi.Text + "','" + adres.Text + "','" + yetkili.Text + "','" + tel.Text + "')",conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("FirmaBilgiGirisi.aspx");
        }

        protected void ASPxButton2_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            conn.Open();
            string sorgu = "Delete From FIRMA Where ID=:id";

            cmd = new OracleCommand(sorgu, conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView1.GetSelectedFieldValues("ID")[0].ToString());


            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("FirmaBilgiGirisi.aspx");
        }

        protected void firmabilgicek_Click(object sender, EventArgs e)
        {
           
            firmaadi.Text = ASPxGridView1.GetSelectedFieldValues("FADI")[0].ToString();
            adres.Text = ASPxGridView1.GetSelectedFieldValues("ADRESI")[0].ToString();
            yetkili.Text = ASPxGridView1.GetSelectedFieldValues("YETKILI")[0].ToString();
            tel.Text = ASPxGridView1.GetSelectedFieldValues("TELNO")[0].ToString();
            
        }

        protected void firmaguncelle_Click(object sender, EventArgs e)
        {
            conn = new OracleConnection(dbyol);
            
            string sorgu = "Update FIRMA set FADI=:ad,ADRESI=:adres,YETKILI=:yetkili,TELNO=:tel Where ID=@id ";
            OracleDataAdapter da = new OracleDataAdapter("Select *from FIRMA", conn);

            da.UpdateCommand = new OracleCommand(sorgu, conn);
            //da.UpdateCommand.Parameters.Add(":ıd", OracleType.Number, 10, "md");

            da.UpdateCommand.Parameters.Add(":ad", OracleType.VarChar, 20, "FADI");

            da.UpdateCommand.Parameters.Add(":adres", OracleType.VarChar, 20, "ADRESI");

            da.UpdateCommand.Parameters.Add(":yetkili", OracleType.VarChar, 20, "YETKILI");

            da.UpdateCommand.Parameters.Add(":tel", OracleType.VarChar, 10, "TELNO");



            conn.Open();

            cmd = new OracleCommand("Delete From FIRMA Where ID = :id", conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView1.GetSelectedFieldValues("ID")[0].ToString());



            cmd.ExecuteNonQuery();

            DataSet ds = new DataSet();
            OracleCommandBuilder orac = new OracleCommandBuilder(da);

            da.Fill(ds, "FIRMA");


            DataTable dt = ds.Tables["FIRMA"];

            DataRow crow = dt.NewRow();

            crow["ID"] = ASPxGridView1.GetSelectedFieldValues("ID")[0].ToString();
            crow["FADI"] = firmaadi.Text;
            crow["ADRESI"] = adres.Text;
            crow["YETKILI"] = yetkili.Text;


            crow["TELNO"] = tel.Text;
            

            ds.Tables["FIRMA"].Rows.Add(crow);


            da.Update(ds, "FIRMA");
            
            conn.Close();
            Response.Redirect("FirmaBilgiGirisi.aspx");
        }

        protected void firmaara_Click(object sender, EventArgs e)
        {
            if (ASPxRadioButtonList1.SelectedIndex.Equals(0))
            {
                conn = new OracleConnection(dbyol);
                conn.Open();

                string sorgu = "Select * from FIRMA where FADI Like '" + ASPxTextBox1.Text + "%'";
                DataSet ds = new DataSet();
                OracleDataAdapter adap = new OracleDataAdapter(sorgu, conn);
                DataTable tablo = new DataTable();

                ASPxGridView1.DataSourceID = null;

                adap.Fill(tablo);
                ASPxGridView1.DataSource = tablo;
                ASPxGridView1.DataBind();

                conn.Close();
            }
            else if (ASPxRadioButtonList1.SelectedIndex.Equals(1))
            {
                conn = new OracleConnection(dbyol);
                conn.Open();

                string sorgu = "Select * from FIRMA where YETKILI Like '" + ASPxTextBox1.Text + "%'";
                DataSet ds = new DataSet();
                OracleDataAdapter adap = new OracleDataAdapter(sorgu, conn);
                DataTable tablo = new DataTable();

                ASPxGridView1.DataSourceID = null;

                adap.Fill(tablo);
                ASPxGridView1.DataSource = tablo;
                ASPxGridView1.DataBind();

                conn.Close();
            }
          
        }
    }
}