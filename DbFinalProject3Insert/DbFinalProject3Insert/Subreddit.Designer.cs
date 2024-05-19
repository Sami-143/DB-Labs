
namespace DbFinalProject3Insert
{
    partial class Subreddit
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
            this.txt_Pagename = new System.Windows.Forms.TextBox();
            this.btn_createPost = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txt_Pagename
            // 
            this.txt_Pagename.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Pagename.Location = new System.Drawing.Point(359, 238);
            this.txt_Pagename.Name = "txt_Pagename";
            this.txt_Pagename.Size = new System.Drawing.Size(353, 30);
            this.txt_Pagename.TabIndex = 27;
            // 
            // btn_createPost
            // 
            this.btn_createPost.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_createPost.Location = new System.Drawing.Point(582, 302);
            this.btn_createPost.Name = "btn_createPost";
            this.btn_createPost.Size = new System.Drawing.Size(130, 44);
            this.btn_createPost.TabIndex = 26;
            this.btn_createPost.Text = "Create Page";
            this.btn_createPost.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(193, 238);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(127, 26);
            this.label2.TabIndex = 24;
            this.label2.Text = "Page Name";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(453, 120);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(188, 45);
            this.label1.TabIndex = 22;
            this.label1.Text = "Subreddit";
            // 
            // Subreddit
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(932, 574);
            this.Controls.Add(this.txt_Pagename);
            this.Controls.Add(this.btn_createPost);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Subreddit";
            this.Text = "Subreddit";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_Pagename;
        private System.Windows.Forms.Button btn_createPost;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}