$SolutionName = "VariablesSolution"
$ProjectName = "VariablesProject"

# Create a solution
dotnet new sln -n $SolutionName

# Create a console app project
dotnet new console -n $ProjectName

# Add the project to the solution
dotnet sln add $ProjectName/$ProjectName.csproj

# Navigate into the project folder
cd $ProjectName

# Restore dependencies
dotnet restore

# Run the application
dotnet run
