
namespace DbFinalProject3Insert
{
    partial class Social_User
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cmb_AccountType = new System.Windows.Forms.ComboBox();
            this.btn_CreateSocialUser = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.AccountCreatedON = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label.Location = new System.Drawing.Point(416, 73);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(101, 45);
            this.label.TabIndex = 0;
            this.label.Text = "User";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(119, 221);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(144, 32);
            this.label1.TabIndex = 1;
            this.label1.Text = "User Name";
            // 
            // txtUserName
            // 
            this.txtUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserName.Location = new System.Drawing.Point(359, 239);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(320, 30);
            this.txtUserName.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(119, 312);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(130, 32);
            this.label2.TabIndex = 1;
            this.label2.Text = "Password";
            // 
            // txtPassword
            // 
            this.txtPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassword.Location = new System.Drawing.Point(359, 314);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(320, 30);
            this.txtPassword.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(106, 145);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(178, 32);
            this.label3.TabIndex = 1;
            this.label3.Text = "Account Type";
            // 
            // cmb_AccountType
            // 
            this.cmb_AccountType.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_AccountType.FormattingEnabled = true;
            this.cmb_AccountType.Items.AddRange(new object[] {
            "Facebook",
            "Reddit"});
            this.cmb_AccountType.Location = new System.Drawing.Point(359, 147);
            this.cmb_AccountType.Name = "cmb_AccountType";
            this.cmb_AccountType.Size = new System.Drawing.Size(320, 33);
            this.cmb_AccountType.TabIndex = 3;
            this.cmb_AccountType.SelectedIndexChanged += new System.EventHandler(this.cmb_AccountType_SelectedIndexChanged);
            // 
            // btn_CreateSocialUser
            // 
            this.btn_CreateSocialUser.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_CreateSocialUser.Location = new System.Drawing.Point(442, 462);
            this.btn_CreateSocialUser.Name = "btn_CreateSocialUser";
            this.btn_CreateSocialUser.Size = new System.Drawing.Size(143, 44);
            this.btn_CreateSocialUser.TabIndex = 4;
            this.btn_CreateSocialUser.Text = "create";
            this.btn_CreateSocialUser.UseVisualStyleBackColor = true;
            this.btn_CreateSocialUser.Click += new System.EventHandler(this.btn_CreateSocialUser_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(71, 384);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(264, 32);
            this.label4.TabIndex = 1;
            this.label4.Text = "Account Created ON";
            // 
            // AccountCreatedON
            // 
            this.AccountCreatedON.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.AccountCreatedON.Location = new System.Drawing.Point(359, 391);
            this.AccountCreatedON.Name = "AccountCreatedON";
            this.AccountCreatedON.Size = new System.Drawing.Size(341, 30);
            this.AccountCreatedON.TabIndex = 5;
            // 
            // Social_User
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(975, 650);
            this.Controls.Add(this.AccountCreatedON);
            this.Controls.Add(this.btn_CreateSocialUser);
            this.Controls.Add(this.cmb_AccountType);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label);
            this.Name = "Social_User";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmb_AccountType;
        private System.Windows.Forms.Button btn_CreateSocialUser;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker AccountCreatedON;
    }
}

