using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Habits.Models;
using System;

namespace Habits.ViewModels
{
    public partial class MainPageViewModel : ObservableObject
    {
        [ObservableProperty]
        private ObservableCollection<Habit> _habits = new();
        
        [ObservableProperty]
        private bool _isLoading;

        public MainPageViewModel()
        {
            // We don't load data in constructor to avoid async void pattern
            // Data will be loaded from the page's Loaded event
        }

        [RelayCommand]
        public async Task LoadDataAsync()
        {
            try
            {
                IsLoading = true;
                
                // Simulate network or database operation
                await Task.Delay(800);
                
                // Clear existing data first
                Habits.Clear();
                
                // Generate sample data
                var habitsData = new[]
                {
                    new Habit() 
                    { 
                        Percentage = "35%", 
                        PercentageValue = 35.0,
                        PercentageColor = "#ffa500", 
                        ColorCategory = ColorCategory.Orange,
                        Title = "Walking", 
                        Description = "How Many in May?", 
                        Amount = "24.08", 
                        AmountType = "km" 
                    },
                    
                    new Habit() 
                    { 
                        Percentage = "56%", 
                        PercentageValue = 56.0,
                        PercentageColor = "#32CD32", 
                        ColorCategory = ColorCategory.Green,
                        Title = "Vacations in France", 
                        Description = "Budget with Emma", 
                        Amount = "72.000", 
                        AmountType = "USD" 
                    },
                    
                    new Habit() 
                    { 
                        Percentage = "80%", 
                        PercentageValue = 80.0,
                        PercentageColor = "#01abf3", 
                        ColorCategory = ColorCategory.Blue,
                        Title = "Reading", 
                        Description = "Goal: Read 16 books a year", 
                        Amount = "12", 
                        AmountType = "/16" 
                    },
                    
                    new Habit() 
                    { 
                        Percentage = "10%", 
                        PercentageValue = 10.0,
                        PercentageColor = "#ff4582", 
                        ColorCategory = ColorCategory.Red,
                        Title = "Quit Smoking", 
                        Description = "Last cigar on 0420", 
                        Amount = "24.08", 
                        AmountType = "km" 
                    },
                    
                    new Habit() 
                    { 
                        Percentage = "99%", 
                        PercentageValue = 99.0,
                        PercentageColor = "#ffa500", 
                        ColorCategory = ColorCategory.Orange,
                        Title = "Walking", 
                        Description = "How Many in May?", 
                        Amount = "24.08", 
                        AmountType = "km" 
                    },
                    
                    new Habit() 
                    { 
                        Percentage = "50%", 
                        PercentageValue = 50.0,
                        PercentageColor = "#159bff", 
                        ColorCategory = ColorCategory.Blue,
                        Title = "Vacations in France", 
                        Description = "Budget with Emma", 
                        Amount = "72.000", 
                        AmountType = "USD" 
                    }
                };
                
                // Add habits one by one for better UI responsiveness
                foreach (var habit in habitsData)
                {
                    Habits.Add(habit);
                    
                    // Small delay between adds for visual effect (optional)
                    await Task.Delay(50);
                }
            }
            catch (Exception ex)
            {
                // Log exception (in a real app, you'd want better error handling)
                System.Diagnostics.Debug.WriteLine($"Error loading habits: {ex}");
            }
            finally
            {
                IsLoading = false;
            }
        }
    }
}
