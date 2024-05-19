
namespace DbFinalProject3Insert
{
    partial class FB_User
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
            this.btn_createPost = new System.Windows.Forms.Button();
            this.cmb_Gender = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cmb_Country = new System.Windows.Forms.ComboBox();
            this.DOB = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // btn_createPost
            // 
            this.btn_createPost.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_createPost.Location = new System.Drawing.Point(557, 406);
            this.btn_createPost.Name = "btn_createPost";
            this.btn_createPost.Size = new System.Drawing.Size(130, 44);
            this.btn_createPost.TabIndex = 12;
            this.btn_createPost.Text = "Create User";
            this.btn_createPost.UseVisualStyleBackColor = true;
            this.btn_createPost.Click += new System.EventHandler(this.btn_createPost_Click);
            // 
            // cmb_Gender
            // 
            this.cmb_Gender.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_Gender.FormattingEnabled = true;
            this.cmb_Gender.Items.AddRange(new object[] {
            "Male",
            "Female",
            "Other"});
            this.cmb_Gender.Location = new System.Drawing.Point(334, 316);
            this.cmb_Gender.Name = "cmb_Gender";
            this.cmb_Gender.Size = new System.Drawing.Size(353, 30);
            this.cmb_Gender.TabIndex = 11;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(141, 320);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(89, 26);
            this.label4.TabIndex = 6;
            this.label4.Text = "Gender";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(141, 256);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(98, 26);
            this.label3.TabIndex = 7;
            this.label3.Text = "Country";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(141, 185);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 26);
            this.label2.TabIndex = 8;
            this.label2.Text = "DOB";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(355, 80);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(275, 45);
            this.label1.TabIndex = 5;
            this.label1.Text = "Facebook User";
            // 
            // cmb_Country
            // 
            this.cmb_Country.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_Country.FormattingEnabled = true;
            this.cmb_Country.Items.AddRange(new object[] {
            "Ukraine",
            "Ukraine",
            "United States",
            "China",
            "Serbia",
            "South Korea",
            "Peru",
            "Indonesia",
            "Cuba",
            "Russia",
            "France",
            "Canada",
            "Canada",
            "Sweden",
            "Brazil",
            "Portugal",
            "Argentina",
            "Honduras",
            "Bulgaria",
            "Zimbabwe",
            "Netherlands",
            "Iran",
            "Greece",
            "Poland",
            "Afghanistan",
            "Philippines",
            "Czech Republic",
            "Japan",
            "Palestinian Territory",
            "Armenia",
            "Colombia",
            "Guatemala",
            "Mexico",
            "Ecuador",
            "Comoros",
            "Vietnam",
            "Syria",
            "Pakistan",
            "Yemen",
            "Panama",
            "Chile",
            "Reunion",
            "South Africa",
            "Denmark",
            "Nigeria",
            "Slovenia",
            "United Kingdom",
            "United Kingdom",
            "Norway",
            "Iraq",
            "Ghana",
            "Belarus",
            "Jordan",
            "Germany",
            "Germany",
            "Myanmar",
            "Senegal",
            "Somalia",
            "Nicaragua",
            "Bolivia",
            "Bolivia",
            "Morocco",
            "Morocco",
            "Madagascar",
            "Ivory Coast",
            "Macedonia",
            "Tonga",
            "Georgia",
            "Cameroon",
            "Lithuania",
            "Lithuania",
            "Uganda",
            "Albania",
            "Guyana",
            "Bangladesh",
            "Guyana",
            "Bangladesh",
            "Luxembourg",
            "Luxembourg",
            "Thailand",
            "Ireland",
            "Zambia",
            "Finland",
            "Finland",
            "Hungary",
            "Kosovo",
            "Angola",
            "Azerbaijan",
            "New Caledonia",
            "Bosnia and Herzegovina",
            "El Salvador",
            "Nepal",
            "Mauritius",
            "Costa Rica",
            "Botswana",
            "Latvia",
            "Venezuela",
            "Venezuela",
            "Andorra",
            "Andorra",
            "Grenada",
            "Kenya",
            "Mongolia",
            "Malaysia",
            "Papua New Guinea",
            "Ethiopia",
            "Estonia",
            "Swaziland",
            "Egypt",
            "Burkina Faso",
            "East Timor",
            "Croatia",
            "Israel",
            "East Timor",
            "Croatia",
            "Burkina Faso",
            "Egypt",
            "Swaziland",
            "Estonia",
            "Paraguay",
            "Tanzania",
            "Antigua and Barbuda",
            "Turkmenistan",
            "Dominica",
            "Uzbekistan",
            "Greenland",
            "Malta",
            "North Korea",
            "Democratic Republic of the Congo",
            "American Samoa",
            "Kazakhstan",
            "Faroe Islands",
            "Mali",
            "Australia",
            "Dominican Republic",
            "Saudi Arabia",
            "Niger",
            "French Polynesia",
            "New Zealand",
            "Palau"});
            this.cmb_Country.Location = new System.Drawing.Point(334, 256);
            this.cmb_Country.Name = "cmb_Country";
            this.cmb_Country.Size = new System.Drawing.Size(353, 30);
            this.cmb_Country.TabIndex = 11;
            // 
            // DOB
            // 
            this.DOB.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.DOB.Location = new System.Drawing.Point(334, 185);
            this.DOB.Name = "DOB";
            this.DOB.Size = new System.Drawing.Size(360, 30);
            this.DOB.TabIndex = 13;
            // 
            // FB_User
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(972, 647);
            this.Controls.Add(this.DOB);
            this.Controls.Add(this.btn_createPost);
            this.Controls.Add(this.cmb_Country);
            this.Controls.Add(this.cmb_Gender);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FB_User";
            this.Text = "FB_User";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_createPost;
        private System.Windows.Forms.ComboBox cmb_Gender;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmb_Country;
        private System.Windows.Forms.DateTimePicker DOB;
    }
}