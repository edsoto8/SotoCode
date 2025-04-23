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

