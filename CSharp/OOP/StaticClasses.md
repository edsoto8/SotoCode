A **static class** is a class that **cannot be instantiated** and is typically used to **group related methods, properties, or constants** that don’t need to maintain any internal state. It’s commonly used for utility or helper methods in many programming languages like C# or Java. 

### In C#:

Here's what makes a class static:
- It's declared with the `static` keyword.
- All members inside it must also be `static`.
- You **can't create an object** of it (e.g., `var obj = new MyStaticClass();` would not compile).

#### Example:

```csharp
public static class MathHelper
{
    public static int Add(int a, int b)
    {
        return a + b;
    }
}
```

Usage:

```csharp
int result = MathHelper.Add(3, 5);
```

### When to Use a Static Class
- When you need **utility methods** that don’t rely on instance data.
- For **shared constants** or configuration values.
- When you want to group related **stateless logic**.

## Additional Information About Static Classes


### Limitations
- **Cannot be inherited** - static classes are implicitly sealed
- **Cannot implement interfaces**
- **Cannot be used as a type parameter** (for generics)

### Constructors
- Static classes **can only have static constructors**
- A static constructor runs once, automatically, before the class is first accessed
- Used for one-time initialization of static members

```csharp
public static class Logger
{
    public static string LogPath { get; private set; }
    
    static Logger()
    {
        LogPath = Path.Combine(Environment.CurrentDirectory, "log.txt");
        // Runs once before any static member is accessed
    }
}
```

### Memory and Performance
- Static class members remain in memory for the lifetime of the application domain
- Static classes are loaded when first accessed, not necessarily at application startup

### Potential Issues
- Can create **global state** that's harder to test
- May cause **thread safety issues** if not designed properly
- Can make code more **difficult to unit test** compared to instance methods

### Common .NET Examples
- `System.Math` - mathematical functions
- `System.Console` - console I/O operations
- `System.IO.File` - file system operations