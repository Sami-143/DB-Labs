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
    public partial class Social_User : Form
    {
        public Social_User()
        {
            InitializeComponent();
        }

        private void btn_CreateSocialUser_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand command = new SqlCommand("INSERT INTO SocialUser(UserName, AccountCreatedOn, AccountType, Password) " +
                                                "VALUES (@UserName, @AccountCreatedOn, @AccountType, @Password)", con);
            //command.CommandType = CommandType.StoredProcedure;

            // Validate user input
            if (string.IsNullOrEmpty(txtUserName.Text) || AccountCreatedON.Value == null || string.IsNullOrEmpty(txtPassword.Text))
            {
                MessageBox.Show("Please fill in all the required fields.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                command.Parameters.AddWithValue("@UserName", txtUserName.Text);
                command.Parameters.AddWithValue("@AccountCreatedOn", AccountCreatedON.Value);
                command.Parameters.AddWithValue("@AccountType", cmb_AccountType.Text == "Facebook" ? 1 : 2);
                command.Parameters.AddWithValue("@Password", txtPassword.Text);

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

        private void cmb_AccountType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
