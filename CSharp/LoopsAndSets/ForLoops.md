# For Loops in C#

A `for` loop in C# is a control flow statement that allows code to be executed repeatedly based on a condition, typically used when the number of iterations is known or can be calculated.

## Basic Syntax

```csharp
for (initializer; condition; iterator)
{
    // Code to execute in each iteration
}
```

Where:
- **initializer**: Executed once before the loop starts, typically used to declare and initialize a counter variable
- **condition**: Evaluated before each iteration; loop continues if it evaluates to true
- **iterator**: Executed after each iteration, typically used to update the counter

## Examples

### Basic For Loop

```csharp
// Print numbers 0 through 9
for (int i = 0; i < 10; i++)
{
    Console.WriteLine(i);
}
```

### Iterating Through an Array

```csharp
string[] colors = { "Red", "Green", "Blue", "Yellow" };

for (int i = 0; i < colors.Length; i++)
{
    Console.WriteLine($"Color at index {i}: {colors[i]}");
}
```

### Multiple Variables in a For Loop

```csharp
// Count down while counting up
for (int i = 0, j = 10; i <= 10 && j >= 0; i++, j--)
{
    Console.WriteLine($"i = {i}, j = {j}");
}
```

## Advanced Features

- **Omitting Parts**: Any part of the for loop can be omitted (but the semicolons must remain)
- **Infinite Loops**: `for (;;) { }` creates an infinite loop
- **Breaking Out**: Use `break` to exit the loop early
- **Skipping Iterations**: Use `continue` to skip to the next iteration

## When to Use For Loops

- When you know the exact number of iterations in advance
- When you need to track an index value
- When you need more control over the iteration process
- When you're working with array indices directly

For loops provide precise control over repetitive tasks in your C# programs.