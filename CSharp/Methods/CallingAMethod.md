In C#, you call a method by using its name followed by parentheses `()`. If the method requires parameters, you pass them inside the parentheses.

### 1. **Calling a Method Without Parameters**
```csharp
using System;

class Program
{
    static void SayHello()
    {
        Console.WriteLine("Hello, World!");
    }

    static void Main()
    {
        SayHello(); // Method call
    }
}
```

### 2. **Calling a Method With Parameters**
```csharp
using System;

class Program
{
    static void Greet(string name)
    {
        Console.WriteLine($"Hello, {name}!");
    }

    static void Main()
    {
        Greet("Alice"); // Passing "Alice" as an argument
    }
}
```

### 3. **Calling a Method That Returns a Value**
```csharp
using System;

class Program
{
    static int Add(int a, int b)
    {
        return a + b;
    }

    static void Main()
    {
        int sum = Add(5, 7); // Storing return value in a variable
        Console.WriteLine(sum); // Output: 12
    }
}
```

### 4. **Calling an Instance Method**
For non-static methods, you need to create an object of the class first.
```csharp
using System;

class Person
{
    public void Speak()
    {
        Console.WriteLine("I am speaking.");
    }
}

class Program
{
    static void Main()
    {
        Person person = new Person(); // Create an instance
        person.Speak(); // Call the method
    }
}
```

