# Method Overriding in C#

Method overriding is a feature of object-oriented programming that allows a derived class to provide a specific implementation of a method that is already defined in its base class.

## Key Concepts

- Overriding lets derived classes change the behavior of methods inherited from base classes
- The base class method must be marked as `virtual`, `abstract`, or `override`
- The derived class method must use the `override` keyword
- The method signature (name, parameters, return type) must be identical

## Basic Example

```csharp
public class Animal
{
    public virtual void MakeSound()
    {
        Console.WriteLine("Some generic animal sound");
    }
}

public class Dog : Animal
{
    public override void MakeSound()
    {
        Console.WriteLine("Woof!");
    }
}

public class Cat : Animal
{
    public override void MakeSound()
    {
        Console.WriteLine("Meow!");
    }
}
```

## Using the Overridden Methods

```csharp
Animal myDog = new Dog();
Animal myCat = new Cat();

myDog.MakeSound();  // Outputs: Woof!
myCat.MakeSound();  // Outputs: Meow!
```

## Method Overriding vs Method Hiding

- **Overriding** (using `override`): Uses runtime polymorphism
- **Hiding** (using `new`): Hides the base implementation without polymorphic behavior

```csharp
public class BaseClass
{
    public virtual void Display()
    {
        Console.WriteLine("BaseClass.Display()");
    }
}

public class DerivedClass : BaseClass
{
    // Method hiding
    public new void Display()
    {
        Console.WriteLine("DerivedClass.Display() - Hiding");
    }
}

// Usage:
BaseClass bc = new DerivedClass();
bc.Display();  // Outputs: BaseClass.Display()
```

## Accessing Base Class Implementation

You can call the base class implementation using the `base` keyword:

```csharp
public override void MakeSound()
{
    // Call the base implementation first
    base.MakeSound();
    
    // Then add additional behavior
    Console.WriteLine("Extended behavior in derived class");
}
```

## Rules for Method Overriding

1. Methods must have the same signature and return type
2. Base method must be `virtual`, `abstract`, or `override`
3. Derived method must use the `override` keyword
4. Access modifiers should be the same, or the derived method can have a less restrictive modifier

Method overriding is a fundamental concept in implementing polymorphism, one of the core principles of object-oriented programming.

Similar code found with 1 license type