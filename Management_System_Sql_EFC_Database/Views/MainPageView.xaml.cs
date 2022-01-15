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
    /// <summary>
    /// Interaction logic for MainPageView.xaml
    /// </summary>
    public partial class MainPageView : UserControl
    {
        private readonly IUserUtility userUtility = new UserUtility();
        private readonly ICaseUtility caseUtility = new CaseUtility();

        public MainPageView()
        {
            InitializeComponent();

            lvUsers.Items.Clear();
            foreach (var user in userUtility.GetAllUsers())
            {
                lvUsers.Items.Add(user);
            }

            lvCases.Items.Clear();
            foreach (var Case in caseUtility.GetAllCases())
            {
                lvCases.Items.Add(Case);
            }

        }
    }
}