# Inheritance in C#

Inheritance is a fundamental object-oriented programming concept that allows a class (called a derived or child class) to inherit properties, methods, and other members from another class (called a base or parent class).

## Basic Concepts

```csharp
// Base class
public class Animal
{
    public string Name { get; set; }
    
    public void Eat()
    {
        Console.WriteLine($"{Name} is eating");
    }
    
    public virtual void MakeSound()
    {
        Console.WriteLine("Some generic animal sound");
    }
}

// Derived class
public class Dog : Animal  // The colon indicates inheritance
{
    public void Fetch()
    {
        Console.WriteLine($"{Name} is fetching");
    }
    
    public override void MakeSound()  // Overriding the base method
    {
        Console.WriteLine("Woof!");
    }
}
```

## Key Features

- **Syntax**: Use colon (`:`) to inherit from a base class
- **Access to Base Members**: A derived class has access to public and protected members of the base class
- **Method Overriding**: Use `virtual` in the base class and `override` in the derived class
- **Base Keyword**: Use `base` to access the base class members

## Types of Inheritance

- **Single Inheritance**: A class inherits from one base class (C# only supports single class inheritance)
- **Multilevel Inheritance**: A class inherits from a derived class
- **Interface Inheritance**: A class can implement multiple interfaces

## Abstract Classes

```csharp
public abstract class Shape
{
    public abstract double CalculateArea();  // Must be implemented by derived classes
    
    public void Display()  // Shared implementation
    {
        Console.WriteLine($"Area: {CalculateArea()}");
    }
}

public class Circle : Shape
{
    public double Radius { get; set; }
    
    public override double CalculateArea()
    {
        return Math.PI * Radius * Radius;
    }
}
```

## When to Use Inheritance

- When you have an "is-a" relationship (a Dog "is-a" Animal)
- To share common code among related classes
- To create specialized versions of a base class

Inheritance helps promote code reuse and establishes a hierarchical relationship between classes, making your code more organized and maintainable.