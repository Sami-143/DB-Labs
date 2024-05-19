using Analytix_Hub;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DbFinalProject3Insert
{
    public partial class FB_User : Form
    {
        public FB_User()
        {
            InitializeComponent();
        }

        private void btn_createPost_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            con.Open();

            SqlCommand command = new SqlCommand("INSERT INTO Fb_User(UserID, Country, UserGender, FollowerCount, DoB) " +
                                                "VALUES (@UserID, @Country, @UserGender, @FollowerCount, @DoB)", con);

            // Validate user input
            if (string.IsNullOrEmpty(cmb_Country.Text) || string.IsNullOrEmpty(cmb_Gender.Text) || DOB.Value == null)
            {
                MessageBox.Show("Please fill in all the required fields.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                int userID = DatabaseValues.FetchLatestSocialID();
                command.Parameters.AddWithValue("@UserID", userID);
                int country = DatabaseValues.FetchLookUpID(cmb_Country.SelectedItem.ToString());
                command.Parameters.AddWithValue("@Country", country);
                int gender = DatabaseValues.FetchLookUpID(cmb_Gender.SelectedItem.ToString());
                command.Parameters.AddWithValue("@UserGender", gender);
                command.Parameters.AddWithValue("@FollowerCount", DBNull.Value); // Set Follower Count to null
                command.Parameters.AddWithValue("@DoB", DOB.Value);

                try
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        MessageBox.Show("User created successfully.", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Failed to create user.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("An error occurred: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                con.Close();
            }
        }

    }
}
