# Events in C#

Events in C# provide a way for a class to notify other classes when something of interest occurs. They are based on the publisher-subscriber pattern (or observer pattern) and are a key part of building loosely coupled, event-driven applications.

## Key Concepts

- An event is a member that enables a class to provide notifications to subscribers
- Events are based on delegates (type-safe function pointers)
- The publisher class defines and raises the event
- Subscriber classes register handlers for the event

## Basic Syntax

```csharp
public class Publisher
{
    // 1. Define a delegate for the event
    public delegate void MessageHandler(string message);
    
    // 2. Declare the event using the delegate
    public event MessageHandler MessageReceived;
    
    // 3. Method to raise the event
    protected virtual void OnMessageReceived(string message)
    {
        // Check if there are any subscribers before invoking
        MessageReceived?.Invoke(message);
    }
    
    public void ProcessMessage(string message)
    {
        // Do some processing
        Console.WriteLine($"Processing: {message}");
        
        // Raise the event
        OnMessageReceived(message);
    }
}
```

## Using Events

```csharp
// Subscriber class
public class Subscriber
{
    private string _id;
    
    public Subscriber(string id)
    {
        _id = id;
    }
    
    // Event handler method
    public void HandleMessage(string message)
    {
        Console.WriteLine($"Subscriber {_id} received: {message}");
    }
}

// Main program
public static void Main()
{
    // Create the publisher
    var publisher = new Publisher();
    
    // Create subscribers
    var subscriber1 = new Subscriber("A");
    var subscriber2 = new Subscriber("B");
    
    // Subscribe to the event
    publisher.MessageReceived += subscriber1.HandleMessage;
    publisher.MessageReceived += subscriber2.HandleMessage;
    
    // Trigger the event
    publisher.ProcessMessage("Hello, world!");
    
    // Unsubscribe
    publisher.MessageReceived -= subscriber1.HandleMessage;
    
    // Only subscriber B receives this message
    publisher.ProcessMessage("Second message");
}
```

## EventHandler and EventArgs

The standard pattern in .NET is to use `EventHandler` and `EventArgs`:

```csharp
public class OrderProcessor
{
    // Standard event pattern
    public event EventHandler<OrderEventArgs> OrderProcessed;
    
    protected virtual void OnOrderProcessed(OrderEventArgs e)
    {
        OrderProcessed?.Invoke(this, e);
    }
    
    public void ProcessOrder(Order order)
    {
        // Process the order
        
        // Raise the event
        OnOrderProcessed(new OrderEventArgs(order));
    }
}

// Custom EventArgs
public class OrderEventArgs : EventArgs
{
    public Order Order { get; }
    
    public OrderEventArgs(Order order)
    {
        Order = order;
    }
}
```

Events are fundamental to building responsive, decoupled systems in C#, allowing components to communicate without direct dependencies on each other.