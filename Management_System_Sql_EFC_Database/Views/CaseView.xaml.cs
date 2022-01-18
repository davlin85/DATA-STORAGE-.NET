using Management_System_Sql_EFC_Database.Models;
using Management_System_Sql_EFC_Database.Utilities;
using Microsoft.EntityFrameworkCore;
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
    public partial class CaseView : UserControl
    {
        private readonly ICaseUtility caseUtility = new CaseUtility();

        public CaseView()
        {
            InitializeComponent();

            lvCases.Items.Clear();
            foreach (var Case in caseUtility.GetAllCases())
            {
                lvCases.Items.Add(Case);
            }

        }
    }
}
