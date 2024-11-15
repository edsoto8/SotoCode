### Switch Statements in C#

The **`switch`** statement in C# is used to execute one of several code blocks based on the value of a variable or expression. It provides a cleaner and more efficient alternative to using multiple `if-else` statements, especially when checking the same variable against different values.

### 1. **Basic `switch` Statement**
The basic `switch` statement evaluates an expression and compares it to multiple `case` labels. If a match is found, the corresponding block of code is executed.

#### Syntax:
```csharp
switch (expression)
{
    case value1:
        // Code to execute if expression == value1
        break;
    case value2:
        // Code to execute if expression == value2
        break;
    default:
        // Code to execute if expression does not match any case
        break;
}
```

#### Example:
```csharp
int day = 2;

switch (day)
{
    case 1:
        Console.WriteLine("Monday");
        break;
    case 2:
        Console.WriteLine("Tuesday");
        break;
    case 3:
        Console.WriteLine("Wednesday");
        break;
    default:
        Console.WriteLine("Invalid day");
        break;
}
```
- **Output**: `Tuesday`
- The `switch` expression checks the value of `day`, and since `day == 2`, it matches the `case 2` and executes the corresponding block.

---

### 2. **Fall-through in `switch`**
In C#, `switch` statements **do not support fall-through** (where multiple `case` blocks are executed without `break`). Each `case` block must end with either `break`, `return`, `goto`, or `throw` to exit the `switch`.

#### Example:
```csharp
int number = 2;

switch (number)
{
    case 1:
        Console.WriteLine("One");
        break;
    case 2:
        Console.WriteLine("Two");
        break;
    case 3:
        Console.WriteLine("Three");
        break;
    default:
        Console.WriteLine("Unknown number");
        break;
}
```
- **Output**: `Two`
- The `switch` statement only matches one `case` at a time and then exits.

---

### 3. **Switch with Multiple `case` Labels**
You can group multiple values under the same `case` by separating them with commas. This can help simplify the `switch` when several values should result in the same outcome.

#### Example:
```csharp
int score = 85;

switch (score)
{
    case 90:
    case 91:
    case 92:
        Console.WriteLine("Excellent");
        break;
    case 80:
    case 81:
    case 82:
        Console.WriteLine("Good");
        break;
    default:
        Console.WriteLine("Needs Improvement");
        break;
}
```
- **Output**: `Good`
- The `score` matches `80`, so the `Good` block is executed.

---

### 4. **Switch Expressions (C# 8.0 and above)**
Starting from C# 8.0, you can use **`switch` expressions**, which are more concise and return a value. This is particularly useful when you need to assign a value based on the result of the `switch`.

#### Syntax:
```csharp
var result = expression switch
{
    value1 => result1,
    value2 => result2,
    _ => defaultResult
};
```

#### Example:
```csharp
int day = 3;
string dayName = day switch
{
    1 => "Monday",
    2 => "Tuesday",
    3 => "Wednesday",
    4 => "Thursday",
    5 => "Friday",
    6 => "Saturday",
    7 => "Sunday",
    _ => "Invalid day"
};

Console.WriteLine(dayName);  // Output: Wednesday
```
- **Output**: `Wednesday`
- The `switch` expression evaluates `day` and returns the corresponding day name.

---

### 5. **Pattern Matching in `switch` (C# 7.0 and above)**
C# 7.0 introduced pattern matching in `switch`, allowing you to match the type of an object or a more complex condition.

#### Example with Type Pattern Matching:
```csharp
object obj = 42;

switch (obj)
{
    case int i:
        Console.WriteLine($"Integer: {i}");
        break;
    case string s:
        Console.WriteLine($"String: {s}");
        break;
    default:
        Console.WriteLine("Unknown type");
        break;
}
```
- **Output**: `Integer: 42`
- The `switch` statement checks the type of `obj` and matches it with the `case` for `int`.

#### Example with `is` Pattern Matching:
```csharp
object obj = 10.5;

switch (obj)
{
    case int i when i > 0:
        Console.WriteLine($"Positive integer: {i}");
        break;
    case double d:
        Console.WriteLine($"Double: {d}");
        break;
    default:
        Console.WriteLine("Unknown type or value");
        break;
}
```
- **Output**: `Double: 10.5`
- The `when` keyword is used to add an additional condition to the `case`.

---

### 6. **Switch with Ranges (C# 9.0 and above)**
In C# 9.0, you can use **range patterns** to check if a value is within a range.

#### Example:
```csharp
int score = 85;

switch (score)
{
    case int n when (n >= 90 && n <= 100):
        Console.WriteLine("Excellent");
        break;
    case int n when (n >= 80 && n < 90):
        Console.WriteLine("Good");
        break;
    case int n when (n >= 70 && n < 80):
        Console.WriteLine("Average");
        break;
    default:
        Console.WriteLine("Needs Improvement");
        break;
}
```
- **Output**: `Good`
- This `switch` statement uses the `when` clause to match ranges of values.

---

### 7. **Switch with Tuples (C# 7.0 and above)**
You can match tuples in `switch` statements to check multiple conditions at once.

#### Example:
```csharp
var point = (x: 5, y: 10);

switch (point)
{
    case (0, 0):
        Console.WriteLine("Origin");
        break;
    case (5, 10):
        Console.WriteLine("Point (5, 10)");
        break;
    default:
        Console.WriteLine("Unknown point");
        break;
}
```
- **Output**: `Point (5, 10)`
- The `switch` statement matches the tuple `(5, 10)` and executes the corresponding block.

---

### Summary of `switch` Statement Features in C#:

1. **Basic `switch`**: Evaluate an expression and match with cases.
2. **Fall-through**: C# does not support fall-through behavior between cases.
3. **Multiple `case` Labels**: Group multiple values under one `case`.
4. **`switch` Expressions**: A concise way to return values directly.
5. **Pattern Matching**: Match types or values using `is` and `when`.
6. **Ranges**: Check for values within a range in C# 9.0 and above.
7. **Tuples**: Match tuples for multiple conditions.

