using Management_System_Sql_EFC_Database.Data;
using Management_System_Sql_EFC_Database.Utilities;
using Management_System_Sql_EFC_Database.Models;
using System;
using System.Collections.Generic;
using System.Data;
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
    public partial class MainPageView : UserControl
    {
        private readonly IUserUtility userUtility = new UserUtility();
        private readonly ICaseUtility caseUtility = new CaseUtility();
        private readonly IStatusUtility statusUtility = new StatusUtility();

        public MainPageView()
        {
            InitializeComponent();

            lvCases.Items.Clear();
            foreach (var Case in caseUtility.Get10Cases())
            {
                lvCases.Items.Add(Case);
            }

            lvUser.Items.Clear();
            foreach (var Case in userUtility.Get10Users())
            {
                lvUser.Items.Add(Case);
            }

        }
    }
}
