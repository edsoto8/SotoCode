# Method Overloading in C#

Method overloading is a feature that allows multiple methods in the same class to have the same name but different parameters. It's a form of compile-time polymorphism.

## Key Concepts

- Methods can have the same name but must differ in their parameter list
- Overloading is determined by the number, order, or type of parameters
- Return type alone is not sufficient to overload a method

## Basic Examples

```csharp
public class Calculator
{
    // Basic addition with two integers
    public int Add(int a, int b)
    {
        return a + b;
    }
    
    // Overloaded to handle three integers
    public int Add(int a, int b, int c)
    {
        return a + b + c;
    }
    
    // Overloaded to handle doubles
    public double Add(double a, double b)
    {
        return a + b;
    }
    
    // Overloaded with different parameter types
    public string Add(string a, string b)
    {
        return a + b;  // String concatenation
    }
}
```

## Method Selection Process

When calling an overloaded method, the compiler determines the appropriate method to invoke based on:

1. Exact match of parameter types
2. Best match through implicit conversions
3. Match through type widening (e.g., `int` to `long`)
4. Match through optional parameters or params arrays

## Common Uses

- Providing simplified versions of methods with default values
- Handling different types of input data
- Creating more readable APIs with natural parameter combinations

## Overloading vs. Optional Parameters

```csharp
// Using overloading
public void Display(string message) { /* ... */ }
public void Display(string message, ConsoleColor color) { /* ... */ }

// Using optional parameters
public void Show(string message, ConsoleColor color = ConsoleColor.White) { /* ... */ }
```

Method overloading increases code readability and flexibility by allowing multiple ways to call methods based on different parameter requirements.