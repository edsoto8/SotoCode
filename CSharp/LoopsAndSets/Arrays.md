# Arrays in C#

Arrays in C# are fixed-size, zero-indexed collections of elements of the same type stored in contiguous memory locations.

## Declaring and Initializing Arrays

```csharp
// Declaration with size
int[] numbers = new int[5];  // Creates an array of 5 integers, all initialized to 0

// Declaration with initializer list
string[] fruits = new string[] { "Apple", "Banana", "Orange" };

// Shorthand initialization
char[] vowels = { 'a', 'e', 'i', 'o', 'u' };
```

## Accessing Array Elements

```csharp
// Accessing by index (zero-based)
int firstNumber = numbers[0];  // Gets the first element
fruits[1] = "Mango";           // Sets the second element

// Iterating through an array
foreach (string fruit in fruits)
{
    Console.WriteLine(fruit);
}

// Using a for loop
for (int i = 0; i < numbers.Length; i++)
{
    Console.WriteLine(numbers[i]);
}
```

## Array Properties and Methods

```csharp
// Getting array length
int arraySize = numbers.Length;

// Common array methods
Array.Sort(numbers);              // Sorts the array
Array.Reverse(fruits);            // Reverses the array
int index = Array.IndexOf(vowels, 'e');  // Finds element index
Array.Fill(numbers, 10);          // Fills array with a value
Array.Copy(source, destination, length); // Copies elements
bool exists = Array.Exists(numbers, x => x > 10); // Checks condition
```

## Multidimensional Arrays

```csharp
// 2D array (rectangular)
int[,] matrix = new int[3, 4];  // 3 rows, 4 columns
matrix[0, 1] = 10;              // Set element at row 0, column 1

// 3D array
int[,,] cube = new int[3, 3, 3];

// Initializing a 2D array
int[,] grid = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
};
```

## Jagged Arrays (Arrays of Arrays)

```csharp
// Jagged array - each inner array can have different length
int[][] jaggedArray = new int[3][];
jaggedArray[0] = new int[] {1, 2, 3};
jaggedArray[1] = new int[] {4, 5};
jaggedArray[2] = new int[] {6, 7, 8, 9};

// Accessing elements
int value = jaggedArray[2][1];  // Gets 7
```

## Common Operations

```csharp
// Converting array to list
List<int> numberList = numbers.ToList();

// Converting List to array
int[] numberArray = numberList.ToArray();

// LINQ operations on arrays
int sum = numbers.Sum();
int max = numbers.Max();
var filtered = numbers.Where(n => n > 5).ToArray();
```

Arrays in C# are reference types, meaning when you pass an array to a method, changes to the array elements are reflected in the original array.

Similar code found with 1 license type