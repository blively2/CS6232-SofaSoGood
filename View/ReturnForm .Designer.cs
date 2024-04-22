﻿namespace SofaSoGood.View
{
    partial class ReturnForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ReturnForm));
            this.TransactionIDLabel = new System.Windows.Forms.Label();
            this.MemberLabel = new System.Windows.Forms.Label();
            this.MemberListView = new System.Windows.Forms.ListView();
            this.MemberID = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FirstName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.LastName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Gender = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.DateOfBirth = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Address1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Address2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.City = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.State = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Zip = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Phone = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FurnitureDataGridView = new System.Windows.Forms.DataGridView();
            this.FurnitureID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FurnitureName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FurnitureCategory = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FurnitureStyle = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Description = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RentalRatePerDay = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ItemsLabel = new System.Windows.Forms.Label();
            this.ReturnDateLabel = new System.Windows.Forms.Label();
            this.ReturnAmountCostLabel = new System.Windows.Forms.Label();
            this.ReturnedByLabel = new System.Windows.Forms.Label();
            this.FineAmountLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.FurnitureDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // TransactionIDLabel
            // 
            this.TransactionIDLabel.AutoSize = true;
            this.TransactionIDLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.TransactionIDLabel.Location = new System.Drawing.Point(12, 9);
            this.TransactionIDLabel.Name = "TransactionIDLabel";
            this.TransactionIDLabel.Size = new System.Drawing.Size(126, 25);
            this.TransactionIDLabel.TabIndex = 0;
            this.TransactionIDLabel.Text = "Transaction#";
            // 
            // MemberLabel
            // 
            this.MemberLabel.AutoSize = true;
            this.MemberLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.MemberLabel.Location = new System.Drawing.Point(12, 34);
            this.MemberLabel.Name = "MemberLabel";
            this.MemberLabel.Size = new System.Drawing.Size(90, 25);
            this.MemberLabel.TabIndex = 1;
            this.MemberLabel.Text = "Member:";
            // 
            // MemberListView
            // 
            this.MemberListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.MemberID,
            this.FirstName,
            this.LastName,
            this.Gender,
            this.DateOfBirth,
            this.Address1,
            this.Address2,
            this.City,
            this.State,
            this.Zip,
            this.Phone});
            this.MemberListView.FullRowSelect = true;
            this.MemberListView.HideSelection = false;
            this.MemberListView.Location = new System.Drawing.Point(2, 62);
            this.MemberListView.MultiSelect = false;
            this.MemberListView.Name = "MemberListView";
            this.MemberListView.Size = new System.Drawing.Size(746, 61);
            this.MemberListView.TabIndex = 34;
            this.MemberListView.UseCompatibleStateImageBehavior = false;
            this.MemberListView.View = System.Windows.Forms.View.Details;
            // 
            // MemberID
            // 
            this.MemberID.Text = "MemberID";
            // 
            // FirstName
            // 
            this.FirstName.Text = "FirstName";
            // 
            // LastName
            // 
            this.LastName.Text = "LastName";
            // 
            // Gender
            // 
            this.Gender.Text = "Gender";
            // 
            // DateOfBirth
            // 
            this.DateOfBirth.Text = "DateOfBirth";
            // 
            // Address1
            // 
            this.Address1.Text = "Address1";
            // 
            // Address2
            // 
            this.Address2.Text = "Address2";
            // 
            // City
            // 
            this.City.Text = "City";
            // 
            // State
            // 
            this.State.Text = "State";
            // 
            // Zip
            // 
            this.Zip.Text = "Zip";
            // 
            // Phone
            // 
            this.Phone.Text = "Phone";
            // 
            // FurnitureDataGridView
            // 
            this.FurnitureDataGridView.AllowUserToAddRows = false;
            this.FurnitureDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.FurnitureDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.FurnitureID,
            this.FurnitureName,
            this.FurnitureCategory,
            this.FurnitureStyle,
            this.Description,
            this.RentalRatePerDay,
            this.Quantity});
            this.FurnitureDataGridView.Location = new System.Drawing.Point(2, 154);
            this.FurnitureDataGridView.MultiSelect = false;
            this.FurnitureDataGridView.Name = "FurnitureDataGridView";
            this.FurnitureDataGridView.RowTemplate.Height = 28;
            this.FurnitureDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.FurnitureDataGridView.Size = new System.Drawing.Size(746, 234);
            this.FurnitureDataGridView.TabIndex = 58;
            // 
            // FurnitureID
            // 
            this.FurnitureID.HeaderText = "ID";
            this.FurnitureID.Name = "FurnitureID";
            this.FurnitureID.ReadOnly = true;
            // 
            // FurnitureName
            // 
            this.FurnitureName.HeaderText = "Name";
            this.FurnitureName.Name = "FurnitureName";
            this.FurnitureName.ReadOnly = true;
            // 
            // FurnitureCategory
            // 
            this.FurnitureCategory.HeaderText = "Category";
            this.FurnitureCategory.Name = "FurnitureCategory";
            this.FurnitureCategory.ReadOnly = true;
            // 
            // FurnitureStyle
            // 
            this.FurnitureStyle.HeaderText = "Style";
            this.FurnitureStyle.Name = "FurnitureStyle";
            this.FurnitureStyle.ReadOnly = true;
            // 
            // Description
            // 
            this.Description.HeaderText = "Description";
            this.Description.Name = "Description";
            this.Description.ReadOnly = true;
            // 
            // RentalRatePerDay
            // 
            this.RentalRatePerDay.HeaderText = "RentalRatePerDay";
            this.RentalRatePerDay.Name = "RentalRatePerDay";
            this.RentalRatePerDay.ReadOnly = true;
            // 
            // Quantity
            // 
            this.Quantity.HeaderText = "Quantity";
            this.Quantity.Name = "Quantity";
            this.Quantity.ReadOnly = true;
            // 
            // ItemsLabel
            // 
            this.ItemsLabel.AutoSize = true;
            this.ItemsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.ItemsLabel.Location = new System.Drawing.Point(12, 126);
            this.ItemsLabel.Name = "ItemsLabel";
            this.ItemsLabel.Size = new System.Drawing.Size(65, 25);
            this.ItemsLabel.TabIndex = 59;
            this.ItemsLabel.Text = "Items:";
            // 
            // ReturnDateLabel
            // 
            this.ReturnDateLabel.AutoSize = true;
            this.ReturnDateLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.ReturnDateLabel.Location = new System.Drawing.Point(12, 391);
            this.ReturnDateLabel.Name = "ReturnDateLabel";
            this.ReturnDateLabel.Size = new System.Drawing.Size(121, 25);
            this.ReturnDateLabel.TabIndex = 60;
            this.ReturnDateLabel.Text = "Return Date:";
            // 
            // ReturnAmountCostLabel
            // 
            this.ReturnAmountCostLabel.AutoSize = true;
            this.ReturnAmountCostLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.ReturnAmountCostLabel.Location = new System.Drawing.Point(534, 391);
            this.ReturnAmountCostLabel.Name = "ReturnAmountCostLabel";
            this.ReturnAmountCostLabel.Size = new System.Drawing.Size(108, 25);
            this.ReturnAmountCostLabel.TabIndex = 61;
            this.ReturnAmountCostLabel.Text = "Total Cost:";
            // 
            // ReturnedByLabel
            // 
            this.ReturnedByLabel.AutoSize = true;
            this.ReturnedByLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.ReturnedByLabel.Location = new System.Drawing.Point(12, 427);
            this.ReturnedByLabel.Name = "ReturnedByLabel";
            this.ReturnedByLabel.Size = new System.Drawing.Size(129, 25);
            this.ReturnedByLabel.TabIndex = 62;
            this.ReturnedByLabel.Text = "Accepted By:";
            // 
            // FineAmountLabel
            // 
            this.FineAmountLabel.AutoSize = true;
            this.FineAmountLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.FineAmountLabel.Location = new System.Drawing.Point(534, 427);
            this.FineAmountLabel.Name = "FineAmountLabel";
            this.FineAmountLabel.Size = new System.Drawing.Size(56, 25);
            this.FineAmountLabel.TabIndex = 63;
            this.FineAmountLabel.Text = "Fine:";
            // 
            // ReturnForm
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Inherit;
            this.AutoSize = true;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ClientSize = new System.Drawing.Size(750, 461);
            this.Controls.Add(this.FineAmountLabel);
            this.Controls.Add(this.ReturnedByLabel);
            this.Controls.Add(this.ReturnAmountCostLabel);
            this.Controls.Add(this.ReturnDateLabel);
            this.Controls.Add(this.ItemsLabel);
            this.Controls.Add(this.FurnitureDataGridView);
            this.Controls.Add(this.MemberListView);
            this.Controls.Add(this.MemberLabel);
            this.Controls.Add(this.TransactionIDLabel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ReturnForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Receipt";
            ((System.ComponentModel.ISupportInitialize)(this.FurnitureDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label TransactionIDLabel;
        private System.Windows.Forms.Label MemberLabel;
        private System.Windows.Forms.ListView MemberListView;
        private System.Windows.Forms.ColumnHeader MemberID;
        private System.Windows.Forms.ColumnHeader FirstName;
        private System.Windows.Forms.ColumnHeader LastName;
        private System.Windows.Forms.ColumnHeader Gender;
        private System.Windows.Forms.ColumnHeader DateOfBirth;
        private System.Windows.Forms.ColumnHeader Address1;
        private System.Windows.Forms.ColumnHeader Address2;
        private System.Windows.Forms.ColumnHeader City;
        private System.Windows.Forms.ColumnHeader State;
        private System.Windows.Forms.ColumnHeader Zip;
        private System.Windows.Forms.ColumnHeader Phone;
        private System.Windows.Forms.DataGridView FurnitureDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn FurnitureID;
        private System.Windows.Forms.DataGridViewTextBoxColumn FurnitureName;
        private System.Windows.Forms.DataGridViewTextBoxColumn FurnitureCategory;
        private System.Windows.Forms.DataGridViewTextBoxColumn FurnitureStyle;
        private System.Windows.Forms.DataGridViewTextBoxColumn Description;
        private System.Windows.Forms.DataGridViewTextBoxColumn RentalRatePerDay;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantity;
        private System.Windows.Forms.Label ItemsLabel;
        private System.Windows.Forms.Label ReturnDateLabel;
        private System.Windows.Forms.Label ReturnAmountCostLabel;
        private System.Windows.Forms.Label ReturnedByLabel;
        private System.Windows.Forms.Label FineAmountLabel;
    }
}