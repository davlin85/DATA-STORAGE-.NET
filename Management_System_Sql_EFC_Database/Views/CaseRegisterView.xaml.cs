﻿using Management_System_Sql_EFC_Database.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Management_System_Sql_EFC_Database.Views
{
    public partial class CaseRegisterView : UserControl
    {
        private readonly ICaseUtility caseUtility = new CaseUtility();
        private readonly IUserUtility userUtility = new UserUtility();
        private readonly IStatusUtility statusUtility = new StatusUtility();
        private readonly IAdminUtility adminUtility = new AdminUtility();

        public CaseRegisterView()
        {
            InitializeComponent();

            AddUser.SelectedValuePath = "Key";
            AddUser.DisplayMemberPath = "Value";

            AddStatus.SelectedValuePath = "Key";
            AddStatus.DisplayMemberPath = "Value";

            AddAdmin.SelectedValuePath = "Key";
            AddAdmin.DisplayMemberPath = "Value";

            ClearForms();
            GetUser();
            GetStatus();
            GetAdmin();
        }

        private void AddSubmit_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(AddHeadLine.Text) && !string.IsNullOrEmpty(AddDescription.Text))
            {
                if (caseUtility.CreateCase(AddHeadLine.Text, AddDescription.Text, DateTime.Now, (int)AddUser.SelectedValue, (int)AddStatus.SelectedValue, (int)AddAdmin.SelectedValue))
                {
                    AddSucess.Content = "You've successfully created a Case!";
                    ClearForms();
                }

                else
                {
                    AddError.Content = "Something went wrong!\nTry again!";
                    ClearForms();
                }

            }
        }

        private void ClearForms()
        {
            AddHeadLine.Text = "";
            AddDescription.Text = "";

        }

        private void GetUser()
        {
            AddUser.Items.Clear();
            foreach(var user in userUtility.GetAllUsers())
                AddUser.Items.Add(new KeyValuePair<int, string>(user.Id, user.FullName));
        }

        private void GetStatus()
        {
            AddStatus.Items.Clear();
            foreach (var status in statusUtility.GetAllStatus())
                AddStatus.Items.Add(new KeyValuePair<int, string>(status.Id, status.StatusName));
        }

        private void GetAdmin()
        {
            AddAdmin.Items.Clear();
            foreach (var admin in adminUtility.GetAllAdmin())
                AddAdmin.Items.Add(new KeyValuePair<int, string>(admin.Id, admin.AdminName));
        }
    }
}
