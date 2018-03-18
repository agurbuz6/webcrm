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
    public partial class UrunSatisi : System.Web.UI.Page
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
            cmd = new OracleCommand("insert into URUNSATISI (UADI,MARKA,MODEL,SATFIY,ALFIY,MIKTAR,SATMIKTAR ) values ('" + genelad.Text + "','" + markaad.Text + "','" + modelad.Text + "','" + satisfiy.Text + "','" + alisfiy.Text + "','" + miktar.Text + "','" + satismikt.Text + "')", conn);


            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("UrunSatisi.aspx");
        }

        protected void ASPxButton2_Click(object sender, EventArgs e)
        {

            conn = new OracleConnection(dbyol);
            conn.Open();

            cmd = new OracleCommand("Delete From URUNSATISI Where ID = :id", conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView2.GetSelectedFieldValues("ID")[0].ToString());



            cmd.ExecuteNonQuery();
            conn.Close();
           
            Response.Redirect("UrunSatisi.aspx");
        }

        protected void uruncek_Click(object sender, EventArgs e)
        {
            genelad.Text = ASPxGridView2.GetSelectedFieldValues("UADI")[0].ToString();
            markaad.Text = ASPxGridView2.GetSelectedFieldValues("MARKA")[0].ToString();
            modelad.Text = ASPxGridView2.GetSelectedFieldValues("MODEL")[0].ToString();
            satisfiy.Text = ASPxGridView2.GetSelectedFieldValues("SATFIY")[0].ToString();
            alisfiy.Text = ASPxGridView2.GetSelectedFieldValues("ALFIY")[0].ToString();
            miktar.Text = ASPxGridView2.GetSelectedFieldValues("MIKTAR")[0].ToString();
            satismikt.Text = ASPxGridView2.GetSelectedFieldValues("SATMIKTAR")[0].ToString();
          
        }

        protected void guncelle_Click(object sender, EventArgs e)
        {

            conn = new OracleConnection(dbyol);
            string sql = "Update URUNSATISI set   UADI=:genad,MARKA=:markad,MODEL=:modad,SATFIY=:satfiy,ALFIY=:alfiy,MIKTAR=:mikt,SATMIKTAR=:satmikt Where ID=:id ";

            OracleDataAdapter da = new OracleDataAdapter("Select *from URUNSATISI", conn);

            da.UpdateCommand = new OracleCommand(sql, conn);
            //da.UpdateCommand.Parameters.Add(":ıd", OracleType.Number, 10, "md");

            da.UpdateCommand.Parameters.Add(":genad", OracleType.VarChar, 20, "UAD");

            da.UpdateCommand.Parameters.Add(":markad", OracleType.VarChar, 20, "MARKA");

            da.UpdateCommand.Parameters.Add(":modad", OracleType.VarChar, 20, "MODEL");

            da.UpdateCommand.Parameters.Add(":satfiy", OracleType.VarChar, 20, "SATFIY");

            da.UpdateCommand.Parameters.Add(":alfiy", OracleType.VarChar, 20, "ALFIY");
            da.UpdateCommand.Parameters.Add(":mikt", OracleType.VarChar, 20, "MIKTAR");
            da.UpdateCommand.Parameters.Add(":satmikt", OracleType.VarChar, 20, "SATMIKTAR");



            conn.Open();


            cmd = new OracleCommand("Delete From URUNSATISI Where ID = :id", conn);
            cmd.Parameters.AddWithValue(":id", ASPxGridView2.GetSelectedFieldValues("ID")[0].ToString());



            cmd.ExecuteNonQuery();




            DataSet ds = new DataSet();
            OracleCommandBuilder orac = new OracleCommandBuilder(da);

            da.Fill(ds, "URUNSATISI");


            DataTable dt = ds.Tables["URUNSATISI"];

            DataRow crow = dt.NewRow();










            crow["ID"] = ASPxGridView2.GetSelectedFieldValues("ID")[0].ToString();
            crow["UADI"] = genelad.Text;
            crow["MARKA"] = markaad.Text;
            crow["MODEL"] = modelad.Text;


            crow["SATFIY"] = satisfiy.Text;
            crow["ALFIY"] = alisfiy.Text;
            crow["MIKTAR"] = miktar.Text;
            crow["SATMIKTAR"] = satismikt.Text;

            ds.Tables["URUNSATISI"].Rows.Add(crow);





            da.Update(ds, "URUNSATISI");




            conn.Close();

           
            Response.Redirect("UrunSatisi.aspx");
        }
    }
}