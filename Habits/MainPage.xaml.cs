using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Habits.ViewModels;
using System;

namespace Habits;

public sealed partial class MainPage : Page
{
    public MainPageViewModel ViewModel { get; } = new();
    
    public MainPage()
    {
        // Set DataContext before InitializeComponent
        this.DataContext = ViewModel;
        
        this.InitializeComponent();
        
        // Show loading overlay initially
        LoadingOverlay.Visibility = Visibility.Visible;
        
        // Set up property changed handler for IsLoading
        ViewModel.PropertyChanged += (sender, e) => 
        {
            if (e.PropertyName == nameof(ViewModel.IsLoading))
            {
                LoadingOverlay.Visibility = ViewModel.IsLoading ? Visibility.Visible : Visibility.Collapsed;
            }
        };
        
        // Load data when page is loaded
        this.Loaded += MainPage_Loaded;
    }

    private async void MainPage_Loaded(object sender, RoutedEventArgs e)
    {
        // Load data asynchronously
        await ViewModel.LoadDataAsync();
    }
}
