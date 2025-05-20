# Extension Methods in C#

Extension methods in C# allow you to "add" methods to existing types without modifying the original type. This is especially useful for adding functionality to types you don't control or can't inherit from.

## Key Concepts

- Extension methods are defined as static methods in static classes
- The first parameter uses the `this` keyword followed by the type being extended
- They appear as instance methods on the extended type
- They don't actually modify the original type—they're syntactic sugar over static method calls

## Basic Syntax

```csharp
// Extension method definition
public static class StringExtensions
{
    public static bool IsNullOrEmpty(this string str)
    {
        return string.IsNullOrEmpty(str);
    }
    
    public static string Truncate(this string str, int maxLength)
    {
        if (str == null) return null;
        return str.Length <= maxLength ? str : str.Substring(0, maxLength) + "...";
    }
}
```

## Usage

```csharp
// Using the extension methods
string text = "Hello, World!";
bool isEmpty = text.IsNullOrEmpty();  // false
string truncated = text.Truncate(5);  // "Hello..."
```

## Important Rules

1. Extension methods must be defined in a static class
2. The method itself must be static
3. The first parameter must use the `this` keyword
4. The class containing extension methods should be in scope with a `using` directive

## Common Use Cases

- Adding utility methods to primitive types
- Extending framework classes (like `String`, `IEnumerable<T>`)
- Implementing LINQ-style operations
- Creating fluent interfaces
- Adding behavior to interfaces

## Limitations

- Can't access private members of the extended type
- Less discoverable than actual instance methods
- Can be shadowed by instance methods with the same signature
- Can't override existing methods

Extension methods provide a powerful way to enhance existing types with new functionality without breaking encapsulation or requiring inheritance.