using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Media;
using System;
using Habits.Models;

namespace Habits.Converters
{
    public class ColorCategoryConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, string language)
        {
            if (value is ColorCategory category)
            {
                // Map each category to a ThemeResource key
                return (SolidColorBrush)App.Current.Resources[GetResourceKeyForCategory(category)];
            }
            
            // Default if not a valid category
            return (SolidColorBrush)App.Current.Resources["PrimaryColor"];
        }

        public object ConvertBack(object value, Type targetType, object parameter, string language)
        {
            throw new NotImplementedException();
        }
        
        private string GetResourceKeyForCategory(ColorCategory category)
        {
            return category switch
            {
                ColorCategory.Orange => "AccentOrangeBrush",
                ColorCategory.Green => "AccentGreenBrush",
                ColorCategory.Blue => "AccentBlueBrush",
                ColorCategory.Red => "AccentPinkBrush",
                ColorCategory.Purple => "PrimaryBrush",
                _ => "PrimaryBrush" // Default to primary
            };
        }
    }
}