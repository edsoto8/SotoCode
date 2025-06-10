# Do/While Loops in C#

A `do/while` loop is a control flow statement that executes a block of code **at least once** before checking a condition to determine whether to repeat the loop.

## Basic Syntax

```csharp
do
{
    // Code to execute
} while (condition);
```

## Key Characteristics

- **Executes at least once**: The code block always runs before the condition is checked
- **Condition checked at the end**: Evaluation happens after each iteration
- **Semicolon required**: Note the semicolon after the while condition

## Example

```csharp
int i = 0;
do
{
    Console.WriteLine($"Current value: {i}");
    i++;
} while (i < 5);
```

## Difference from While Loop

| Do/While Loop | While Loop |
|---------------|------------|
| Executes at least once | May not execute at all |
| Condition at end | Condition at beginning |
| Good for menus and user input | Good for unknown iterations |

## Common Use Cases

- Menu systems where at least one choice is presented
- Input validation where you need to prompt at least once
- Processing that must occur at least one time
- Game loops where one frame must always be processed

## Example: User Input Validation

```csharp
string input;
do
{
    Console.Write("Enter a positive number: ");
    input = Console.ReadLine();
} while (!int.TryParse(input, out int number) || number <= 0);
```

This ensures the user is prompted at least once and continues prompting until valid input is received.