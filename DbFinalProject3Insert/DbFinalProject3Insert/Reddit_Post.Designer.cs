
namespace DbFinalProject3Insert
{
    partial class Reddit_Post
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
            this.txt_Caption = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cmb_RedditUserID = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cmb_SubredditID = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // btn_createPost
            // 
            this.btn_createPost.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_createPost.Location = new System.Drawing.Point(359, 281);
            this.btn_createPost.Name = "btn_createPost";
            this.btn_createPost.Size = new System.Drawing.Size(130, 44);
            this.btn_createPost.TabIndex = 12;
            this.btn_createPost.Text = "Create Post";
            this.btn_createPost.UseVisualStyleBackColor = true;
            // 
            // txt_Caption
            // 
            this.txt_Caption.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Caption.Location = new System.Drawing.Point(259, 194);
            this.txt_Caption.Name = "txt_Caption";
            this.txt_Caption.Size = new System.Drawing.Size(353, 30);
            this.txt_Caption.TabIndex = 10;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(111, 194);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 26);
            this.label2.TabIndex = 8;
            this.label2.Text = "Caption";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(351, 55);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(218, 45);
            this.label1.TabIndex = 5;
            this.label1.Text = "Reddit Post";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(26, 137);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(92, 26);
            this.label5.TabIndex = 6;
            this.label5.Text = "User ID";
            // 
            // cmb_RedditUserID
            // 
            this.cmb_RedditUserID.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_RedditUserID.FormattingEnabled = true;
            this.cmb_RedditUserID.Location = new System.Drawing.Point(138, 137);
            this.cmb_RedditUserID.Name = "cmb_RedditUserID";
            this.cmb_RedditUserID.Size = new System.Drawing.Size(168, 30);
            this.cmb_RedditUserID.TabIndex = 11;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(414, 137);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(146, 26);
            this.label6.TabIndex = 6;
            this.label6.Text = "Subreddit ID";
            // 
            // cmb_SubredditID
            // 
            this.cmb_SubredditID.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_SubredditID.FormattingEnabled = true;
            this.cmb_SubredditID.Location = new System.Drawing.Point(579, 133);
            this.cmb_SubredditID.Name = "cmb_SubredditID";
            this.cmb_SubredditID.Size = new System.Drawing.Size(168, 30);
            this.cmb_SubredditID.TabIndex = 11;
            // 
            // Reddit_Post
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(939, 687);
            this.Controls.Add(this.btn_createPost);
            this.Controls.Add(this.cmb_SubredditID);
            this.Controls.Add(this.cmb_RedditUserID);
            this.Controls.Add(this.txt_Caption);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Reddit_Post";
            this.Text = "Reddit_Post";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_createPost;
        private System.Windows.Forms.TextBox txt_Caption;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmb_RedditUserID;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cmb_SubredditID;
    }
}