# Access Modifiers in C#

Access modifiers in C# control the visibility and accessibility of classes, methods, properties, and fields. They determine where and how these members can be accessed from different parts of your code.

## Types of Access Modifiers

### 1. `public`
- **Accessibility**: No restrictions
- **Scope**: Accessible from any code in the same assembly or another assembly that references it
- **Example**:
```csharp
public class Customer
{
    public string Name { get; set; }
}
```

### 2. `private`
- **Accessibility**: Most restrictive
- **Scope**: Accessible only within the same class or struct
- **Example**:
```csharp
public class BankAccount
{
    private decimal _balance;
    
    public void Deposit(decimal amount)
    {
        _balance += amount;
    }
}
```

### 3. `protected`
- **Accessibility**: Limited to containing class and derived classes
- **Scope**: Accessible within the class and by classes that inherit from it
- **Example**:
```csharp
public class Vehicle
{
    protected int Speed { get; set; }
}

public class Car : Vehicle
{
    public void Accelerate()
    {
        Speed += 10; // Can access protected member
    }
}
```

### 4. `internal`
- **Accessibility**: Limited to current assembly
- **Scope**: Accessible from any code in the same assembly, but not from other assemblies
- **Example**:
```csharp
internal class DatabaseConnector
{
    internal void Connect() { /* ... */ }
}
```

### 5. `protected internal`
- **Accessibility**: Combination of protected and internal
- **Scope**: Accessible from the current assembly OR from types derived from the containing class
- **Example**:
```csharp
public class Logger
{
    protected internal void LogDebug(string message) { /* ... */ }
}
```

### 6. `private protected` (C# 7.2+)
- **Accessibility**: Most specific combination
- **Scope**: Accessible only within the containing class or derived classes in the same assembly
- **Example**:
```csharp
public class BaseComponent
{
    private protected void Initialize() { /* ... */ }
}
```

## Comparison Table

| Modifier           | Same Class | Derived Class Same Assembly | Non-derived Class Same Assembly | Derived Class Different Assembly | Non-derived Class Different Assembly |
|--------------------|------------|-----------------------------|---------------------------------|----------------------------------|--------------------------------------|
| `public`           | ✅         | ✅                          | ✅                              | ✅                               | ✅                                   |
| `private`          | ✅         | ❌                          | ❌                              | ❌                               | ❌                                   |
| `protected`        | ✅         | ✅                          | ❌                              | ✅                               | ❌                                   |
| `internal`         | ✅         | ✅                          | ✅                              | ❌                               | ❌                                   |
| `protected internal`| ✅        | ✅                          | ✅                              | ✅                               | ❌                                   |
| `private protected`| ✅         | ✅                          | ❌                              | ❌                               | ❌                                   |

## Best Practices

- Use the **most restrictive** access level that works for your needs
- Make fields `private` and expose them through `public` properties if needed
- Use `internal` for classes that should only be used within your library
- Consider `protected` for members that derived classes need to override or access

Access modifiers are fundamental to encapsulation, one of the core principles of object-oriented programming.