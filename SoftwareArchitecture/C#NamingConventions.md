In C#, naming conventions help keep code clean, consistent, and readable. Here are the standard naming conventions used in C# (based on Microsoft's guidelines and common best practices):

---

### **1. PascalCase**
Use for:
- **Class names**
- **Method names**
- **Properties**
- **Namespaces**
- **Public fields (rare)**

**Example:**
```csharp
public class CustomerAccount { }

public void ProcessOrder() { }

public string FirstName { get; set; }
```

---

### **2. camelCase**
Use for:
- **Local variables**
- **Method parameters**
- **Private fields** (often prefixed with `_`)

**Example:**
```csharp
private string _customerName;
public void SetName(string fullName)
{
    string processedName = fullName.Trim();
    _customerName = processedName;
}
```

---

### **3. UPPER_CASE**
Use for:
- **Constants**
- **Readonly static fields** (sometimes PascalCase if not constant)

**Example:**
```csharp
public const int MAX_ATTEMPTS = 5;
private static readonly TimeSpan DefaultTimeout = TimeSpan.FromSeconds(30);
```

---

### **4. Interface Naming**
Prefix with `I`.

**Example:**
```csharp
public interface IRepository { }
public interface ILogger { }
```

---

### **5. Event Naming**
Use past participle or verbs.

**Example:**
```csharp
public event EventHandler OrderPlaced;
public event EventHandler DataLoaded;
```

---

### **6. Enum Naming**
Use PascalCase for the enum type and its values.

**Example:**
```csharp
public enum OrderStatus
{
    Pending,
    Shipped,
    Delivered,
    Cancelled
}
```

---

### **7. File and Project Naming**
Match the class or primary content inside. Use PascalCase.

**Example:**
- File: `CustomerService.cs` contains `public class CustomerService`.

---

