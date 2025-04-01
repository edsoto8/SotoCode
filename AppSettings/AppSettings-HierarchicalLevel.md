The standard hierarchy in `appsettings.json` follows a **nested key-value** structure, using JSON objects to represent categories of settings. This allows for organized and easy retrieval of configuration values.  

## **1. Basic Hierarchy Structure**
Here’s a common structure used in `appsettings.json`:  

```json
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft": "Warning",
      "System": "Error"
    }
  },
  "ConnectionStrings": {
    "DefaultConnection": "Server=myServer;Database=myDB;User Id=myUser;Password=myPass;"
  },
  "AppSettings": {
    "AppName": "My Application",
    "MaxUsers": 100,
    "Features": {
      "EnableLogging": true,
      "EnableCaching": false
    }
  }
}
```

---

## **2. Standard Hierarchy Levels**  

### **Level 1: Root Keys**  
These are the main sections, e.g., `"Logging"`, `"ConnectionStrings"`, `"AppSettings"`.  

### **Level 2: Subcategories (Nested Objects)**  
- `"Logging"` contains `"LogLevel"`  
- `"AppSettings"` contains general settings like `"AppName"`, `"MaxUsers"`, and `"Features"`  

### **Level 3: Detailed Key-Value Pairs**  
- `"LogLevel"` has `"Default"`, `"Microsoft"`, and `"System"`  
- `"Features"` has `"EnableLogging"` and `"EnableCaching"`  

---

## **3. How to Access Hierarchical Settings in Code**
### **Using IConfiguration** (Direct Access)  
```csharp
var configuration = new ConfigurationBuilder()
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .Build();

string appName = configuration["AppSettings:AppName"]; // "My Application"
string defaultLogLevel = configuration["Logging:LogLevel:Default"]; // "Information"
bool enableLogging = bool.Parse(configuration["AppSettings:Features:EnableLogging"]);
```

### **Using Strongly-Typed Classes (Recommended)**
#### **1. Define a C# Class**
```csharp
public class AppSettings
{
    public string AppName { get; set; }
    public int MaxUsers { get; set; }
    public Features Features { get; set; }
}

public class Features
{
    public bool EnableLogging { get; set; }
    public bool EnableCaching { get; set; }
}
```

#### **2. Bind the Configuration**
```csharp
var builder = WebApplication.CreateBuilder(args);
builder.Services.Configure<AppSettings>(builder.Configuration.GetSection("AppSettings"));

var app = builder.Build();
```

#### **3. Inject and Use in a Service**
```csharp
public class MyService
{
    private readonly AppSettings _appSettings;

    public MyService(IOptions<AppSettings> options)
    {
        _appSettings = options.Value;
    }

    public void PrintSettings()
    {
        Console.WriteLine($"App Name: {_appSettings.AppName}");
        Console.WriteLine($"Enable Logging: {_appSettings.Features.EnableLogging}");
    }
}
```

---

## **4. Environment-Specific Configuration**
You can override settings in `appsettings.Development.json`, `appsettings.Production.json`, etc.

For example, in `appsettings.Development.json`:
```json
{
  "AppSettings": {
    "AppName": "My Dev App",
    "Features": {
      "EnableLogging": true
    }
  }
}
```
.NET automatically loads the correct settings based on the environment.

