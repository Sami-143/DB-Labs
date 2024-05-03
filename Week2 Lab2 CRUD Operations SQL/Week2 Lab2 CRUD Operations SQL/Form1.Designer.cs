
namespace Week2_Lab2_CRUD_Operations_SQL
{
    partial class Form1
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
            this.MainPannelOutside = new System.Windows.Forms.TableLayoutPanel();
            this.AttributesPannel = new System.Windows.Forms.TableLayoutPanel();
            this.label7 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtID = new System.Windows.Forms.TextBox();
            this.txtDepartment = new System.Windows.Forms.TextBox();
            this.txtAddress = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtSession = new System.Windows.Forms.TextBox();
            this.txtCgpa = new System.Windows.Forms.TextBox();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.label3 = new System.Windows.Forms.Label();
            this.gridPannel = new System.Windows.Forms.TableLayoutPanel();
            this.sidePannel = new System.Windows.Forms.TableLayoutPanel();
            this.addbtn = new System.Windows.Forms.Button();
            this.updateBtn = new System.Windows.Forms.Button();
            this.EditBtn = new System.Windows.Forms.Button();
            this.DeleteBtn = new System.Windows.Forms.Button();
            this.dataGridCrud = new System.Windows.Forms.DataGridView();
            this.MainPannelOutside.SuspendLayout();
            this.AttributesPannel.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.gridPannel.SuspendLayout();
            this.sidePannel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridCrud)).BeginInit();
            this.SuspendLayout();
            // 
            // MainPannelOutside
            // 
            this.MainPannelOutside.ColumnCount = 1;
            this.MainPannelOutside.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.MainPannelOutside.Controls.Add(this.AttributesPannel, 0, 0);
            this.MainPannelOutside.Controls.Add(this.tableLayoutPanel1, 0, 1);
            this.MainPannelOutside.Dock = System.Windows.Forms.DockStyle.Fill;
            this.MainPannelOutside.Font = new System.Drawing.Font("Algerian", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MainPannelOutside.Location = new System.Drawing.Point(0, 0);
            this.MainPannelOutside.Name = "MainPannelOutside";
            this.MainPannelOutside.RowCount = 2;
            this.MainPannelOutside.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 43.38843F));
            this.MainPannelOutside.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 56.61157F));
            this.MainPannelOutside.Size = new System.Drawing.Size(1344, 726);
            this.MainPannelOutside.TabIndex = 0;
            // 
            // AttributesPannel
            // 
            this.AttributesPannel.ColumnCount = 4;
            this.AttributesPannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 34.78916F));
            this.AttributesPannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 65.21085F));
            this.AttributesPannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 167F));
            this.AttributesPannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 479F));
            this.AttributesPannel.Controls.Add(this.label7, 0, 1);
            this.AttributesPannel.Controls.Add(this.label2, 0, 0);
            this.AttributesPannel.Controls.Add(this.label4, 0, 2);
            this.AttributesPannel.Controls.Add(this.label5, 2, 1);
            this.AttributesPannel.Controls.Add(this.txtID, 1, 0);
            this.AttributesPannel.Controls.Add(this.txtDepartment, 1, 1);
            this.AttributesPannel.Controls.Add(this.txtAddress, 3, 1);
            this.AttributesPannel.Controls.Add(this.txtName, 3, 0);
            this.AttributesPannel.Controls.Add(this.label1, 2, 2);
            this.AttributesPannel.Controls.Add(this.label6, 2, 0);
            this.AttributesPannel.Controls.Add(this.txtSession, 1, 2);
            this.AttributesPannel.Controls.Add(this.txtCgpa, 3, 2);
            this.AttributesPannel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.AttributesPannel.Location = new System.Drawing.Point(3, 3);
            this.AttributesPannel.Name = "AttributesPannel";
            this.AttributesPannel.RowCount = 3;
            this.AttributesPannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.AttributesPannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.AttributesPannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 98F));
            this.AttributesPannel.Size = new System.Drawing.Size(1338, 309);
            this.AttributesPannel.TabIndex = 0;
            // 
            // label7
            // 
            this.label7.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(25, 142);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(190, 31);
            this.label7.TabIndex = 1;
            this.label7.Text = "Department";
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(214, 62);
            this.label2.TabIndex = 1;
            this.label2.Text = "Registration Number";
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(59, 244);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(122, 31);
            this.label4.TabIndex = 1;
            this.label4.Text = "Session";
            // 
            // label5
            // 
            this.label5.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(706, 142);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(136, 31);
            this.label5.TabIndex = 1;
            this.label5.Text = "Address";
            // 
            // txtID
            // 
            this.txtID.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtID.Location = new System.Drawing.Point(315, 31);
            this.txtID.Name = "txtID";
            this.txtID.Size = new System.Drawing.Size(300, 43);
            this.txtID.TabIndex = 2;
            // 
            // txtDepartment
            // 
            this.txtDepartment.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtDepartment.Location = new System.Drawing.Point(294, 136);
            this.txtDepartment.Name = "txtDepartment";
            this.txtDepartment.Size = new System.Drawing.Size(342, 43);
            this.txtDepartment.TabIndex = 2;
            // 
            // txtAddress
            // 
            this.txtAddress.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtAddress.Location = new System.Drawing.Point(884, 136);
            this.txtAddress.Name = "txtAddress";
            this.txtAddress.Size = new System.Drawing.Size(427, 43);
            this.txtAddress.TabIndex = 2;
            // 
            // txtName
            // 
            this.txtName.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtName.Location = new System.Drawing.Point(894, 31);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(408, 43);
            this.txtName.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(731, 244);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "CGPA";
            // 
            // label6
            // 
            this.label6.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(730, 37);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 31);
            this.label6.TabIndex = 1;
            this.label6.Text = "NAME";
            // 
            // txtSession
            // 
            this.txtSession.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtSession.Location = new System.Drawing.Point(348, 238);
            this.txtSession.Name = "txtSession";
            this.txtSession.Size = new System.Drawing.Size(234, 43);
            this.txtSession.TabIndex = 2;
            // 
            // txtCgpa
            // 
            this.txtCgpa.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtCgpa.Location = new System.Drawing.Point(981, 238);
            this.txtCgpa.Name = "txtCgpa";
            this.txtCgpa.Size = new System.Drawing.Size(234, 43);
            this.txtCgpa.TabIndex = 2;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Controls.Add(this.label3, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.gridPannel, 0, 1);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(3, 318);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 17.53086F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 82.46914F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1338, 405);
            this.tableLayoutPanel1.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Algerian", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(512, 17);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(314, 36);
            this.label3.TabIndex = 1;
            this.label3.Text = "CRUD OPERATIONS";
            // 
            // gridPannel
            // 
            this.gridPannel.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.gridPannel.ColumnCount = 2;
            this.gridPannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 36.78679F));
            this.gridPannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 63.21321F));
            this.gridPannel.Controls.Add(this.sidePannel, 0, 0);
            this.gridPannel.Controls.Add(this.dataGridCrud, 1, 0);
            this.gridPannel.Location = new System.Drawing.Point(3, 73);
            this.gridPannel.Name = "gridPannel";
            this.gridPannel.RowCount = 1;
            this.gridPannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.gridPannel.Size = new System.Drawing.Size(1332, 329);
            this.gridPannel.TabIndex = 2;
            // 
            // sidePannel
            // 
            this.sidePannel.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.sidePannel.ColumnCount = 1;
            this.sidePannel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.sidePannel.Controls.Add(this.addbtn, 0, 0);
            this.sidePannel.Controls.Add(this.updateBtn, 0, 1);
            this.sidePannel.Controls.Add(this.EditBtn, 0, 2);
            this.sidePannel.Controls.Add(this.DeleteBtn, 0, 3);
            this.sidePannel.Location = new System.Drawing.Point(3, 5);
            this.sidePannel.Name = "sidePannel";
            this.sidePannel.RowCount = 4;
            this.sidePannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 52.33645F));
            this.sidePannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 47.66355F));
            this.sidePannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 75F));
            this.sidePannel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 85F));
            this.sidePannel.Size = new System.Drawing.Size(484, 319);
            this.sidePannel.TabIndex = 1;
            // 
            // addbtn
            // 
            this.addbtn.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.addbtn.Location = new System.Drawing.Point(334, 18);
            this.addbtn.Name = "addbtn";
            this.addbtn.Size = new System.Drawing.Size(147, 47);
            this.addbtn.TabIndex = 0;
            this.addbtn.Text = "ADD";
            this.addbtn.UseVisualStyleBackColor = true;
            this.addbtn.Click += new System.EventHandler(this.addbtn_Click);
            // 
            // updateBtn
            // 
            this.updateBtn.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.updateBtn.Location = new System.Drawing.Point(334, 96);
            this.updateBtn.Name = "updateBtn";
            this.updateBtn.Size = new System.Drawing.Size(147, 48);
            this.updateBtn.TabIndex = 0;
            this.updateBtn.Text = "UPDATE";
            this.updateBtn.UseVisualStyleBackColor = true;
            this.updateBtn.Click += new System.EventHandler(this.updateBtn_Click);
            // 
            // EditBtn
            // 
            this.EditBtn.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.EditBtn.Location = new System.Drawing.Point(334, 168);
            this.EditBtn.Name = "EditBtn";
            this.EditBtn.Size = new System.Drawing.Size(147, 54);
            this.EditBtn.TabIndex = 0;
            this.EditBtn.Text = "EDIT";
            this.EditBtn.UseVisualStyleBackColor = true;
            this.EditBtn.Click += new System.EventHandler(this.EditBtn_Click);
            // 
            // DeleteBtn
            // 
            this.DeleteBtn.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.DeleteBtn.Location = new System.Drawing.Point(334, 249);
            this.DeleteBtn.Name = "DeleteBtn";
            this.DeleteBtn.Size = new System.Drawing.Size(147, 53);
            this.DeleteBtn.TabIndex = 0;
            this.DeleteBtn.Text = "Delete";
            this.DeleteBtn.UseVisualStyleBackColor = true;
            this.DeleteBtn.Click += new System.EventHandler(this.DeleteBtn_Click);
            // 
            // dataGridCrud
            // 
            this.dataGridCrud.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.dataGridCrud.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridCrud.Location = new System.Drawing.Point(513, 3);
            this.dataGridCrud.Name = "dataGridCrud";
            this.dataGridCrud.RowHeadersWidth = 51;
            this.dataGridCrud.RowTemplate.Height = 24;
            this.dataGridCrud.Size = new System.Drawing.Size(795, 323);
            this.dataGridCrud.TabIndex = 0;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1344, 726);
            this.Controls.Add(this.MainPannelOutside);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.MainPannelOutside.ResumeLayout(false);
            this.AttributesPannel.ResumeLayout(false);
            this.AttributesPannel.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.gridPannel.ResumeLayout(false);
            this.sidePannel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridCrud)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel MainPannelOutside;
        private System.Windows.Forms.TableLayoutPanel AttributesPannel;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtID;
        private System.Windows.Forms.TextBox txtDepartment;
        private System.Windows.Forms.TextBox txtSession;
        private System.Windows.Forms.TextBox txtAddress;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtCgpa;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.TableLayoutPanel gridPannel;
        private System.Windows.Forms.DataGridView dataGridCrud;
        private System.Windows.Forms.TableLayoutPanel sidePannel;
        private System.Windows.Forms.Button addbtn;
        private System.Windows.Forms.Button updateBtn;
        private System.Windows.Forms.Button EditBtn;
        private System.Windows.Forms.Button DeleteBtn;
    }
}

