﻿using SofaSoGood.Controller;
using SofaSoGood.Model;
using SofaSoGood.View;
using System;
using System.Drawing;
using System.Windows.Forms;

namespace SofaSoGood.UserControls
{
    /// <summary>
    /// Represents the user control used to display a customer's rental history.
    /// </summary>
    public partial class RentalHistoryUserControl : UserControl
    {
        /// <summary>
        /// Controller for rental operations.
        /// </summary>
        private RentalController rentalController;
        private MemberController memberController;

        /// <summary>
        /// Initializes a new instance of the <see cref="RentalHistoryUserControl"/> class.
        /// </summary>
        public RentalHistoryUserControl()
        {
            InitializeComponent();
            InitializeDataGridView();
            rentalController = new RentalController();
            memberController = new MemberController();
        }

        /// <summary>
        /// Sets up columns and their formatting in the DataGridView for displaying rental transactions.
        /// </summary>
        private void InitializeDataGridView()
        {
            rentalHistoryDataGridView.Columns.Add("RentalTransactionID", "Transaction ID");
            rentalHistoryDataGridView.Columns.Add("RentalDate", "Rental Date");
            rentalHistoryDataGridView.Columns.Add("DueDate", "Due Date");
            rentalHistoryDataGridView.Columns.Add("TotalCost", "Total Cost");

            rentalHistoryDataGridView.Columns["RentalDate"].DefaultCellStyle.Format = "yyyy-MM-dd";
            rentalHistoryDataGridView.Columns["DueDate"].DefaultCellStyle.Format = "yyyy-MM-dd";
            rentalHistoryDataGridView.Columns["TotalCost"].DefaultCellStyle.Format = "C2";

            rentalHistoryDataGridView.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }

        /// <summary>
        /// Loads and displays the rental history for a specified member ID.
        /// </summary>
        /// <param name="memberId">The member ID whose rental history is to be displayed.</param>
        public void LoadRentalHistory(int memberId)
        {
            errorMessageLabel.Text = "";
            rentalHistoryDataGridView.Rows.Clear();

            var rentalHistory = rentalController.GetRentalHistoryByMemberId(memberId);
            var member = memberController.GetMemberById(memberId);

            if (rentalHistory.Count > 0)
            {
                if (member != null)
                {
                    viewedMemberLabel.Text = $"Viewing rentals for: {member.FirstName} {member.LastName}";
                }

                foreach (var transaction in rentalHistory)
                {
                    rentalHistoryDataGridView.Rows.Add(
                        transaction.RentalTransactionID,
                        transaction.RentalDate.ToString("yyyy-MM-dd"),
                        transaction.DueDate.ToString("yyyy-MM-dd"),
                        transaction.TotalCost.ToString("C2")
                    );
                }
            }
            else
            {
                errorMessageLabel.Text = $"No rental history found for Member ID: {memberId}";
                errorMessageLabel.ForeColor = Color.Red;
                viewedMemberLabel.Text = "";
            }
        }

        /// <summary>
        /// Handles the click event on the search history button to initiate the rental history search.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        private void SearchHistoryButton_Click(object sender, EventArgs e)
        {
            if (int.TryParse(memberIdTextBox.Text, out int memberId))
            {
                LoadRentalHistory(memberId);
            }
            else
            {
                errorMessageLabel.Text = "Please enter a valid Member ID.";
                errorMessageLabel.ForeColor = Color.Red;
                rentalHistoryDataGridView.Rows.Clear();
                viewedMemberLabel.Text = "";
            }
        }

        /// <summary>
        /// Handles the click event on the clear search button to reset the form.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        private void ClearSearchButton_Click(object sender, EventArgs e)
        {
            ClearHistoryForm();
        }

        /// <summary>
        /// Clears the history form and resets it to its initial state.
        /// </summary>
        private void ClearHistoryForm()
        {
            rentalHistoryDataGridView.Rows.Clear();
            memberIdTextBox.Clear();
            errorMessageLabel.Text = "";
            viewedMemberLabel.Text = "";
        }

        /// <summary>
        /// Handles changes in the text of the member ID text box, clearing the error message if any text is present.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        private void MemberIdTextBox_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(errorMessageLabel.Text))
            {
                errorMessageLabel.Text = "";
            }
        }

        /// <summary>
        /// Double clicking a transaction in Rental History displays the itemized ReceiptForm
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        private void RentalHistoryDataGridViewCellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.RowIndex >= 0 && e.ColumnIndex >= 0)
            {
                var row = rentalHistoryDataGridView.Rows[e.RowIndex];
                int rentalTransactionID = Convert.ToInt32(row.Cells["RentalTransactionID"].Value);
                RentalTransaction TransactionToDisplay =this.rentalController.GetRentalTransaction(rentalTransactionID);

                var receiptForm = new ReceiptForm(TransactionToDisplay);
                receiptForm.ShowDialog();
            }
        }
    }
}
