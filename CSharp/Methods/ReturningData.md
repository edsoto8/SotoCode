In C#, you can return data from a method using the `return` keyword. The method's return type specifies what type of data it will return.

### Examples:

#### 1. **Returning a Simple Value**
```csharp
int Add(int a, int b)
{
    return a + b;
}

int result = Add(3, 5); // result = 8
```

#### 2. **Returning a String**
```csharp
string Greet(string name)
{
    return "Hello, " + name + "!";
}

string message = Greet("Alice"); // message = "Hello, Alice!"
```

#### 3. **Returning an Array or List**
```csharp
int[] GetNumbers()
{
    return new int[] { 1, 2, 3, 4, 5 };
}

List<int> GetNumberList()
{
    return new List<int> { 10, 20, 30 };
}
```

#### 4. **Returning an Object**
```csharp
class Person
{
    public string Name { get; set; }
    public int Age { get; set; }
}

Person GetPerson()
{
    return new Person { Name = "John", Age = 25 };
}

Person p = GetPerson(); // p.Name = "John", p.Age = 25
```

#### 5. **Returning `void` (No Return)**
If a method doesn’t return data, use `void`:
```csharp
void PrintMessage()
{
    Console.WriteLine("Hello, World!");
}
```

