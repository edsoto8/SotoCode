# Class Library Project Type

A class library is a project type in .NET that produces a DLL (Dynamic Link Library) instead of an executable file. It's essentially a collection of reusable code that can be shared across multiple applications.

## Key Characteristics

- Compiles to a `.dll` file, not an `.exe`
- Contains no entry point (no `Main()` method)
- Cannot be run directly - must be referenced by other projects
- Ideal for shared code and functionality

## When to Use Class Libraries

- To share code between multiple applications
- To separate concerns in a larger solution
- To create reusable components and frameworks
- To distribute functionality to other developers

## Creating a Class Library

In Visual Studio:
- File → New → Project → Class Library
- Select target framework

Using .NET CLI:
```bash
dotnet new classlib -n MyLibrary
```

## Example Structure

```csharp
namespace MyLibrary
{
    public class Calculator
    {
        public int Add(int a, int b) => a + b;
        public int Subtract(int a, int b) => a - b;
    }
}
```

## Using a Class Library

1. Add a reference to the library in your project
2. Import the namespace with `using`
3. Create instances of the classes or use static methods

```csharp
using MyLibrary;

// In your application
var calc = new Calculator();
int result = calc.Add(5, 10); // 15
```

Class libraries are fundamental building blocks for creating modular, maintainable .NET applications.