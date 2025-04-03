namespace Habits.Models
{
    public class Habit
    {
        public string Percentage { get; set; } = string.Empty;
        public double PercentageValue { get; set; }
        
        // Keep the original property for backward compatibility
        public string PercentageColor { get; set; } = string.Empty;
        
        // New property that uses the enum
        public ColorCategory ColorCategory { get; set; }
        
        public required string Title { get; set; }
        public required string Description { get; set; }
        public required string Amount { get; set; }
        public required string AmountType { get; set; }
    }
}