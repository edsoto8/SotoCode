Breakpoints in Visual Studio 2022 allow you to pause the execution of your code at specific points to inspect variables, step through code, and troubleshoot issues. Here's how to use them effectively:

### **Setting Breakpoints**
1. **Open your code file** in Visual Studio 2022.
2. **Click in the left margin** (gutter) next to the line where you want execution to pause. A **red dot** will appear, indicating a breakpoint.
3. Alternatively, place the cursor on a line and press **F9** to toggle a breakpoint.

### **Running with Breakpoints**
1. Start debugging by pressing **F5** (*Start Debugging*) or **Ctrl + F5** (*Start Without Debugging*).
2. Execution will pause when it reaches a breakpoint.

### **Inspecting Variables and Execution Flow**
- **Hover over variables** to see their values.
- **Use the "Autos", "Locals", or "Watch" window** to track variable values.
- **Step through code** using:
  - **F10** (*Step Over*): Executes the current line and moves to the next.
  - **F11** (*Step Into*): Steps into method calls for deeper inspection.
  - **Shift + F11** (*Step Out*): Exits the current function and returns to the caller.

### **Advanced Breakpoint Features**
- **Conditional Breakpoints**: Right-click a breakpoint → *Conditions...* → Set conditions (e.g., `x == 5`).
- **Hit Count Breakpoints**: Right-click a breakpoint → *Hit Count...* → Stop execution after a certain number of hits.
- **Log Messages Without Stopping**: Right-click a breakpoint → *Actions...* → Print a message instead of breaking.

### **Disabling & Removing Breakpoints**
- **Disable**: Right-click the breakpoint → *Disable* (keeps it but doesn't pause execution).
- **Remove**: Click on the red dot or press **F9** again.

### **Shortcut Summary**
| Action | Shortcut |
|--------|----------|
| Toggle Breakpoint | **F9** |
| Start Debugging | **F5** |
| Step Over | **F10** |
| Step Into | **F11** |
| Step Out | **Shift + F11** |
| Continue Execution | **F5** |

