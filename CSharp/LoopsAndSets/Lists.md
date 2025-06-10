# Lists in C#

A List in C# (`List<T>`) is a generic collection that provides a dynamic array implementation, allowing you to store elements of a specific type. Unlike arrays, Lists can automatically resize as elements are added or removed.

## Creating Lists

```csharp
// Empty list of integers
List<int> numbers = new List<int>();

// List with initial capacity (for performance)
List<string> names = new List<string>(100);

// List with initial values
List<double> prices = new List<double> { 19.99, 29.99, 39.99 };
```

## Basic Operations

```csharp
// Adding elements
numbers.Add(10);                // Add to end
numbers.Insert(0, 5);           // Insert at specific position

// Accessing elements
int firstNumber = numbers[0];   // Access by index

// Removing elements
numbers.Remove(10);             // Remove specific value
numbers.RemoveAt(0);            // Remove at index
numbers.Clear();                // Remove all elements
```

## Common Methods and Properties

```csharp
// Properties
int count = numbers.Count;      // Number of elements
int capacity = numbers.Capacity; // Internal array size

// Finding elements
int index = names.IndexOf("John");
bool contains = names.Contains("Alice");

// Sorting and transforming
numbers.Sort();
numbers.Reverse();

// Range operations
numbers.AddRange(new int[] { 1, 2, 3 });
List<int> subset = numbers.GetRange(1, 3);
```

## Advantages Over Arrays

- **Dynamic Sizing**: Automatically grows as needed
- **Rich API**: More built-in methods for manipulation
- **LINQ Integration**: Works seamlessly with LINQ queries
- **Simplified Operations**: Easy addition, insertion, removal

## Usage with LINQ

```csharp
var evenNumbers = numbers.Where(n => n % 2 == 0).ToList();
var sum = numbers.Sum();
var ordered = numbers.OrderByDescending(n => n).ToList();
```

Lists are one of the most commonly used collection types in C# due to their flexibility and ease of use, making them suitable for most scenarios where you need to store and manipulate collections of data.