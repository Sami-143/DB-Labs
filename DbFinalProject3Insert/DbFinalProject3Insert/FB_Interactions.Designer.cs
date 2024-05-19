
namespace DbFinalProject3Insert
{
    partial class FB_Interactions
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
            this.btn_addInteractions = new System.Windows.Forms.Button();
            this.cmb_ReactionType = new System.Windows.Forms.ComboBox();
            this.lbl_reactionType = new System.Windows.Forms.Label();
            this.lbl_comment = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_Comment = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btn_addInteractions
            // 
            this.btn_addInteractions.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_addInteractions.Location = new System.Drawing.Point(585, 408);
            this.btn_addInteractions.Name = "btn_addInteractions";
            this.btn_addInteractions.Size = new System.Drawing.Size(130, 44);
            this.btn_addInteractions.TabIndex = 20;
            this.btn_addInteractions.Text = "Add interaction";
            this.btn_addInteractions.UseVisualStyleBackColor = true;
            // 
            // cmb_ReactionType
            // 
            this.cmb_ReactionType.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_ReactionType.FormattingEnabled = true;
            this.cmb_ReactionType.Location = new System.Drawing.Point(317, 314);
            this.cmb_ReactionType.Name = "cmb_ReactionType";
            this.cmb_ReactionType.Size = new System.Drawing.Size(353, 30);
            this.cmb_ReactionType.TabIndex = 19;
            // 
            // lbl_reactionType
            // 
            this.lbl_reactionType.AutoSize = true;
            this.lbl_reactionType.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_reactionType.Location = new System.Drawing.Point(124, 318);
            this.lbl_reactionType.Name = "lbl_reactionType";
            this.lbl_reactionType.Size = new System.Drawing.Size(158, 26);
            this.lbl_reactionType.TabIndex = 15;
            this.lbl_reactionType.Text = "Reaction Type";
            // 
            // lbl_comment
            // 
            this.lbl_comment.AutoSize = true;
            this.lbl_comment.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_comment.Location = new System.Drawing.Point(124, 216);
            this.lbl_comment.Name = "lbl_comment";
            this.lbl_comment.Size = new System.Drawing.Size(111, 26);
            this.lbl_comment.TabIndex = 16;
            this.lbl_comment.Text = "Comment";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(385, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(224, 45);
            this.label1.TabIndex = 14;
            this.label1.Text = "Interactions";
            // 
            // txt_Comment
            // 
            this.txt_Comment.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Comment.Location = new System.Drawing.Point(317, 216);
            this.txt_Comment.Name = "txt_Comment";
            this.txt_Comment.Size = new System.Drawing.Size(353, 30);
            this.txt_Comment.TabIndex = 21;
            // 
            // FB_Interactions
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1040, 625);
            this.Controls.Add(this.txt_Comment);
            this.Controls.Add(this.btn_addInteractions);
            this.Controls.Add(this.cmb_ReactionType);
            this.Controls.Add(this.lbl_reactionType);
            this.Controls.Add(this.lbl_comment);
            this.Controls.Add(this.label1);
            this.Name = "FB_Interactions";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.frm_Interactions_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btn_addInteractions;
        private System.Windows.Forms.ComboBox cmb_ReactionType;
        private System.Windows.Forms.Label lbl_reactionType;
        private System.Windows.Forms.Label lbl_comment;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_Comment;
    }
}