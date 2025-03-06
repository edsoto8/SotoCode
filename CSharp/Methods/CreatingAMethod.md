In C#, methods are blocks of code that perform a specific task and can be reused throughout a program. Here's how to create them:

### **Basic Syntax**
```csharp
// AccessModifier ReturnType MethodName(ParameterType parameterName)
public int AddNumbers(int a, int b)
{
    return a + b;
}
```

### **Method Components**
1. **Access Modifier**: Defines the method's visibility (e.g., `public`, `private`, `protected`).
2. **Return Type**: Specifies the type of value returned (`int`, `void`, `string`, etc.).
3. **Method Name**: A meaningful name following PascalCase.
4. **Parameters (Optional)**: Inputs the method accepts.
5. **Method Body**: Contains the code to execute.

---

### **Examples**
#### 1. **Void Method (No Return)**
```csharp
public void SayHello()
{
    Console.WriteLine("Hello, world!");
}
```

#### 2. **Method with Parameters**
```csharp
public void GreetUser(string name)
{
    Console.WriteLine($"Hello, {name}!");
}
```

#### 3. **Method with Return Value**
```csharp
public int Multiply(int x, int y)
{
    return x * y;
}
```

#### 4. **Static Method**
```csharp
public static void DisplayMessage()
{
    Console.WriteLine("This is a static method.");
}
```
> **Static methods** belong to the class, not instances of the class.

#### 5. **Method Overloading (Same Name, Different Parameters)**
```csharp
public int Add(int a, int b)
{
    return a + b;
}

public double Add(double a, double b)
{
    return a + b;
}
```

---

### **Calling Methods**
To call a method:
```csharp
SayHello();  // Calls a void method

int result = Multiply(4, 5);
Console.WriteLine(result);  // Outputs: 20

GreetUser("Alice");  // Outputs: Hello, Alice!
```

For static methods:
```csharp
ClassName.DisplayMessage();
```
