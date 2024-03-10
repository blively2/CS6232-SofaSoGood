﻿namespace SofaSoGood.View
{
    partial class CustomerDashboard
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CustomerDashboard));
            this.MainDashboardTabControl = new System.Windows.Forms.TabControl();
            this.RegisterCustomerTabPage = new System.Windows.Forms.TabPage();
            this.CustomerRegistrationUserControl = new SofaSoGood.RegisterCustomerUserControl();
            this.EditCustomerTabPage = new System.Windows.Forms.TabPage();
            this.EditCustomerUserControl = new SofaSoGood.UserControls.EditCustomerUserControl();
            this.SearchCustomerTabPage = new System.Windows.Forms.TabPage();
            this.SearchCustomerUserControl = new SofaSoGood.UserControls.SearchCustomerUserControl();
            this.WelcomeUserLabel = new System.Windows.Forms.Label();
            this.LogoutLinkLabel = new System.Windows.Forms.LinkLabel();
            this.MainDashboardTabControl.SuspendLayout();
            this.RegisterCustomerTabPage.SuspendLayout();
            this.EditCustomerTabPage.SuspendLayout();
            this.SearchCustomerTabPage.SuspendLayout();
            this.SuspendLayout();
            // 
            // MainDashboardTabControl
            // 
            this.MainDashboardTabControl.Controls.Add(this.RegisterCustomerTabPage);
            this.MainDashboardTabControl.Controls.Add(this.EditCustomerTabPage);
            this.MainDashboardTabControl.Controls.Add(this.SearchCustomerTabPage);
            this.MainDashboardTabControl.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.MainDashboardTabControl.Location = new System.Drawing.Point(0, 0);
            this.MainDashboardTabControl.Name = "MainDashboardTabControl";
            this.MainDashboardTabControl.SelectedIndex = 0;
            this.MainDashboardTabControl.Size = new System.Drawing.Size(784, 435);
            this.MainDashboardTabControl.TabIndex = 0;
            // 
            // RegisterCustomerTabPage
            // 
            this.RegisterCustomerTabPage.Controls.Add(this.CustomerRegistrationUserControl);
            this.RegisterCustomerTabPage.Location = new System.Drawing.Point(4, 33);
            this.RegisterCustomerTabPage.Name = "RegisterCustomerTabPage";
            this.RegisterCustomerTabPage.Padding = new System.Windows.Forms.Padding(3);
            this.RegisterCustomerTabPage.Size = new System.Drawing.Size(776, 398);
            this.RegisterCustomerTabPage.TabIndex = 1;
            this.RegisterCustomerTabPage.Text = "Register Customer";
            this.RegisterCustomerTabPage.UseVisualStyleBackColor = true;
            // 
            // CustomerRegistrationUserControl
            // 
            this.CustomerRegistrationUserControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CustomerRegistrationUserControl.Location = new System.Drawing.Point(3, 3);
            this.CustomerRegistrationUserControl.Name = "CustomerRegistrationUserControl";
            this.CustomerRegistrationUserControl.Size = new System.Drawing.Size(770, 392);
            this.CustomerRegistrationUserControl.TabIndex = 0;
            // 
            // EditCustomerTabPage
            // 
            this.EditCustomerTabPage.Controls.Add(this.EditCustomerUserControl);
            this.EditCustomerTabPage.Location = new System.Drawing.Point(4, 33);
            this.EditCustomerTabPage.Name = "EditCustomerTabPage";
            this.EditCustomerTabPage.Size = new System.Drawing.Size(776, 398);
            this.EditCustomerTabPage.TabIndex = 2;
            this.EditCustomerTabPage.Text = "Edit Customer";
            this.EditCustomerTabPage.UseVisualStyleBackColor = true;
            // 
            // EditCustomerUserControl
            // 
            this.EditCustomerUserControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.EditCustomerUserControl.Location = new System.Drawing.Point(0, 0);
            this.EditCustomerUserControl.Name = "EditCustomerUserControl";
            this.EditCustomerUserControl.Size = new System.Drawing.Size(776, 398);
            this.EditCustomerUserControl.TabIndex = 0;
            // 
            // SearchCustomerTabPage
            // 
            this.SearchCustomerTabPage.Controls.Add(this.SearchCustomerUserControl);
            this.SearchCustomerTabPage.Location = new System.Drawing.Point(4, 33);
            this.SearchCustomerTabPage.Name = "SearchCustomerTabPage";
            this.SearchCustomerTabPage.Size = new System.Drawing.Size(776, 398);
            this.SearchCustomerTabPage.TabIndex = 3;
            this.SearchCustomerTabPage.Text = "Search Customer";
            this.SearchCustomerTabPage.UseVisualStyleBackColor = true;
            // 
            // SearchCustomerUserControl
            // 
            this.SearchCustomerUserControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.SearchCustomerUserControl.Location = new System.Drawing.Point(0, 0);
            this.SearchCustomerUserControl.Name = "SearchCustomerUserControl";
            this.SearchCustomerUserControl.Size = new System.Drawing.Size(776, 398);
            this.SearchCustomerUserControl.TabIndex = 0;
            // 
            // WelcomeUserLabel
            // 
            this.WelcomeUserLabel.AutoSize = true;
            this.WelcomeUserLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.WelcomeUserLabel.Location = new System.Drawing.Point(7, 434);
            this.WelcomeUserLabel.Name = "WelcomeUserLabel";
            this.WelcomeUserLabel.Size = new System.Drawing.Size(143, 25);
            this.WelcomeUserLabel.TabIndex = 1;
            this.WelcomeUserLabel.Text = "Welcome, user";
            // 
            // LogoutLinkLabel
            // 
            this.LogoutLinkLabel.AutoSize = true;
            this.LogoutLinkLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.LogoutLinkLabel.Location = new System.Drawing.Point(708, 434);
            this.LogoutLinkLabel.Name = "LogoutLinkLabel";
            this.LogoutLinkLabel.Size = new System.Drawing.Size(72, 25);
            this.LogoutLinkLabel.TabIndex = 2;
            this.LogoutLinkLabel.TabStop = true;
            this.LogoutLinkLabel.Text = "Logout";
            this.LogoutLinkLabel.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LogoutLabelClicked);
            // 
            // CustomerDashboard
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Inherit;
            this.ClientSize = new System.Drawing.Size(784, 461);
            this.Controls.Add(this.LogoutLinkLabel);
            this.Controls.Add(this.WelcomeUserLabel);
            this.Controls.Add(this.MainDashboardTabControl);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "CustomerDashboard";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sofa So Good FMS - Customer Management";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.MainDashboardFormClose);
            this.MainDashboardTabControl.ResumeLayout(false);
            this.RegisterCustomerTabPage.ResumeLayout(false);
            this.EditCustomerTabPage.ResumeLayout(false);
            this.SearchCustomerTabPage.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl MainDashboardTabControl;
        private System.Windows.Forms.TabPage RegisterCustomerTabPage;
        private System.Windows.Forms.Label WelcomeUserLabel;
        private System.Windows.Forms.LinkLabel LogoutLinkLabel;
        private System.Windows.Forms.TabPage EditCustomerTabPage;
        private System.Windows.Forms.TabPage SearchCustomerTabPage;
        private RegisterCustomerUserControl CustomerRegistrationUserControl;
        private UserControls.EditCustomerUserControl EditCustomerUserControl;
        private UserControls.SearchCustomerUserControl SearchCustomerUserControl;
    }
}