Keeping methods **DRY** (Don't Repeat Yourself) in C# or any programming language involves reducing redundancy and making code more maintainable. Here are some key strategies:  

### 1. **Use Helper Methods**  
If you see repetitive logic across multiple methods, extract it into a reusable helper method.  

```csharp
public void LogMessage(string message)
{
    Console.WriteLine($"[{DateTime.Now}] {message}");
}
```
Now, instead of writing `Console.WriteLine(...)` repeatedly, call `LogMessage()` whenever needed.

---

### 2. **Use Parameters Effectively**  
Instead of having similar methods with slight variations, use parameters to handle different cases.  

```csharp
public void PrintGreeting(string name, string greeting = "Hello")
{
    Console.WriteLine($"{greeting}, {name}!");
}
```
This avoids creating separate methods like `PrintHello()` and `PrintGoodMorning()`.

---

### 3. **Use Inheritance & Polymorphism (OOP)**  
If multiple classes share the same behavior, use **base classes** and **overrides** to avoid duplication.  

```csharp
public class Animal
{
    public virtual void Speak()
    {
        Console.WriteLine("Some generic animal sound.");
    }
}

public class Dog : Animal
{
    public override void Speak()
    {
        Console.WriteLine("Woof!");
    }
}
```
Now, instead of duplicating `Speak()` logic, subclasses override only what’s needed.

---

### 4. **Use Interfaces for Common Behavior**  
If multiple unrelated classes share similar functionality, use **interfaces** instead of repeating logic.  

```csharp
public interface ILoggable
{
    void Log(string message);
}

public class FileLogger : ILoggable
{
    public void Log(string message) => File.WriteAllText("log.txt", message);
}

public class ConsoleLogger : ILoggable
{
    public void Log(string message) => Console.WriteLine(message);
}
```
This prevents each logger from implementing its own `Log()` method independently.

---

### 5. **Use Extension Methods**  
When working with existing types, extension methods prevent code duplication.  

```csharp
public static class StringExtensions
{
    public static string ToTitleCase(this string str)
    {
        return CultureInfo.CurrentCulture.TextInfo.ToTitleCase(str.ToLower());
    }
}
```
Now, instead of writing custom title-case logic repeatedly, just call:  
```csharp
string title = "hello world".ToTitleCase();
```

---

### 6. **Use Generic Methods**  
Generics prevent writing duplicate logic for different types.  

```csharp
public T GetMax<T>(T a, T b) where T : IComparable<T>
{
    return a.CompareTo(b) > 0 ? a : b;
}
```
Instead of writing separate methods for `int`, `double`, `string`, etc., this single method works for all comparable types.

---

### 7. **Use Dependency Injection (DI)**  
Hardcoding dependencies inside methods leads to duplication. Use **DI** to inject dependencies dynamically.  

```csharp
public class OrderProcessor
{
    private readonly ILoggable _logger;

    public OrderProcessor(ILoggable logger)
    {
        _logger = logger;
    }

    public void Process()
    {
        _logger.Log("Processing order...");
    }
}
```
Now, `OrderProcessor` can work with different loggers (console, file, database) without modifying its code.

---

### 8. **Use LINQ for Data Manipulation**  
Avoid repetitive loops by leveraging **LINQ**.  

```csharp
var highScores = scores.Where(s => s > 80).OrderByDescending(s => s);
```
Instead of:  
```csharp
List<int> highScores = new List<int>();
foreach (var s in scores)
{
    if (s > 80)
        highScores.Add(s);
}
highScores.Sort();
highScores.Reverse();
```

---

### 9. **Refactor Similar Methods Using Delegates**  
If methods differ only by a small logic change, use **delegates** or **Func<>**.  

```csharp
public void ProcessData(IEnumerable<int> data, Func<int, bool> filter)
{
    foreach (var item in data.Where(filter))
    {
        Console.WriteLine(item);
    }
}
```
Now you can call:  
```csharp
ProcessData(numbers, n => n > 50); // Filtering numbers > 50
```
Instead of writing separate filtering methods.

---

### 10. **Use Constants and Enums Instead of Magic Numbers**  
If you see hardcoded values repeatedly, replace them with constants or enums.  

```csharp
public const double Pi = 3.14159;
```
Or use an **enum** instead of repeated string comparisons:  

```csharp
public enum OrderStatus { Pending, Shipped, Delivered }
```

---

### Conclusion  
To keep methods **DRY**, always **identify patterns in duplication** and extract reusable logic. Use **helper methods, OOP principles, interfaces, generics, and LINQ** to make your code more maintainable and scalable.