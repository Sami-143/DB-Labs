
namespace DbFinalProject3Insert
{
    partial class FB_Page
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
            this.cmb_PageCategory = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_Pagename = new System.Windows.Forms.TextBox();
            this.cmb_FBUserID = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btn_createPost
            // 
            this.btn_createPost.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_createPost.Location = new System.Drawing.Point(622, 434);
            this.btn_createPost.Name = "btn_createPost";
            this.btn_createPost.Size = new System.Drawing.Size(130, 44);
            this.btn_createPost.TabIndex = 20;
            this.btn_createPost.Text = "Create Page";
            this.btn_createPost.UseVisualStyleBackColor = true;
            // 
            // cmb_PageCategory
            // 
            this.cmb_PageCategory.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_PageCategory.FormattingEnabled = true;
            this.cmb_PageCategory.Location = new System.Drawing.Point(399, 342);
            this.cmb_PageCategory.Name = "cmb_PageCategory";
            this.cmb_PageCategory.Size = new System.Drawing.Size(353, 30);
            this.cmb_PageCategory.TabIndex = 18;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(206, 342);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(163, 26);
            this.label3.TabIndex = 16;
            this.label3.Text = "Page Category";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(206, 271);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(127, 26);
            this.label2.TabIndex = 17;
            this.label2.Text = "Page Name";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(456, 86);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(103, 45);
            this.label1.TabIndex = 14;
            this.label1.Text = "Page";
            // 
            // txt_Pagename
            // 
            this.txt_Pagename.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Pagename.Location = new System.Drawing.Point(399, 271);
            this.txt_Pagename.Name = "txt_Pagename";
            this.txt_Pagename.Size = new System.Drawing.Size(353, 30);
            this.txt_Pagename.TabIndex = 21;
            // 
            // cmb_FBUserID
            // 
            this.cmb_FBUserID.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_FBUserID.FormattingEnabled = true;
            this.cmb_FBUserID.Location = new System.Drawing.Point(399, 209);
            this.cmb_FBUserID.Name = "cmb_FBUserID";
            this.cmb_FBUserID.Size = new System.Drawing.Size(353, 30);
            this.cmb_FBUserID.TabIndex = 23;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(208, 213);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(92, 26);
            this.label5.TabIndex = 22;
            this.label5.Text = "User ID";
            // 
            // FB_Page
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(965, 703);
            this.Controls.Add(this.cmb_FBUserID);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txt_Pagename);
            this.Controls.Add(this.btn_createPost);
            this.Controls.Add(this.cmb_PageCategory);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FB_Page";
            this.Text = "Page";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_createPost;
        private System.Windows.Forms.ComboBox cmb_PageCategory;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_Pagename;
        private System.Windows.Forms.ComboBox cmb_FBUserID;
        private System.Windows.Forms.Label label5;
    }
}