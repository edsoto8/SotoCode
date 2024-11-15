In C#, `int` is a **value type** that represents a 32-bit signed integer. It is one of the most commonly used data types for numeric operations.

### Key Points about `int` in C#
- **Range**: It can store values from **-2,147,483,648** to **2,147,483,647**.
- **Size**: It occupies **4 bytes** (32 bits) in memory.
- **Default Value**: The default value of an `int` is **0**.
- **Alias**: `int` is an alias for the `System.Int32` struct in .NET.

### Example Usage

#### 1. Declaration and Initialization
```csharp
int myNumber = 42;
Console.WriteLine(myNumber); // Output: 42
```

#### 2. Implicit and Explicit Casting
```csharp
double myDouble = 9.8;

// Explicit cast from double to int (data loss)
int myInt = (int)myDouble; // myInt will be 9
Console.WriteLine(myInt);
```

#### 3. Arithmetic Operations
```csharp
int a = 10;
int b = 3;

int sum = a + b;        // Addition, result is 13
int difference = a - b; // Subtraction, result is 7
int product = a * b;    // Multiplication, result is 30
int quotient = a / b;   // Division, result is 3 (integer division)
int remainder = a % b;  // Modulus, result is 1

Console.WriteLine($"Sum: {sum}, Difference: {difference}, Product: {product}, Quotient: {quotient}, Remainder: {remainder}");
```

#### 4. Using `int` with Conditional Statements
```csharp
int score = 85;

if (score >= 90)
{
    Console.WriteLine("Grade: A");
}
else if (score >= 80)
{
    Console.WriteLine("Grade: B");
}
else
{
    Console.WriteLine("Grade: C");
}
```

#### 5. Checking for Overflow
By default, C# does not check for integer overflows. However, you can enable overflow checking using the `checked` keyword.

```csharp
int max = int.MaxValue;

try
{
    // This will throw an OverflowException
    int result = checked(max + 1);
}
catch (OverflowException)
{
    Console.WriteLine("Overflow occurred!");
}
```

### Common Methods in `System.Int32`
The `int` type (alias of `System.Int32`) comes with several useful methods:

```csharp
int number = -123;
int absoluteValue = Math.Abs(number); // Returns 123

bool isEven = (number % 2 == 0); // Checks if the number is even
Console.WriteLine($"Absolute Value: {absoluteValue}, Is Even: {isEven}");
```

### Summary
- **`int`** is used for numeric calculations where a 32-bit signed integer is sufficient.
- For larger integers, you can use **`long`** (`System.Int64`).
- For smaller or memory-sensitive cases, **`short`** (`System.Int16`) can be used.

