# Interfaces in C#

An interface in C# is a contract that defines a set of methods, properties, events, or indexers without implementation. Classes or structs that implement an interface must provide implementations for all its members.

## Basic Syntax

```csharp
// Interface definition
public interface IShape
{
    double CalculateArea();
    double CalculatePerimeter();
    string Color { get; set; }
}

// Class implementing the interface
public class Circle : IShape
{
    public double Radius { get; set; }
    public string Color { get; set; }
    
    public double CalculateArea()
    {
        return Math.PI * Radius * Radius;
    }
    
    public double CalculatePerimeter()
    {
        return 2 * Math.PI * Radius;
    }
}
```

## Key Characteristics

- Interfaces can't contain fields (variables)
- All members are implicitly `public` and `abstract`
- A class can implement multiple interfaces (unlike inheritance)
- Interface names traditionally start with "I" (convention)
- Interfaces can inherit from other interfaces

## Default Interface Methods (C# 8.0+)

```csharp
public interface ILogger
{
    void Log(string message);
    
    // Default implementation
    void LogError(string error) => Log($"ERROR: {error}");
}
```

## Interface vs Abstract Class

| Interface | Abstract Class |
|-----------|---------------|
| Multiple implementation | Single inheritance only |
| No fields | Can have fields |
| No constructor | Can have constructors |
| All members public | Can have access modifiers |
| No implementation (except defaults in C# 8+) | Can have implementation |

## Common Use Cases

- Dependency injection
- Loosely coupled code
- Defining contracts between components
- Strategy pattern and other design patterns
- Testing with mock objects

Interfaces are fundamental to creating flexible, maintainable, and testable C# applications.