# Dictionaries in C#

A dictionary in C# is a collection of key-value pairs that provides fast lookups based on unique keys. It's implemented as a hash table, offering efficient O(1) average-case performance for adding, retrieving, and removing elements.

## Basic Syntax

```csharp
// Creating a dictionary (key type, value type)
Dictionary<string, int> ages = new Dictionary<string, int>();

// Initializing with values
Dictionary<string, string> countries = new Dictionary<string, string>()
{
    { "US", "United States" },
    { "CA", "Canada" },
    { "MX", "Mexico" }
};

// Collection initializer syntax
Dictionary<int, string> employees = new Dictionary<int, string>()
{
    [101] = "John Smith",
    [102] = "Jane Doe",
    [103] = "Robert Johnson"
};
```

## Common Operations

```csharp
// Adding items
ages.Add("John", 30);
ages["Mary"] = 25;  // Also adds if key doesn't exist

// Checking if a key exists
if (ages.ContainsKey("John"))
{
    Console.WriteLine("John's age is: " + ages["John"]);
}

// Safe retrieval with TryGetValue
if (ages.TryGetValue("Bob", out int bobAge))
{
    Console.WriteLine("Bob's age is: " + bobAge);
}
else
{
    Console.WriteLine("Bob not found in dictionary");
}

// Updating values
ages["John"] = 31;

// Removing items
ages.Remove("Mary");
```

## Iterating Through a Dictionary

```csharp
// Loop through all key-value pairs
foreach (KeyValuePair<string, int> pair in ages)
{
    Console.WriteLine($"{pair.Key} is {pair.Value} years old");
}

// Shorter syntax with var
foreach (var pair in ages)
{
    Console.WriteLine($"{pair.Key} is {pair.Value} years old");
}

// Iterating through just keys
foreach (string name in ages.Keys)
{
    Console.WriteLine(name);
}

// Iterating through just values
foreach (int age in ages.Values)
{
    Console.WriteLine(age);
}
```

## Dictionary Properties and Methods

```csharp
// Count of items
int count = ages.Count;

// Check if empty
bool isEmpty = ages.Count == 0;

// Clear all items
ages.Clear();

// Get all keys or values as collections
ICollection<string> allNames = ages.Keys;
ICollection<int> allAges = ages.Values;
```

## Performance Considerations

- Dictionary lookups are very fast (O(1) average case)
- Keys must be unique - adding a duplicate key throws an exception
- Keys should implement proper GetHashCode() and Equals() methods
- Consider using ConcurrentDictionary for thread-safe operations

Dictionaries are essential data structures when you need to quickly lookup values based on a unique identifier.