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

namespace Week2_Lab2_CRUD_Operations_SQL
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Update into Student values (@RegistrationNumber, @Name, @Department,@Session,@Address)", con);
            cmd.Parameters.AddWithValue("@RegistrationNumber", txtID.Text);
        }

        private void addbtn_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Insert into Student values (@RegistrationNumber, @Name, @Department,@Session,@Address)", con);
            cmd.Parameters.AddWithValue("@RegistrationNumber", txtID.Text);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Department", txtDepartment.Text);
            cmd.Parameters.AddWithValue("@Session", int.Parse(txtSession.Text));
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfully saved");
        }

        private void updateBtn_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("UPDATE Student SET  Name=@Name, Department=@Department, Session=@Session, Address=@Address WHERE RegistrationNumber =  @RegistrationNumber", con);

            cmd.Parameters.AddWithValue("@RegistrationNumber", txtID.Text);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Department", txtDepartment.Text);
            cmd.Parameters.AddWithValue("@Session", int.Parse(txtSession.Text));
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfully Update");
        }

        private void DeleteBtn_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("Delete from Student WHERE RegistrationNumber =  @RegistrationNumber", con);
            cmd.Parameters.AddWithValue("@RegistrationNumber", txtID.Text);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfully Delete");
        }

        private void EditBtn_Click(object sender, EventArgs e)
        {
            var con = Configuration.getInstance().getConnection();
            SqlCommand cmd = new SqlCommand("UPDATE Student SET  Name=@Name, Department=@Department, Session=@Session,Address=@Address WHERE RegistrationNumber =  @RegistrationNumber", con);

            cmd.Parameters.AddWithValue("@RegistrationNumber", txtID.Text);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Department", txtDepartment.Text);
            cmd.Parameters.AddWithValue("@Session", int.Parse(txtSession.Text));
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfully Edited");
        }


    }
}
