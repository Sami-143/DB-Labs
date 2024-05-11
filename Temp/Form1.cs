using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Windows.Forms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Temp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Define your connection string
                string connectionString = @"Data Source=(local);Initial Catalog=SentimentAnalysis;Integrated Security=True";

                // Create a SqlConnection
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the connection
                    connection.Open();

                    // Create a SqlCommand to execute your query
                    using (SqlCommand command = new SqlCommand("SELECT TOP 10 f.PostID as PosterID, u.Country,f.Caption FROM FB_Post f JOIN Fb_User u on f.UserID = u.UserID WHERE u.userid = @value", connection))
                    {
                        // Add parameters if needed
                        command.Parameters.AddWithValue("@value", 1004);

                        // Create a SqlDataAdapter to fill a DataTable with the query result
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            // Create a new instance of the CrystalReport
                            ReportDocument reportDocument = new ReportDocument();
                            string path = Application.StartupPath;
                            string reportpath = "D:/Study/Coding/C#/Projects/Temp/CrystalReport1.rpt";
                            string fpath = Path.Combine(path, reportpath);

                            // Load the report file
                            reportDocument.Load(fpath);

                            // Set the report's data source
                            reportDocument.SetDataSource(dataTable);

                            crystalReportViewer1.ReportSource = reportDocument;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("An error occurred: " + ex.Message);
            }
        }
    }
}
