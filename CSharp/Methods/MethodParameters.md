In C#, method parameters allow you to pass values to a method when calling it. Here’s how to use them:

### 1. **Defining Method Parameters**
When defining a method, you specify parameters inside the parentheses:

```csharp
void Greet(string name)
{
    Console.WriteLine($"Hello, {name}!");
}
```

### 2. **Calling a Method with Parameters**
You provide arguments when calling the method:

```csharp
Greet("Alice"); // Output: Hello, Alice!
```

### 3. **Multiple Parameters**
A method can take multiple parameters:

```csharp
void Add(int a, int b)
{
    Console.WriteLine($"Sum: {a + b}");
}

Add(3, 5); // Output: Sum: 8
```

### 4. **Default Parameter Values**
You can assign default values to parameters:

```csharp
void Introduce(string name, int age = 25)
{
    Console.WriteLine($"{name} is {age} years old.");
}

Introduce("Bob");        // Output: Bob is 25 years old.
Introduce("Alice", 30);  // Output: Alice is 30 years old.
```

### 5. **`params` Keyword (Variable-Length Arguments)**
You can use `params` to accept a variable number of arguments:

```csharp
void PrintNumbers(params int[] numbers)
{
    foreach (int num in numbers)
        Console.Write(num + " ");
}

PrintNumbers(1, 2, 3, 4, 5); // Output: 1 2 3 4 5
```

### 6. **`ref` and `out` Parameters**
- `ref` allows modifying an argument inside a method.
- `out` forces a method to assign a value to the argument.

```csharp
void Square(ref int num)
{
    num *= num;
}

int x = 4;
Square(ref x);
Console.WriteLine(x); // Output: 16
```

```csharp
void GetValues(out int a, out int b)
{
    a = 10;
    b = 20;
}

GetValues(out int val1, out int val2);
Console.WriteLine(val1 + ", " + val2); // Output: 10, 20
```

### 7. **Named Arguments**
You can explicitly name arguments when calling a method:

```csharp
void OrderPizza(string size, string topping)
{
    Console.WriteLine($"Ordering a {size} pizza with {topping}.");
}

OrderPizza(topping: "pepperoni", size: "large"); 
// Output: Ordering a large pizza with pepperoni.
```

