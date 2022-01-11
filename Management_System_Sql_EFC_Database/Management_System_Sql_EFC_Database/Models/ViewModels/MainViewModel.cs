using Management_System_Sql_EFC_Database.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Models.ViewModels
{
    internal class MainViewModel : ObservableObject
    {
        private object _currentView;

        public MainViewModel()
        {
            CaseRegisterViewModel = new CaseRegisterViewModel();

        }

        public object CurrentView
        {
            get { return _currentView; }
            set
            {
                _currentView = value;
                OnPropertyChanged();
            }
        }

        public RelayCommand CaseRegisterViewModelCommand { get; set; }
        public CaseRegisterViewModel CaseRegisterViewModel { get; set; }

        public RelayCommand CaseViewModelCommand { get; set; }
        public CaseViewModel CaseViewModel { get; set; }

        public RelayCommand UserRegisterViewModelCommand { get; set; }
        public UserRegisterViewModel UserRegisterViewModel { get; set; }

        public RelayCommand UserViewModelCommand { get; set; }
        public UserViewModel UserViewModel { get; set; }

        public RelayCommand MainPageViewModelCommand { get; set; }
        public MainPageViewModel MainPageViewModel { get; set; }

    }
}
