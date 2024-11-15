### Advanced `if` Statements in C#

In C#, **advanced `if` statements** can involve more complex conditions, multiple conditions using logical operators, and combining `if` statements with other features like **null checks**, **pattern matching**, and **switch expressions**. Let’s go over some of these advanced techniques:

---

### 1. **Null-Coalescing (`??`) and Null-Conditional (`?.`) Operators with `if` Statements**
These operators help you handle `null` values more safely and concisely in `if` statements.

#### **Null-Coalescing Operator (`??`)**
The null-coalescing operator allows you to provide a default value when an expression is `null`.

```csharp
string name = null;
string result = name ?? "Default Name"; // If name is null, use "Default Name"
Console.WriteLine(result); // Output: Default Name
```

#### **Null-Conditional Operator (`?.`)**
The null-conditional operator allows you to call a method or access a property on an object that might be `null` without throwing a `NullReferenceException`.

```csharp
Person person = null;
int? length = person?.Name?.Length;  // Will not throw an exception, returns null if person or Name is null
Console.WriteLine(length);  // Output: null
```

You can use these operators inside `if` statements to handle potential `null` values more safely.

#### Example with `if` and `?.`:
```csharp
Person person = new Person { Name = "Alice" };

if (person?.Name != null)
{
    Console.WriteLine($"Hello, {person.Name}");
}
else
{
    Console.WriteLine("Name is null");
}
```
- **Output**: `Hello, Alice`

If `person` was `null`, it would not throw an exception, and the else block would be executed.

---

### 2. **Pattern Matching (`is` and `switch` Expressions)**
Pattern matching allows you to check the type of an object and directly access its properties inside an `if` statement.

#### **Using `is` for Type Checking:**
Pattern matching with `is` checks if an object is of a particular type and lets you extract it directly.

```csharp
object obj = 5;

if (obj is int number)
{
    Console.WriteLine($"The number is: {number}");
}
else
{
    Console.WriteLine("Not an integer");
}
```
- **Output**: `The number is: 5`

This pattern simplifies type checking and avoids the need for casting.

---

### 3. **Combining Multiple Conditions with Logical Operators**
For more advanced logic, you can combine conditions using logical operators like **AND (`&&`)**, **OR (`||`)**, and **NOT (`!`)**.

#### Example with `&&` and `||`:
```csharp
int age = 25;
bool hasTicket = true;
bool isVIP = false;

if ((age >= 18 && hasTicket) || isVIP)
{
    Console.WriteLine("You can enter.");
}
else
{
    Console.WriteLine("You cannot enter.");
}
```
- **Output**: `You can enter.`
- This will allow entry if the person is at least 18 and has a ticket, or if they are a VIP.

---

### 4. **`if` with Tuple Matching (C# 7.0 and Higher)**
In C# 7.0 and above, you can use **tuples** in `if` statements to match multiple values simultaneously.

#### Example with Tuples:
```csharp
(int x, int y) coordinates = (10, 20);

if (coordinates is (10, 20))
{
    Console.WriteLine("Point is at (10, 20)");
}
else
{
    Console.WriteLine("Point is not at (10, 20)");
}
```
- **Output**: `Point is at (10, 20)`

This matches multiple values in a tuple and is useful for checking combinations of conditions.

---

### 5. **`switch` Expressions with `if` Logic**
A **`switch` expression** in C# can often replace multiple `if-else` conditions for more readable and compact code. A `switch` expression is more versatile than the traditional `switch` statement.

#### Example with `switch` Expression:
```csharp
int day = 2;
string dayName = day switch
{
    1 => "Monday",
    2 => "Tuesday",
    3 => "Wednesday",
    4 => "Thursday",
    5 => "Friday",
    6 => "Saturday",
    7 => "Sunday",
    _ => "Invalid day"  // Default case
};

Console.WriteLine(dayName); // Output: Tuesday
```
- The `switch` expression is evaluated and returns a value, which can be stored in a variable or used directly.

You can also use **`switch` expressions** with more complex logic inside the `if` conditions.

---

### 6. **`if` with `when` (C# 7.0 and Higher)**
You can add a **`when`** clause to an `if` condition to perform pattern matching with additional filters.

#### Example with `if` and `when`:
```csharp
object obj = 10;

if (obj is int number && number > 5)
{
    Console.WriteLine($"The number is greater than 5: {number}");
}
else
{
    Console.WriteLine("Condition not met");
}
```
- **Output**: `The number is greater than 5: 10`
- The `when` clause is used for an additional condition check after verifying the type.

---

### 7. **Using `if` with Multiple Boolean Expressions**
You can combine more than two conditions in a single `if` statement for complex logic. You can also use **`!`** for negation.

#### Example with Multiple Conditions:
```csharp
int age = 20;
bool hasTicket = true;
bool isVIP = false;
bool hasPaid = true;

if (age >= 18 && (hasTicket || isVIP) && hasPaid)
{
    Console.WriteLine("You are allowed to enter.");
}
else
{
    Console.WriteLine("You are not allowed to enter.");
}
```
- **Output**: `You are allowed to enter.`
- Multiple conditions can be evaluated using logical AND (`&&`) and OR (`||`).

---

### 8. **Complex `if` with Method Calls**
Sometimes, your conditions may involve complex expressions, including method calls, which can be evaluated directly in the `if` statement.

#### Example:
```csharp
bool IsEligibleForDiscount(int age, bool hasCoupon)
{
    return age > 18 && hasCoupon;
}

int age = 22;
bool hasCoupon = true;

if (IsEligibleForDiscount(age, hasCoupon))
{
    Console.WriteLine("Eligible for discount.");
}
else
{
    Console.WriteLine("Not eligible for discount.");
}
```
- **Output**: `Eligible for discount.`
- The method call `IsEligibleForDiscount` is used to evaluate the condition.

---

### Summary of Advanced `if` Techniques:
1. **Null-Coalescing and Null-Conditional**: Safe handling of `null` with `??` and `?.`.
2. **Pattern Matching**: Use `is` to check types and extract values directly.
3. **Logical Operators**: Combine multiple conditions using `&&`, `||`, and `!`.
4. **Tuple Matching**: Compare multiple values in a tuple.
5. **Switch Expressions**: More compact alternative to multiple `if` statements.
6. **`if` with `when`**: Add additional conditions for more complex matching.
7. **Method Calls in Conditions**: Call methods within `if` conditions for complex logic.

