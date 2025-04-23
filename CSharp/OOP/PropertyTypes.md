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
