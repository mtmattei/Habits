using System;
using System.Collections.Generic;
using Microsoft.UI;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Media;
using Windows.UI;

namespace Habits.Converters
{
    public class ColorConverter : IValueConverter
    {
        // Add a static cache for reusing SolidColorBrush objects
        private static readonly Dictionary<string, SolidColorBrush> _brushCache = new Dictionary<string, SolidColorBrush>();
        
        // Default brush to use when conversion fails
        private static readonly SolidColorBrush _defaultBrush = new SolidColorBrush(Colors.Black);

        public object Convert(object value, Type targetType, object parameter, string language)
        {
            if (value is string colorString && !string.IsNullOrEmpty(colorString))
            {
                try
                {
                    // Check if we already have this color in our cache
                    if (_brushCache.TryGetValue(colorString, out SolidColorBrush cachedBrush))
                    {
                        return cachedBrush;
                    }
                    
                    // If not in cache, we need to create a new brush
                    SolidColorBrush newBrush;
                    
                    if (colorString.StartsWith("#"))
                    {
                        // Remove # if present
                        string cleanString = colorString.Replace("#", string.Empty);
                        
                        // Convert hex to color
                        byte a = 255;
                        byte r, g, b;
                        
                        if (cleanString.Length == 6)
                        {
                            // No alpha specified, use default 255
                            r = byte.Parse(cleanString.Substring(0, 2), System.Globalization.NumberStyles.HexNumber);
                            g = byte.Parse(cleanString.Substring(2, 2), System.Globalization.NumberStyles.HexNumber);
                            b = byte.Parse(cleanString.Substring(4, 2), System.Globalization.NumberStyles.HexNumber);
                        }
                        else if (cleanString.Length == 8)
                        {
                            // Alpha specified
                            a = byte.Parse(cleanString.Substring(0, 2), System.Globalization.NumberStyles.HexNumber);
                            r = byte.Parse(cleanString.Substring(2, 2), System.Globalization.NumberStyles.HexNumber);
                            g = byte.Parse(cleanString.Substring(4, 2), System.Globalization.NumberStyles.HexNumber);
                            b = byte.Parse(cleanString.Substring(6, 2), System.Globalization.NumberStyles.HexNumber);
                        }
                        else
                        {
                            // Invalid hex color
                            return _defaultBrush;
                        }
                        
                        newBrush = new SolidColorBrush(Color.FromArgb(a, r, g, b));
                        
                        // Cache the brush for future reuse
                        _brushCache[colorString] = newBrush;
                        
                        return newBrush;
                    }
                }
                catch
                {
                    // Return a default color if conversion fails
                    return _defaultBrush;
                }
            }
            
            // Return a default color if value is null or empty
            return _defaultBrush;
        }

        public object ConvertBack(object value, Type targetType, object parameter, string language)
        {
            // Support for two-way binding if needed
            if (value is SolidColorBrush brush)
            {
                Color color = brush.Color;
                return $"#{color.A:X2}{color.R:X2}{color.G:X2}{color.B:X2}";
            }
            
            return "#000000"; // Default black
        }
    }
}