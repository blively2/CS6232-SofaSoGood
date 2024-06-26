﻿namespace SofaSoGood.UserControls
{
    partial class SearchFurnitureUserControl
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.TitleLabel = new System.Windows.Forms.Label();
            this.furnitureIDTextBox = new System.Windows.Forms.TextBox();
            this.searchByFurnitureIDButton = new System.Windows.Forms.Button();
            this.furnitureIDLabel = new System.Windows.Forms.Label();
            this.searchByCategoryButton = new System.Windows.Forms.Button();
            this.furnitureCategoryLabel = new System.Windows.Forms.Label();
            this.styleButton = new System.Windows.Forms.Button();
            this.furnitureStyleLabel = new System.Windows.Forms.Label();
            this.furnitureIDWarningLabel = new System.Windows.Forms.Label();
            this.categoryWarningLabel = new System.Windows.Forms.Label();
            this.styleWarningLabel = new System.Windows.Forms.Label();
            this.categoryComboBox = new System.Windows.Forms.ComboBox();
            this.styleComboBox = new System.Windows.Forms.ComboBox();
            this.furnitureListView = new System.Windows.Forms.ListView();
            this.FurnitureID = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FurnitureName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FurnitureCategory = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FurnitureStyle = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Description = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.RentalRatePerDay = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.InStockQuantity = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.TotalQuantity = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.doubleClicktoSelectFurnitureLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // TitleLabel
            // 
            this.TitleLabel.AutoSize = true;
            this.TitleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F);
            this.TitleLabel.Location = new System.Drawing.Point(310, 25);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(311, 29);
            this.TitleLabel.TabIndex = 1;
            this.TitleLabel.Text = "Search and Select Furniture";
            // 
            // furnitureIDTextBox
            // 
            this.furnitureIDTextBox.Location = new System.Drawing.Point(278, 76);
            this.furnitureIDTextBox.Name = "furnitureIDTextBox";
            this.furnitureIDTextBox.Size = new System.Drawing.Size(171, 26);
            this.furnitureIDTextBox.TabIndex = 21;
            this.furnitureIDTextBox.TextChanged += new System.EventHandler(this.FurnitureIDTextBoxTextChanged);
            // 
            // searchByFurnitureIDButton
            // 
            this.searchByFurnitureIDButton.Location = new System.Drawing.Point(455, 76);
            this.searchByFurnitureIDButton.Name = "searchByFurnitureIDButton";
            this.searchByFurnitureIDButton.Size = new System.Drawing.Size(200, 30);
            this.searchByFurnitureIDButton.TabIndex = 22;
            this.searchByFurnitureIDButton.Text = "By Furniture ID";
            this.searchByFurnitureIDButton.UseVisualStyleBackColor = true;
            this.searchByFurnitureIDButton.Click += new System.EventHandler(this.SearchByFurnitureIDButtonClick);
            // 
            // furnitureIDLabel
            // 
            this.furnitureIDLabel.AutoSize = true;
            this.furnitureIDLabel.Location = new System.Drawing.Point(124, 83);
            this.furnitureIDLabel.Name = "furnitureIDLabel";
            this.furnitureIDLabel.Size = new System.Drawing.Size(98, 20);
            this.furnitureIDLabel.TabIndex = 23;
            this.furnitureIDLabel.Text = "Furniture ID:";
            // 
            // searchByCategoryButton
            // 
            this.searchByCategoryButton.Location = new System.Drawing.Point(455, 118);
            this.searchByCategoryButton.Name = "searchByCategoryButton";
            this.searchByCategoryButton.Size = new System.Drawing.Size(200, 30);
            this.searchByCategoryButton.TabIndex = 25;
            this.searchByCategoryButton.Text = "By Furniture Category";
            this.searchByCategoryButton.UseVisualStyleBackColor = true;
            this.searchByCategoryButton.Click += new System.EventHandler(this.SearchByCategoryButtonClick);
            // 
            // furnitureCategoryLabel
            // 
            this.furnitureCategoryLabel.AutoSize = true;
            this.furnitureCategoryLabel.Location = new System.Drawing.Point(124, 118);
            this.furnitureCategoryLabel.Name = "furnitureCategoryLabel";
            this.furnitureCategoryLabel.Size = new System.Drawing.Size(145, 20);
            this.furnitureCategoryLabel.TabIndex = 26;
            this.furnitureCategoryLabel.Text = "Furniture Category:";
            // 
            // styleButton
            // 
            this.styleButton.Location = new System.Drawing.Point(455, 158);
            this.styleButton.Name = "styleButton";
            this.styleButton.Size = new System.Drawing.Size(200, 30);
            this.styleButton.TabIndex = 28;
            this.styleButton.Text = "By Furniture Style";
            this.styleButton.UseVisualStyleBackColor = true;
            this.styleButton.Click += new System.EventHandler(this.SearchByStyleButtonClick);
            // 
            // furnitureStyleLabel
            // 
            this.furnitureStyleLabel.AutoSize = true;
            this.furnitureStyleLabel.Location = new System.Drawing.Point(124, 158);
            this.furnitureStyleLabel.Name = "furnitureStyleLabel";
            this.furnitureStyleLabel.Size = new System.Drawing.Size(116, 20);
            this.furnitureStyleLabel.TabIndex = 29;
            this.furnitureStyleLabel.Text = "Furniture Style:";
            // 
            // furnitureIDWarningLabel
            // 
            this.furnitureIDWarningLabel.AutoSize = true;
            this.furnitureIDWarningLabel.ForeColor = System.Drawing.Color.Red;
            this.furnitureIDWarningLabel.Location = new System.Drawing.Point(708, 83);
            this.furnitureIDWarningLabel.Name = "furnitureIDWarningLabel";
            this.furnitureIDWarningLabel.Size = new System.Drawing.Size(0, 20);
            this.furnitureIDWarningLabel.TabIndex = 30;
            // 
            // categoryWarningLabel
            // 
            this.categoryWarningLabel.AutoSize = true;
            this.categoryWarningLabel.ForeColor = System.Drawing.Color.Red;
            this.categoryWarningLabel.Location = new System.Drawing.Point(708, 121);
            this.categoryWarningLabel.Name = "categoryWarningLabel";
            this.categoryWarningLabel.Size = new System.Drawing.Size(186, 20);
            this.categoryWarningLabel.TabIndex = 31;
            this.categoryWarningLabel.Text = "Invalid FurnitureCategory";
            // 
            // styleWarningLabel
            // 
            this.styleWarningLabel.AutoSize = true;
            this.styleWarningLabel.ForeColor = System.Drawing.Color.Red;
            this.styleWarningLabel.Location = new System.Drawing.Point(708, 158);
            this.styleWarningLabel.Name = "styleWarningLabel";
            this.styleWarningLabel.Size = new System.Drawing.Size(93, 20);
            this.styleWarningLabel.TabIndex = 32;
            this.styleWarningLabel.Text = "Invalid Style";
            // 
            // categoryComboBox
            // 
            this.categoryComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.categoryComboBox.FormattingEnabled = true;
            this.categoryComboBox.Location = new System.Drawing.Point(278, 118);
            this.categoryComboBox.Name = "categoryComboBox";
            this.categoryComboBox.Size = new System.Drawing.Size(171, 28);
            this.categoryComboBox.TabIndex = 46;
            this.categoryComboBox.DropDown += new System.EventHandler(this.CategoryComboBoxDropDown);
            // 
            // styleComboBox
            // 
            this.styleComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.styleComboBox.FormattingEnabled = true;
            this.styleComboBox.Location = new System.Drawing.Point(278, 158);
            this.styleComboBox.Name = "styleComboBox";
            this.styleComboBox.Size = new System.Drawing.Size(171, 28);
            this.styleComboBox.TabIndex = 47;
            this.styleComboBox.DropDown += new System.EventHandler(this.StyleComboBoxDropDown);
            // 
            // furnitureListView
            // 
            this.furnitureListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.FurnitureID,
            this.FurnitureName,
            this.FurnitureCategory,
            this.FurnitureStyle,
            this.Description,
            this.RentalRatePerDay,
            this.InStockQuantity,
            this.TotalQuantity});
            this.furnitureListView.FullRowSelect = true;
            this.furnitureListView.HideSelection = false;
            this.furnitureListView.Location = new System.Drawing.Point(0, 285);
            this.furnitureListView.Name = "furnitureListView";
            this.furnitureListView.Size = new System.Drawing.Size(970, 110);
            this.furnitureListView.TabIndex = 48;
            this.furnitureListView.UseCompatibleStateImageBehavior = false;
            this.furnitureListView.View = System.Windows.Forms.View.Details;
            this.furnitureListView.DoubleClick += new System.EventHandler(this.FurnitureListViewDoubleClick);
            // 
            // FurnitureID
            // 
            this.FurnitureID.Text = "Furniture ID";
            this.FurnitureID.Width = 90;
            // 
            // FurnitureName
            // 
            this.FurnitureName.Text = "Furniture Name";
            this.FurnitureName.Width = 90;
            // 
            // FurnitureCategory
            // 
            this.FurnitureCategory.Text = "Furniture Category";
            this.FurnitureCategory.Width = 120;
            // 
            // FurnitureStyle
            // 
            this.FurnitureStyle.Text = "Furniture Style";
            this.FurnitureStyle.Width = 90;
            // 
            // Description
            // 
            this.Description.Text = "Description";
            this.Description.Width = 120;
            // 
            // RentalRatePerDay
            // 
            this.RentalRatePerDay.Text = "Rental Rate Per Day";
            this.RentalRatePerDay.Width = 90;
            // 
            // InStockQuantity
            // 
            this.InStockQuantity.Text = "In Stock Quantity";
            this.InStockQuantity.Width = 90;
            // 
            // TotalQuantity
            // 
            this.TotalQuantity.Text = "Total Quantity";
            this.TotalQuantity.Width = 90;
            // 
            // doubleClicktoSelectFurnitureLabel
            // 
            this.doubleClicktoSelectFurnitureLabel.AutoSize = true;
            this.doubleClicktoSelectFurnitureLabel.ForeColor = System.Drawing.Color.Black;
            this.doubleClicktoSelectFurnitureLabel.Location = new System.Drawing.Point(325, 250);
            this.doubleClicktoSelectFurnitureLabel.Name = "doubleClicktoSelectFurnitureLabel";
            this.doubleClicktoSelectFurnitureLabel.Size = new System.Drawing.Size(236, 20);
            this.doubleClicktoSelectFurnitureLabel.TabIndex = 49;
            this.doubleClicktoSelectFurnitureLabel.Text = "Double Click to Select Furniture.";
            // 
            // SearchFurnitureUserControl
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Inherit;
            this.Controls.Add(this.doubleClicktoSelectFurnitureLabel);
            this.Controls.Add(this.furnitureListView);
            this.Controls.Add(this.styleComboBox);
            this.Controls.Add(this.categoryComboBox);
            this.Controls.Add(this.styleWarningLabel);
            this.Controls.Add(this.categoryWarningLabel);
            this.Controls.Add(this.furnitureIDWarningLabel);
            this.Controls.Add(this.styleButton);
            this.Controls.Add(this.furnitureStyleLabel);
            this.Controls.Add(this.searchByCategoryButton);
            this.Controls.Add(this.furnitureCategoryLabel);
            this.Controls.Add(this.furnitureIDTextBox);
            this.Controls.Add(this.searchByFurnitureIDButton);
            this.Controls.Add(this.furnitureIDLabel);
            this.Controls.Add(this.TitleLabel);
            this.Name = "SearchFurnitureUserControl";
            this.Size = new System.Drawing.Size(970, 398);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label TitleLabel;
        private System.Windows.Forms.TextBox furnitureIDTextBox;
        private System.Windows.Forms.Button searchByFurnitureIDButton;
        private System.Windows.Forms.Label furnitureIDLabel;
        private System.Windows.Forms.Button searchByCategoryButton;
        private System.Windows.Forms.Label furnitureCategoryLabel;
        private System.Windows.Forms.Button styleButton;
        private System.Windows.Forms.Label furnitureStyleLabel;
        private System.Windows.Forms.Label furnitureIDWarningLabel;
        private System.Windows.Forms.Label categoryWarningLabel;
        private System.Windows.Forms.Label styleWarningLabel;
        private System.Windows.Forms.ComboBox categoryComboBox;
        private System.Windows.Forms.ComboBox styleComboBox;
        private System.Windows.Forms.ListView furnitureListView;
        private System.Windows.Forms.ColumnHeader FurnitureID;
        private System.Windows.Forms.ColumnHeader FurnitureName;
        private System.Windows.Forms.ColumnHeader FurnitureCategory;
        private System.Windows.Forms.ColumnHeader FurnitureStyle;
        private System.Windows.Forms.ColumnHeader Description;
        private System.Windows.Forms.ColumnHeader RentalRatePerDay;
        private System.Windows.Forms.ColumnHeader InStockQuantity;
        private System.Windows.Forms.ColumnHeader TotalQuantity;
        private System.Windows.Forms.Label doubleClicktoSelectFurnitureLabel;
    }
}
