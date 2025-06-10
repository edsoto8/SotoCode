In C#, a **namespace** is a way to **organize and group related code** together. Think of it like folders on your computer — it helps you avoid name collisions and keeps your codebase clean and structured.

---

### 🔹 Basic Syntax

```csharp
namespace MyApp.Models
{
    public class User
    {
        public string Name { get; set; }
    }
}
```

- `MyApp.Models` is the namespace.
- `User` is a class inside that namespace.

---

### 🔹 Why Use Namespaces?

1. **Organization**: Keep related classes, interfaces, enums, etc., together.
2. **Avoid Conflicts**: Two classes with the same name can exist in different namespaces.
3. **Readability**: You instantly know what part of the application a class belongs to.

---

### 🔹 Using Namespaces

To use a class from a different namespace, you either:

- Add a `using` directive:

    ```csharp
    using MyApp.Models;

    var user = new User();
    ```

- Or use the full name:

    ```csharp
    var user = new MyApp.Models.User();
    ```

---

### 🔹 Example: Two Classes with Same Name

```csharp
namespace Project1
{
    public class Logger
    {
        public void Log() => Console.WriteLine("Project1 log");
    }
}

namespace Project2
{
    public class Logger
    {
        public void Log() => Console.WriteLine("Project2 log");
    }
}
```

Usage:

```csharp
using Project1;
using Project2;

var logger1 = new Project1.Logger();
var logger2 = new Project2.Logger();
```

---

### 🔹 Nested Namespaces (C# 10+)

You can write them more cleanly now:

```csharp
namespace MyApp.Services;

public class EmailService
{
    // ...
}
```

This is equivalent to:

```csharp
namespace MyApp.Services
{
    public class EmailService
    {
        // ...
    }
}
```

---

If you're working on a multi-file project or building an app with separate concerns (data access, business logic, UI, etc.), namespaces help keep things sane. 