### Type Conversion in C#

In C#, **type conversion** refers to the process of converting one type to another, either implicitly (automatically) or explicitly (manually). There are several types of type conversions available in C#:

1. **Implicit Conversion**
2. **Explicit Conversion (Casting)**
3. **Using `Convert` Class**
4. **Using `TryParse` for Safe Conversion**

Let's go through these in detail.

### 1. Implicit Conversion (Automatic)
**Implicit conversion** occurs when C# automatically converts one type to another because it’s safe and there is no risk of data loss. This typically happens when converting a smaller numeric type to a larger numeric type or converting types that have a natural hierarchy (e.g., from `int` to `double`).

#### Example of Implicit Conversion:
```csharp
int num = 123;
double result = num; // Implicit conversion from int to double

Console.WriteLine(result); // Output: 123
```
- **Why it works**: The `int` can be safely converted to `double` without losing any data.

#### Another Example with Numeric Types:
```csharp
byte smallValue = 100;
int largeValue = smallValue;  // Implicit conversion from byte to int

Console.WriteLine(largeValue); // Output: 100
```

### 2. Explicit Conversion (Casting)
**Explicit conversion** (also known as **casting**) happens when you want to convert one type to another, but it’s not done automatically. This often happens when you are converting a larger type to a smaller type or when there’s a possibility of data loss or overflow. You must explicitly tell the compiler to perform the conversion.

#### Example of Explicit Conversion:
```csharp
double decimalValue = 9.99;
int integerValue = (int)decimalValue;  // Explicit conversion (casting) from double to int

Console.WriteLine(integerValue); // Output: 9
```
- **Why it works**: You are explicitly telling the compiler to convert the `double` to an `int`, but this may result in data loss (fractional part is truncated).

#### Another Example with Type Casting:
```csharp
object obj = "Hello, World!";
string str = (string)obj;  // Explicit casting from object to string

Console.WriteLine(str); // Output: Hello, World!
```

**Note**: Be careful when performing explicit casting. If you try to cast incompatible types, you will get a runtime error, like this:
```csharp
object obj = 123;
string str = (string)obj;  // This will throw an InvalidCastException at runtime
```

### 3. Using the `Convert` Class
The `Convert` class in C# provides a way to perform type conversions between different types. The `Convert` class is often used when you want to convert values to types that may be incompatible (such as `double` to `int`).

#### Example of Conversion Using `Convert`:
```csharp
string strValue = "123.45";
double doubleValue = Convert.ToDouble(strValue);  // Convert string to double

Console.WriteLine(doubleValue); // Output: 123.45
```

The `Convert` class is particularly useful when working with values that are stored in object types, like when you're working with databases or user input.

#### Example of Converting Between Other Types:
```csharp
bool boolValue = Convert.ToBoolean("true");  // Convert string to boolean
Console.WriteLine(boolValue); // Output: True

int intValue = Convert.ToInt32(15.67);  // Convert double to int (rounds down)
Console.WriteLine(intValue); // Output: 15
```

**Note**: The `Convert` class handles many edge cases and throws exceptions if conversion fails. For example, trying to convert an invalid string to a number will throw a `FormatException`.

### 4. Using `TryParse` for Safe Conversion
**`TryParse`** is a safe method to attempt converting a string to another type, such as `int`, `double`, `DateTime`, etc., without throwing exceptions. It returns a `bool` indicating whether the conversion succeeded.

#### Example of Using `TryParse`:
```csharp
string input = "1234";
int parsedValue;

bool success = int.TryParse(input, out parsedValue);

if (success)
{
    Console.WriteLine($"Parsed value: {parsedValue}");
}
else
{
    Console.WriteLine("Conversion failed");
}
```
- **Output**: `Parsed value: 1234`
- If `input` was an invalid number (e.g., `"abc"`), `TryParse` would return `false` and no exception would be thrown.

#### Example with `DateTime`:
```csharp
string dateStr = "2024-11-14";
DateTime date;

bool dateSuccess = DateTime.TryParse(dateStr, out date);

if (dateSuccess)
{
    Console.WriteLine($"Parsed date: {date}");
}
else
{
    Console.WriteLine("Invalid date format.");
}
```
- **Output**: `Parsed date: 11/14/2024 12:00:00 AM` (depending on the system locale).

### 5. Converting Between Custom Types (Using `IConvertible` Interface)
In C#, you can also implement type conversion between custom types by implementing the `IConvertible` interface. This is less common but can be useful for complex conversions.

#### Example of Converting Custom Types:
```csharp
public class CustomClass : IConvertible
{
    public int Value { get; set; }

    public CustomClass(int value)
    {
        Value = value;
    }

    public int ToInt32(IFormatProvider provider) => Value;
    public double ToDouble(IFormatProvider provider) => (double)Value;
    public string ToString(IFormatProvider provider) => Value.ToString();
    // Implement other conversion methods as needed
}

CustomClass customObj = new CustomClass(100);
int convertedValue = Convert.ToInt32(customObj); // Uses ToInt32

Console.WriteLine(convertedValue); // Output: 100
```

### 6. Implicit and Explicit Conversion Operators in Custom Types
You can define **implicit** and **explicit** conversion operators for your custom types, allowing you to specify how your types can be converted.

#### Example of Custom Implicit and Explicit Conversion Operators:
```csharp
public class Money
{
    public decimal Amount { get; set; }

    public Money(decimal amount)
    {
        Amount = amount;
    }

    // Implicit conversion from Money to decimal
    public static implicit operator decimal(Money money)
    {
        return money.Amount;
    }

    // Explicit conversion from decimal to Money
    public static explicit operator Money(decimal amount)
    {
        return new Money(amount);
    }
}

Money money = new Money(50.75m);
decimal amount = money;  // Implicit conversion from Money to decimal

Console.WriteLine(amount); // Output: 50.75

Money newMoney = (Money)amount;  // Explicit conversion from decimal to Money
Console.WriteLine(newMoney.Amount); // Output: 50.75
```

### Summary of Type Conversion in C#
1. **Implicit Conversion**: Automatically performed when it is safe (e.g., `int` to `double`).
2. **Explicit Conversion (Casting)**: Manually specified conversion, often used when there is a risk of data loss (e.g., `double` to `int`).
3. **`Convert` Class**: Provides methods to convert between types, handling a variety of types safely.
4. **`TryParse`**: A safe way to attempt a conversion, especially from strings to other types, without exceptions.
5. **Custom Conversion Operators**: You can define conversion operators to convert between custom types.

