namespace MeterFarm.View
{
    partial class Update
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Update));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.UpdateMetersButton = new System.Windows.Forms.Button();
            this.DeleteMetersButton = new System.Windows.Forms.Button();
            this.ModelMeter = new System.Windows.Forms.ComboBox();
            this.BoxMeter = new System.Windows.Forms.TextBox();
            this.CreateMetersButton = new System.Windows.Forms.Button();
            this.groupBoxMeters = new System.Windows.Forms.GroupBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.DeleteWallButton = new System.Windows.Forms.Button();
            this.CreateWallButton = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.WallBox = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.WallType = new System.Windows.Forms.ComboBox();
            this.UpdateWallButton = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.label14 = new System.Windows.Forms.Label();
            this.txtComments = new System.Windows.Forms.TextBox();
            this.txtAlamrs = new System.Windows.Forms.TextBox();
            this.txt131 = new System.Windows.Forms.TextBox();
            this.txt124 = new System.Windows.Forms.TextBox();
            this.txt103 = new System.Windows.Forms.TextBox();
            this.txt31 = new System.Windows.Forms.TextBox();
            this.txt24 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.txtMeter = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txt03 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtIDCollect = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.groupBoxMeters.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            resources.ApplyResources(this.label1, "label1");
            this.label1.Name = "label1";
            // 
            // label2
            // 
            resources.ApplyResources(this.label2, "label2");
            this.label2.Name = "label2";
            // 
            // UpdateMetersButton
            // 
            resources.ApplyResources(this.UpdateMetersButton, "UpdateMetersButton");
            this.UpdateMetersButton.Name = "UpdateMetersButton";
            this.UpdateMetersButton.UseVisualStyleBackColor = true;
            this.UpdateMetersButton.Click += new System.EventHandler(this.Click_UpdateMeter);
            // 
            // DeleteMetersButton
            // 
            resources.ApplyResources(this.DeleteMetersButton, "DeleteMetersButton");
            this.DeleteMetersButton.Name = "DeleteMetersButton";
            this.DeleteMetersButton.UseVisualStyleBackColor = true;
            this.DeleteMetersButton.Click += new System.EventHandler(this.Click_DeleteMeters);
            // 
            // ModelMeter
            // 
            this.ModelMeter.FormattingEnabled = true;
            resources.ApplyResources(this.ModelMeter, "ModelMeter");
            this.ModelMeter.Name = "ModelMeter";
            this.ModelMeter.SelectedValueChanged += new System.EventHandler(this.MeterModel_SelectedValueChanged);
            // 
            // BoxMeter
            // 
            resources.ApplyResources(this.BoxMeter, "BoxMeter");
            this.BoxMeter.Name = "BoxMeter";
            // 
            // CreateMetersButton
            // 
            resources.ApplyResources(this.CreateMetersButton, "CreateMetersButton");
            this.CreateMetersButton.Name = "CreateMetersButton";
            this.CreateMetersButton.UseVisualStyleBackColor = true;
            this.CreateMetersButton.Click += new System.EventHandler(this.Click_CreateMeter);
            // 
            // groupBoxMeters
            // 
            this.groupBoxMeters.Controls.Add(this.DeleteMetersButton);
            this.groupBoxMeters.Controls.Add(this.CreateMetersButton);
            this.groupBoxMeters.Controls.Add(this.label1);
            this.groupBoxMeters.Controls.Add(this.BoxMeter);
            this.groupBoxMeters.Controls.Add(this.label2);
            this.groupBoxMeters.Controls.Add(this.ModelMeter);
            this.groupBoxMeters.Controls.Add(this.UpdateMetersButton);
            resources.ApplyResources(this.groupBoxMeters, "groupBoxMeters");
            this.groupBoxMeters.Name = "groupBoxMeters";
            this.groupBoxMeters.TabStop = false;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.DeleteWallButton);
            this.groupBox1.Controls.Add(this.CreateWallButton);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.WallBox);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.WallType);
            this.groupBox1.Controls.Add(this.UpdateWallButton);
            resources.ApplyResources(this.groupBox1, "groupBox1");
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.TabStop = false;
            // 
            // DeleteWallButton
            // 
            resources.ApplyResources(this.DeleteWallButton, "DeleteWallButton");
            this.DeleteWallButton.Name = "DeleteWallButton";
            this.DeleteWallButton.UseVisualStyleBackColor = true;
            this.DeleteWallButton.Click += new System.EventHandler(this.ClickDelete_Wall);
            // 
            // CreateWallButton
            // 
            resources.ApplyResources(this.CreateWallButton, "CreateWallButton");
            this.CreateWallButton.Name = "CreateWallButton";
            this.CreateWallButton.UseVisualStyleBackColor = true;
            this.CreateWallButton.Click += new System.EventHandler(this.Click_CreateMureta);
            // 
            // label3
            // 
            resources.ApplyResources(this.label3, "label3");
            this.label3.Name = "label3";
            // 
            // WallBox
            // 
            resources.ApplyResources(this.WallBox, "WallBox");
            this.WallBox.Name = "WallBox";
            // 
            // label4
            // 
            resources.ApplyResources(this.label4, "label4");
            this.label4.Name = "label4";
            // 
            // WallType
            // 
            this.WallType.AccessibleRole = System.Windows.Forms.AccessibleRole.ComboBox;
            this.WallType.FormattingEnabled = true;
            this.WallType.Items.AddRange(new object[] {
            resources.GetString("WallType.Items")});
            resources.ApplyResources(this.WallType, "WallType");
            this.WallType.Name = "WallType";
            this.WallType.SelectedValueChanged += new System.EventHandler(this.WallType_SelectedValueChanged);
            // 
            // UpdateWallButton
            // 
            resources.ApplyResources(this.UpdateWallButton, "UpdateWallButton");
            this.UpdateWallButton.Name = "UpdateWallButton";
            this.UpdateWallButton.UseVisualStyleBackColor = true;
            this.UpdateWallButton.Click += new System.EventHandler(this.Click_UpdateWall);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.tableLayoutPanel1);
            this.groupBox2.Controls.Add(this.button1);
            this.groupBox2.Controls.Add(this.button3);
            resources.ApplyResources(this.groupBox2, "groupBox2");
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.TabStop = false;
            // 
            // tableLayoutPanel1
            // 
            resources.ApplyResources(this.tableLayoutPanel1, "tableLayoutPanel1");
            this.tableLayoutPanel1.Controls.Add(this.label14, 0, 9);
            this.tableLayoutPanel1.Controls.Add(this.txtComments, 1, 9);
            this.tableLayoutPanel1.Controls.Add(this.txtAlamrs, 1, 8);
            this.tableLayoutPanel1.Controls.Add(this.txt131, 1, 7);
            this.tableLayoutPanel1.Controls.Add(this.txt124, 1, 6);
            this.tableLayoutPanel1.Controls.Add(this.txt103, 1, 5);
            this.tableLayoutPanel1.Controls.Add(this.txt31, 1, 4);
            this.tableLayoutPanel1.Controls.Add(this.txt24, 1, 3);
            this.tableLayoutPanel1.Controls.Add(this.label5, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.label12, 0, 8);
            this.tableLayoutPanel1.Controls.Add(this.txtMeter, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.label11, 0, 7);
            this.tableLayoutPanel1.Controls.Add(this.label6, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.label10, 0, 6);
            this.tableLayoutPanel1.Controls.Add(this.txt03, 1, 2);
            this.tableLayoutPanel1.Controls.Add(this.label9, 0, 5);
            this.tableLayoutPanel1.Controls.Add(this.label7, 0, 3);
            this.tableLayoutPanel1.Controls.Add(this.label8, 0, 4);
            this.tableLayoutPanel1.Controls.Add(this.txtIDCollect, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.label13, 0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            // 
            // label14
            // 
            resources.ApplyResources(this.label14, "label14");
            this.label14.Name = "label14";
            // 
            // txtComments
            // 
            resources.ApplyResources(this.txtComments, "txtComments");
            this.txtComments.Name = "txtComments";
            // 
            // txtAlamrs
            // 
            resources.ApplyResources(this.txtAlamrs, "txtAlamrs");
            this.txtAlamrs.Name = "txtAlamrs";
            // 
            // txt131
            // 
            resources.ApplyResources(this.txt131, "txt131");
            this.txt131.Name = "txt131";
            // 
            // txt124
            // 
            resources.ApplyResources(this.txt124, "txt124");
            this.txt124.Name = "txt124";
            // 
            // txt103
            // 
            resources.ApplyResources(this.txt103, "txt103");
            this.txt103.Name = "txt103";
            // 
            // txt31
            // 
            resources.ApplyResources(this.txt31, "txt31");
            this.txt31.Name = "txt31";
            // 
            // txt24
            // 
            resources.ApplyResources(this.txt24, "txt24");
            this.txt24.Name = "txt24";
            // 
            // label5
            // 
            resources.ApplyResources(this.label5, "label5");
            this.label5.Name = "label5";
            // 
            // label12
            // 
            resources.ApplyResources(this.label12, "label12");
            this.label12.Name = "label12";
            // 
            // txtMeter
            // 
            resources.ApplyResources(this.txtMeter, "txtMeter");
            this.txtMeter.Name = "txtMeter";
            // 
            // label11
            // 
            resources.ApplyResources(this.label11, "label11");
            this.label11.Name = "label11";
            // 
            // label6
            // 
            resources.ApplyResources(this.label6, "label6");
            this.label6.Name = "label6";
            // 
            // label10
            // 
            resources.ApplyResources(this.label10, "label10");
            this.label10.Name = "label10";
            // 
            // txt03
            // 
            resources.ApplyResources(this.txt03, "txt03");
            this.txt03.Name = "txt03";
            // 
            // label9
            // 
            resources.ApplyResources(this.label9, "label9");
            this.label9.Name = "label9";
            // 
            // label7
            // 
            resources.ApplyResources(this.label7, "label7");
            this.label7.Name = "label7";
            // 
            // label8
            // 
            resources.ApplyResources(this.label8, "label8");
            this.label8.Name = "label8";
            // 
            // txtIDCollect
            // 
            resources.ApplyResources(this.txtIDCollect, "txtIDCollect");
            this.txtIDCollect.Name = "txtIDCollect";
            // 
            // label13
            // 
            resources.ApplyResources(this.label13, "label13");
            this.label13.Name = "label13";
            // 
            // button1
            // 
            resources.ApplyResources(this.button1, "button1");
            this.button1.Name = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.ClickDelete_Collect);
            // 
            // button3
            // 
            resources.ApplyResources(this.button3, "button3");
            this.button3.Name = "button3";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.ClickUpdate_Collect);
            // 
            // Update
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBoxMeters);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Update";
            this.groupBoxMeters.ResumeLayout(false);
            this.groupBoxMeters.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button UpdateMetersButton;
        private System.Windows.Forms.Button DeleteMetersButton;
        private System.Windows.Forms.ComboBox ModelMeter;
        private System.Windows.Forms.TextBox BoxMeter;
        private System.Windows.Forms.Button CreateMetersButton;
        private System.Windows.Forms.GroupBox groupBoxMeters;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button DeleteWallButton;
        private System.Windows.Forms.Button CreateWallButton;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox WallBox;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button UpdateWallButton;
        public System.Windows.Forms.ComboBox WallType;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtMeter;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txt03;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.TextBox txtComments;
        private System.Windows.Forms.TextBox txtAlamrs;
        private System.Windows.Forms.TextBox txt131;
        private System.Windows.Forms.TextBox txt124;
        private System.Windows.Forms.TextBox txt103;
        private System.Windows.Forms.TextBox txt31;
        private System.Windows.Forms.TextBox txt24;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtIDCollect;
        private System.Windows.Forms.Label label13;
    }
}