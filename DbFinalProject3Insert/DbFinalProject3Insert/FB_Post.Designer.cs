
namespace DbFinalProject3Insert
{
    partial class FB_Post
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_Caption = new System.Windows.Forms.TextBox();
            this.txtPostTitle = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cmb_Format = new System.Windows.Forms.ComboBox();
            this.btn_createPost = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(429, 84);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 45);
            this.label1.TabIndex = 0;
            this.label1.Text = "Post";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(51, 156);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 26);
            this.label2.TabIndex = 1;
            this.label2.Text = "Caption";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(51, 227);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(110, 26);
            this.label3.TabIndex = 1;
            this.label3.Text = "Post Title";
            // 
            // txt_Caption
            // 
            this.txt_Caption.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Caption.Location = new System.Drawing.Point(244, 156);
            this.txt_Caption.Name = "txt_Caption";
            this.txt_Caption.Size = new System.Drawing.Size(353, 30);
            this.txt_Caption.TabIndex = 2;
            // 
            // txtPostTitle
            // 
            this.txtPostTitle.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPostTitle.Location = new System.Drawing.Point(244, 223);
            this.txtPostTitle.Name = "txtPostTitle";
            this.txtPostTitle.Size = new System.Drawing.Size(353, 30);
            this.txtPostTitle.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(51, 291);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(139, 26);
            this.label4.TabIndex = 1;
            this.label4.Text = "Post Format";
            // 
            // cmb_Format
            // 
            this.cmb_Format.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_Format.FormattingEnabled = true;
            this.cmb_Format.Location = new System.Drawing.Point(244, 287);
            this.cmb_Format.Name = "cmb_Format";
            this.cmb_Format.Size = new System.Drawing.Size(353, 30);
            this.cmb_Format.TabIndex = 3;
            // 
            // btn_createPost
            // 
            this.btn_createPost.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_createPost.Location = new System.Drawing.Point(467, 390);
            this.btn_createPost.Name = "btn_createPost";
            this.btn_createPost.Size = new System.Drawing.Size(130, 44);
            this.btn_createPost.TabIndex = 4;
            this.btn_createPost.Text = "Create Post";
            this.btn_createPost.UseVisualStyleBackColor = true;
            this.btn_createPost.Click += new System.EventHandler(this.btn_createPost_Click);
            // 
            // FB_Post
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1022, 714);
            this.Controls.Add(this.btn_createPost);
            this.Controls.Add(this.cmb_Format);
            this.Controls.Add(this.txtPostTitle);
            this.Controls.Add(this.txt_Caption);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FB_Post";
            this.Text = "Post";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_Caption;
        private System.Windows.Forms.TextBox txtPostTitle;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cmb_Format;
        private System.Windows.Forms.Button btn_createPost;
    }
}