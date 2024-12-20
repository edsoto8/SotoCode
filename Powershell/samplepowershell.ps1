# Define the file name and output path
$FileName = "Output.md"
$OutputPath = Join-Path -Path $PSScriptRoot -ChildPath $FileName

# Define the header name and ID
$HeaderName = "Your Header Name"
$ID = "12345"

# Create the contents of the Markdown file
$MarkdownContent = @"
# $HeaderName

- ID: $ID
"@

# Write the contents to the Markdown file
Set-Content -Path $OutputPath -Value $MarkdownContent

Write-Host "Markdown file '$FileName' created successfully at $OutputPath"