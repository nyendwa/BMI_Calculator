using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;

namespace BMICalculator
{
    public partial class MainWindowViewModel : ObservableObject
    {        
        private string? _weight;
        private string? _height;
        private bool _isMale;
        private bool _isFemale;
        private string? age;

        public string? Age { 
            get => age;
            set
            {
                if(age != value)
                {
                    age = value;
                    OnPropertyChanged();
                }
            }   
        }


        public ICommand ClearCommand { get; }
        public ICommand CalculateCommand { get; }
        private void Clear()
        {
            IsMale = false; // Assuming you have a boolean property named IsMale
            IsFemale = false; // Assuming you have a boolean property named IsFemale   
            Age = ""; // Assuming you have a string property named Age
            Weight = "";
            Height = "";   
        }
        
        public MainWindowViewModel()
        {
            ClearCommand = new RelayCommand(Clear);
            CalculateCommand = new RelayCommand(() =>
            {
                string result = CalculateBMI(Weight, Height);
                MessageBox.Show(result);
            });

        }
        public string? Weight
        {
            get { return _weight; }
            set
            {
                _weight = value;
                OnPropertyChanged();
                
            }
        }

        public string? Height
        {
            get { return _height; }
            set
            {
                _height = value;
                OnPropertyChanged();
               
            }
        }

        public bool IsMale
        {
            get { return _isMale; }
            set
            {
                _isMale = value;
                OnPropertyChanged();
            }
        }

        public bool IsFemale
        {
            get { return _isFemale; }
            set
            {
                _isFemale = value;
                OnPropertyChanged();
                
            }
        }

        public string CalculateBMI(string weightString, string heightString)
        {
            if (!double.TryParse(weightString, out double weight) || !double.TryParse(heightString, out double height))
            {
                return "Invalid input";
            }

            double bmi = weight / (height * height/100);

            if (bmi < 18.5)
            {
                return "Underweight";
            }
            else if (bmi < 25)
            {
                return "Normal";
            }
            else if (bmi < 30)
            {
                return "Overweight";
            }
            else
            {
                return "Obese";
            }
        }


    }
}
