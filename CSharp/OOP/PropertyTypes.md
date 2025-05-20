In C#, **class properties** are members of a class that provide a flexible mechanism to read, write, or compute the value of a private field. They are typically used to encapsulate private fields, exposing them in a controlled way.

---

### 🔹 What Are Class Properties?

A **property** in C# is like a combination of a field and methods (getters/setters), allowing controlled access to a value.

**Example:**
```csharp
public class Person
{
    private string _name; // Private field

    // Property with getter and setter
    public string Name
    {
        get { return _name; }
        set { _name = value; }
    }
}
```

Here, `Name` is a **full property** (manual implementation with a backing field).

---

### 🔹 Auto-Implemented Properties (Auto Properties)

Auto properties are a shorthand introduced to avoid explicitly declaring the backing field. The compiler automatically creates the hidden backing field for you.

**Example:**
```csharp
public class Person
{
    public string Name { get; set; }  // Auto property
}
```

This is functionally equivalent to the previous full property but much more concise. You can also make them read-only or write-only:

```csharp
public string Name { get; private set; } // Public getter, private setter
```

---

### 🔹 Full Properties (Manual Properties)

Used when you need custom logic in the `get` or `set` accessor.

**Example with logic:**
```csharp
private int _age;

public int Age
{
    get { return _age; }
    set 
    {
        if (value >= 0) 
            _age = value;
        else 
            throw new ArgumentException("Age cannot be negative");
    }
}
```

---

### 🔹 Summary

| Type            | Backing Field | Custom Logic | Syntax                        |
|-----------------|---------------|--------------|-------------------------------|
| Full Property   | Manual        | Yes          | Uses custom getter/setter     |
| Auto Property   | Compiler-made | No (usually) | Simple, concise syntax        |

---


## Expression-Bodied Properties (C# 6+)
Concise syntax for simple property implementations:

```csharp
// Get-only property
public string FullName => $"{FirstName} {LastName}";

// Get and set (C# 7+)
public string Name
{
    get => _name;
    set => _name = value;
}
```

## Init-Only Properties (C# 9+)
Properties that can only be set during object initialization:

```csharp
public string Id { get; init; }

// Usage:
var person = new Person { Id = "123" };
// person.Id = "456"; // This would cause a compilation error
```

## Property Initializers
Default values for auto-properties:

```csharp
public string Status { get; set; } = "Active";
public List<string> Tags { get; set; } = new List<string>();
```

## Calculated Properties
Properties that compute their value:

```csharp
public string FullName => $"{FirstName} {LastName}";
public int Age => DateTime.Now.Year - BirthYear;
public bool IsAdult => Age >= 18;
```

## Accessibility Modifiers
Finer control over property access:

```csharp
public string Name { get; private set; }  // Public get, private set
internal string Id { get; set; }          // Internal property
protected string SecretCode { get; set; } // Accessible in derived classes
```

## Indexers
Special properties accessed with [] notation:

```csharp
public class StringCollection
{
    private string[] _strings = new string[10];
    
    public string this[int index]
    {
        get => _strings[index];
        set => _strings[index] = value;
    }
}

// Usage:
var collection = new StringCollection();
collection[0] = "Hello";
```

## Property Inheritance
Properties can be inherited, overridden, or hidden:

```csharp
public class Base
{
    public virtual string Info { get; set; }
}

public class Derived : Base
{
    public override string Info { get; set; }
}
```

