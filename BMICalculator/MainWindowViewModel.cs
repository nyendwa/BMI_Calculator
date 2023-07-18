using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.ComponentModel;
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

        
       
    }
}
