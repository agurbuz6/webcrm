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
    public partial class PersonelArama : System.Web.UI.Page
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
        protected void ara_Click(object sender, EventArgs e)
        {
            
            if (ASPxRadioButtonList1.SelectedIndex.Equals(0))
            {

                conn = new OracleConnection(dbyol);
             
                conn.Open();
                int srg = int.Parse(ASPxTextBox1.Text);
                string sorgu = "Select * from STAFF where STC Like '" + srg + "%'";
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
                
                string sorgu = "Select * from STAFF where SADI Like '" + ASPxTextBox1.Text + "%'";
                DataSet ds = new DataSet();
                OracleDataAdapter adap = new OracleDataAdapter(sorgu, conn);
                DataTable tablo = new DataTable();

                ASPxGridView1.DataSourceID = null;

                adap.Fill(tablo);
                ASPxGridView1.DataSource = tablo;
                ASPxGridView1.DataBind();

                conn.Close();
            }
            else if (ASPxRadioButtonList1.SelectedIndex.Equals(2))
            {
                conn = new OracleConnection(dbyol);

                conn.Open();
               

                string sorgu = "Select * from STAFF  where SSOYADI Like '" + ASPxTextBox1.Text + "%'";
                DataSet ds = new DataSet();
          OracleDataAdapter adap = new OracleDataAdapter(sorgu, conn);
                DataTable tablo = new DataTable();

                ASPxGridView1.DataSourceID = null;

                adap.Fill(tablo);
                ASPxGridView1.DataSource = tablo;
                ASPxGridView1.DataBind();

                conn.Close();
            }
            else if (ASPxRadioButtonList1.SelectedIndex.Equals(3))
            {


                conn = new OracleConnection(dbyol);

                conn.Open();
               
                
                string sorgu = "Select *from  STAFF where SGOREVI Like '" + ASPxTextBox1.Text + "%'";
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