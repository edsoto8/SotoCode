# Abstract Classes in C#

An abstract class in C# is a special type of class that cannot be instantiated on its own and is designed to be inherited by other classes. It serves as a blueprint for derived classes while allowing shared implementation code.

## Key Characteristics

- Declared using the `abstract` keyword
- Cannot be instantiated directly (no `new AbstractClass()`)
- Can contain both abstract members (without implementation) and concrete members (with implementation)
- Abstract members must be implemented by non-abstract derived classes
- Can have constructors, fields, properties, methods, and events

## Basic Syntax

```csharp
public abstract class Shape
{
    // Regular property with implementation
    public string Color { get; set; }
    
    // Regular method with implementation
    public void DisplayColor()
    {
        Console.WriteLine($"This shape is {Color}");
    }
    
    // Abstract method (no implementation)
    public abstract double CalculateArea();
    
    // Abstract property (no implementation)
    public abstract int Sides { get; }
}

// Concrete derived class
public class Circle : Shape
{
    public double Radius { get; set; }
    
    // Must implement abstract method
    public override double CalculateArea()
    {
        return Math.PI * Radius * Radius;
    }
    
    // Must implement abstract property
    public override int Sides => 0; // Circles have no straight sides
}
```

## Abstract Classes vs. Interfaces

| Abstract Class | Interface |
|----------------|-----------|
| Can contain implementation | Contains only definitions (except for default methods in C# 8+) |
| Can have fields | Cannot have fields |
| Can have constructors | Cannot have constructors |
| A class can inherit only one abstract class | A class can implement multiple interfaces |
| Can have access modifiers | All members are implicitly public |
| Can contain non-abstract members | All members were traditionally abstract (before C# 8) |

## When to Use Abstract Classes

- When you want to share code among closely related classes
- When the classes that will inherit from the abstract class have common behavior or status
- When you want to declare non-public members
- When you need to provide a base implementation with some abstract operations that subclasses must implement

Abstract classes are powerful tools for creating class hierarchies with shared functionality while enforcing that derived classes implement certain required behaviors.