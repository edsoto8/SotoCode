### Basic `if` Statements in C#

In C#, **`if` statements** are used to execute a block of code only if a specified condition evaluates to `true`. It's one of the most fundamental control flow structures.

Here's how the basic `if` statement works:

### 1. Simple `if` Statement
A simple `if` statement executes a block of code if the condition is `true`.

#### Syntax:
```csharp
if (condition)
{
    // Code to execute if condition is true
}
```

#### Example:
```csharp
int number = 10;

if (number > 5)
{
    Console.WriteLine("Number is greater than 5.");
}
```
- **Output**: `Number is greater than 5.`
- Since `10 > 5` is `true`, the code inside the `if` block is executed.

### 2. `if-else` Statement
The **`if-else`** statement allows you to execute one block of code if the condition is `true`, and another block if the condition is `false`.

#### Syntax:
```csharp
if (condition)
{
    // Code to execute if condition is true
}
else
{
    // Code to execute if condition is false
}
```

#### Example:
```csharp
int number = 3;

if (number > 5)
{
    Console.WriteLine("Number is greater than 5.");
}
else
{
    Console.WriteLine("Number is 5 or less.");
}
```
- **Output**: `Number is 5 or less.`
- Since `3 <= 5`, the `else` block is executed.

### 3. `if-else if-else` Statement
The **`if-else if-else`** structure is used when you need to check multiple conditions. Only the first `true` condition's block is executed, and the rest are ignored.

#### Syntax:
```csharp
if (condition1)
{
    // Code to execute if condition1 is true
}
else if (condition2)
{
    // Code to execute if condition2 is true
}
else
{
    // Code to execute if neither condition is true
}
```

#### Example:
```csharp
int number = 7;

if (number > 10)
{
    Console.WriteLine("Number is greater than 10.");
}
else if (number == 7)
{
    Console.WriteLine("Number is equal to 7.");
}
else
{
    Console.WriteLine("Number is less than or equal to 10 but not 7.");
}
```
- **Output**: `Number is equal to 7.`
- The second condition (`number == 7`) is `true`, so the corresponding block is executed.

### 4. Nested `if` Statements
You can also have `if` statements inside other `if` statements. This is called **nested `if` statements**.

#### Syntax:
```csharp
if (condition1)
{
    if (condition2)
    {
        // Code to execute if both conditions are true
    }
}
```

#### Example:
```csharp
int age = 20;
bool hasTicket = true;

if (age >= 18)
{
    if (hasTicket)
    {
        Console.WriteLine("You can enter.");
    }
    else
    {
        Console.WriteLine("You need a ticket to enter.");
    }
}
else
{
    Console.WriteLine("You must be 18 or older to enter.");
}
```
- **Output**: `You can enter.` 
- Since `age >= 18` and `hasTicket == true`, the nested `if` condition is checked and executed.

### 5. Conditional Operators (`&&`, `||`)
You can combine multiple conditions in an `if` statement using logical operators:

- **`&&`**: Logical AND (both conditions must be true).
- **`||`**: Logical OR (only one condition must be true).

#### Example:
```csharp
int age = 25;
bool hasTicket = true;

if (age >= 18 && hasTicket)
{
    Console.WriteLine("You can enter.");
}
else
{
    Console.WriteLine("You cannot enter.");
}
```
- **Output**: `You can enter.`
- Both conditions (`age >= 18` and `hasTicket`) are true, so the code inside the `if` block is executed.

### 6. Ternary Operator (`? :`)
The **ternary operator** is a shorthand for a simple `if-else` statement. It's useful for simple conditions that return values.

#### Syntax:
```csharp
condition ? expressionIfTrue : expressionIfFalse;
```

#### Example:
```csharp
int age = 16;
string result = age >= 18 ? "Adult" : "Minor";
Console.WriteLine(result); // Output: Minor
```
- If `age >= 18` is true, `"Adult"` will be returned; otherwise, `"Minor"` will be returned.

### Summary of `if` Statements in C#:

1. **Simple `if`**: Executes code when a condition is true.
2. **`if-else`**: Executes one block of code if the condition is true, another if it’s false.
3. **`if-else if-else`**: Allows checking multiple conditions.
4. **Nested `if`**: One `if` statement inside another.
5. **Logical Operators (`&&`, `||`)**: Combine conditions for more complex checks.
6. **Ternary Operator**: A shorthand for a simple `if-else`.

