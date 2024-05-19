using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Analytix_Hub
{
    public static class DatabaseValues
    {
        private static SqlConnection connect = new SqlConnection(@"Data Source=(local);Initial Catalog=Social App;Integrated Security=True");

        public static int FetchLookUpID(string data)
        {
            if (connect.State != ConnectionState.Open)
            {
                try
                {
                    connect.Open();
                    String selectData = "SELECT ID FROM LookUp WHERE Data Like @data";
                    using (SqlCommand cmd = new SqlCommand(selectData, connect))
                    {
                        cmd.Parameters.AddWithValue("@data", data);
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable table = new DataTable();
                        adapter.Fill(table);
                        return Convert.ToInt32(table.Rows[0]["ID"]);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    connect.Close();
                }
            }
            return -1;
        }
        public static int FetchLatestSocialID()
        {
            if (connect.State != ConnectionState.Open)
            {
                try
                {
                    connect.Open();
                    String selectData = "SELECT TOP (1) UserID FROM SocialUser Order by UserID DESC";
                    using (SqlCommand cmd = new SqlCommand(selectData, connect))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable table = new DataTable();
                        adapter.Fill(table);
                        return Convert.ToInt32(table.Rows[0]["UserID"]);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    connect.Close();
                }
            }
            return -1;
        }
    }
}
