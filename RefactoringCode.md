Refactoring code means restructuring it without changing its external behavior to improve readability, maintainability, and performance. Here’s how you can approach refactoring effectively:

---

## **1. Identify Areas for Improvement**
Look for:
- **Code duplication** (repeated logic)
- **Long methods** (try breaking them into smaller functions)
- **Large classes** (apply Single Responsibility Principle)
- **Hard-coded values** (use constants or config files)
- **Poorly named variables or functions** (use meaningful names)

---

## **2. Apply Refactoring Techniques**
### **A. Extract Methods**
Break large functions into smaller, reusable ones.
#### *Before:*
```csharp
void ProcessOrder(Order order)
{
    Console.WriteLine("Processing Order ID: " + order.Id);
    order.Status = "Processed";
    SendNotification(order.CustomerEmail, "Your order is processed.");
}
```
#### *After:*
```csharp
void ProcessOrder(Order order)
{
    LogOrderProcessing(order);
    UpdateOrderStatus(order);
    NotifyCustomer(order);
}

void LogOrderProcessing(Order order) => Console.WriteLine($"Processing Order ID: {order.Id}");
void UpdateOrderStatus(Order order) => order.Status = "Processed";
void NotifyCustomer(Order order) => SendNotification(order.CustomerEmail, "Your order is processed.");
```

---

### **B. Replace Magic Numbers with Constants**
#### *Before:*
```csharp
if (discount > 50)
{
    price *= 0.9;
}
```
#### *After:*
```csharp
const int MAX_DISCOUNT = 50;
const double DISCOUNT_RATE = 0.9;
if (discount > MAX_DISCOUNT)
{
    price *= DISCOUNT_RATE;
}
```

---

### **C. Use Meaningful Variable & Method Names**
#### *Before:*
```csharp
void Calc(int x, int y)
{
    int z = x * y;
    Console.WriteLine(z);
}
```
#### *After:*
```csharp
void CalculateProduct(int num1, int num2)
{
    int product = num1 * num2;
    Console.WriteLine(product);
}
```

---

### **D. Remove Code Duplication**
#### *Before:*
```csharp
void PrintOrder(Order order)
{
    Console.WriteLine($"Order ID: {order.Id}");
    Console.WriteLine($"Customer: {order.CustomerName}");
    Console.WriteLine($"Total: {order.Total}");
}

void PrintInvoice(Invoice invoice)
{
    Console.WriteLine($"Invoice ID: {invoice.Id}");
    Console.WriteLine($"Customer: {invoice.CustomerName}");
    Console.WriteLine($"Total: {invoice.Total}");
}
```
#### *After (Extract Common Logic into a Generic Method):*
```csharp
void PrintEntity<T>(T entity) where T : IEntity
{
    Console.WriteLine($"ID: {entity.Id}");
    Console.WriteLine($"Customer: {entity.CustomerName}");
    Console.WriteLine($"Total: {entity.Total}");
}
```

---

### **E. Introduce Dependency Injection**
Instead of hardcoding dependencies, inject them.
#### *Before:*
```csharp
class OrderService
{
    private EmailService emailService = new EmailService();
}
```
#### *After:*
```csharp
class OrderService
{
    private readonly IEmailService _emailService;
    public OrderService(IEmailService emailService) => _emailService = emailService;
}
```

---

## **3. Test After Each Refactor**
Ensure that the behavior remains the same by:
- Running **unit tests**
- Using **automated testing** tools
- Checking logs for unexpected issues

---

## **4. Use Refactoring Tools**
- **Visual Studio** (Refactor menu: Extract Method, Rename, Inline Variable)
- **ReSharper** (Code cleanup, Remove duplicate code)
- **SonarQube** (Code quality analysis)

