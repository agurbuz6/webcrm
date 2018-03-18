using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Linq;

using System.Data;
using System.Data.OleDb;

using System.Data.OracleClient;







namespace $safeprojectname$
{
    public partial class Admin : System.Web.UI.Page
    {

        string dbyol="Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)"
            + "(HOST=Ahmet-Asus)(PORT=1521)))(CONNECT_DATA=(SERVER=Ahmet-Asus)))"
            + ";User Id=ahmet;Password=852654;";

        OracleConnection conn;
        OracleCommand com,com2;
        OracleDataAdapter adap;
        DataTable table;

        public bool baglan()
        {
            try
            {
                conn = new OracleConnection(dbyol);
                conn.Open();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
     
        protected void Page_Load(object sender, EventArgs e)
        {


        }

    OracleConnection  OracleConnection1 = new OracleConnection("Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)"
            + "(HOST=Ahmet-Asus)(PORT=1521)))(CONNECT_DATA=(SERVER=Ahmet-Asus)))"
            + ";User Id=ahmet;Password=852654;"); 


        protected void ASPxButton1_Click(object sender, EventArgs e)
        {/*
            if (baglan()==true)
            {
                string sql = "Select* from ADMIN where ADI='" + adi.Text + "' AND SIFRE='" + sifre.Text + "'";
                string sql2 = "Select* from ADMIN";                
                com = new OracleCommand(sql2,conn);
                com2 = new OracleCommand(sql, conn);
               if(com.Connection ==com2.Connection )
                    Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Adınızı veya Şifrenizi hatalı girdiniz.Lütfen tekrar deneyiniz..');</script>");
            }
          * */
            OracleConnection1.Open();

            string sql = "Select* from ADMIN where ADI=:ad AND SIFRE=:sif";
            OracleParameter para = new OracleParameter(":ad", adi.Text.Trim());
            OracleParameter para2 = new OracleParameter(":sif", sifre.Text.Trim());
            OracleCommand kom = new OracleCommand(sql, OracleConnection1);
            kom.Parameters.Add(para);
            kom.Parameters.Add(para2);
            DataTable dt = new DataTable();
            OracleDataAdapter da = new OracleDataAdapter(kom);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Default.aspx");

            }
            else
            {
                Response.Write("<script>alert('Adınızı veya Şifrenizi hatalı girdiniz.Lütfen tekrar deneyiniz..');</script>");
            }
           







        }
    }
}