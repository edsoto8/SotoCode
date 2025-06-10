# Generics in C#

Generics in C# allow you to define type-safe classes, interfaces, and methods without committing to specific data types. They provide a way to create reusable code that can work with any data type while maintaining compile-time type safety.

## Basic Syntax

```csharp
// Generic class
public class Repository<T>
{
    private List<T> _items = new List<T>();
    
    public void Add(T item)
    {
        _items.Add(item);
    }
    
    public T GetById(int index)
    {
        return _items[index];
    }
}

// Usage
var customers = new Repository<Customer>();
var products = new Repository<Product>();
```

## Generic Methods

```csharp
public static bool AreEqual<T>(T first, T second)
{
    return first.Equals(second);
}

// Usage
bool result = AreEqual<int>(5, 5);  // true
bool stringResult = AreEqual("hello", "world");  // false, type inference works here
```

## Type Constraints

```csharp
// Constraint to reference types
public class Logger<T> where T : class
{
    // T can only be a reference type
}

// Constraint to specific base class
public class EntityProcessor<T> where T : BaseEntity
{
    // T must be or inherit from BaseEntity
}

// Multiple constraints
public class Repository<T> where T : class, IEntity, new()
{
    // T must be a reference type, implement IEntity, and have a parameterless constructor
}
```

## Benefits of Generics

- **Type Safety**: Errors are caught at compile-time rather than runtime
- **Code Reusability**: Write algorithms once that work with many types
- **Performance**: Avoid boxing/unboxing with value types
- **Cleaner Code**: Reduces the need for type casting

## Common Generic Collections

```csharp
List<string> names = new List<string>();
Dictionary<int, Customer> customerById = new Dictionary<int, Customer>();
HashSet<int> uniqueNumbers = new HashSet<int>();
Queue<Order> orderQueue = new Queue<Order>();
Stack<string> history = new Stack<string>();
```

## Generic Interfaces

```csharp
public interface IRepository<T>
{
    void Add(T item);
    T GetById(int id);
    IEnumerable<T> GetAll();
}

// Implementation
public class CustomerRepository : IRepository<Customer>
{
    // Implementation details...
}
```

Generics provide a powerful way to create flexible, reusable, and type-safe code in C#, forming the foundation of collections and many other components in the .NET Framework.