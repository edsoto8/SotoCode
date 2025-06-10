# ForEach Loops in C#

A `foreach` loop in C# is a control flow statement designed to iterate over elements in a collection, providing a simpler syntax than traditional `for` loops when working with arrays, lists, and other enumerable objects.

## Basic Syntax

```csharp
foreach (Type item in collection)
{
    // Code to process each item
}
```

## Key Characteristics

- **Simplified Iteration**: No need to manage indexes or check boundaries
- **Read-Only Access**: You cannot modify the collection item within the loop
- **Works with IEnumerable**: Works with any collection that implements `IEnumerable` or `IEnumerable<T>`
- **Automatic Disposal**: Properly handles IDisposable enumerators

## Examples

### Iterating through an Array

```csharp
string[] fruits = { "Apple", "Banana", "Orange", "Mango" };

foreach (string fruit in fruits)
{
    Console.WriteLine(fruit);
}
```

### Iterating through a List

```csharp
List<int> numbers = new List<int> { 1, 2, 3, 4, 5 };

foreach (int number in numbers)
{
    Console.WriteLine(number * 2);
}
```

### Iterating through a Dictionary

```csharp
Dictionary<string, int> ages = new Dictionary<string, int>
{
    { "John", 30 },
    { "Mary", 25 },
    { "Bob", 45 }
};

foreach (KeyValuePair<string, int> pair in ages)
{
    Console.WriteLine($"{pair.Key} is {pair.Value} years old");
}
```

## When to Use ForEach

- When you need to process each element in a collection
- When you don't need the index during iteration
- When you don't need to modify the collection while iterating
- When simplicity is more important than fine-grained control

ForEach loops are one of the most common and readable ways to process collections in C#.