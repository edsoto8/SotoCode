# Creating and Managing Pull Requests

Pull requests (PRs) are a fundamental part of collaborative development on GitHub. They allow you to propose changes to a repository that can be reviewed before being merged into the main codebase.

## What is a Pull Request?

A pull request is a method of submitting contributions to a project. It lets you notify team members that you've completed a feature or fixed an issue. PRs are also an important part of the code review process.

## Creating a Pull Request

### 1. Fork the Repository (for external contributions)

If you're contributing to a repository you don't have write access to:

- Navigate to the repository on GitHub
- Click the "Fork" button in the top right corner
- This creates a copy of the repository in your GitHub account

### 2. Clone the Repository

```bash
# If you forked:
git clone https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git

# If you have direct access:
git clone https://github.com/ORIGINAL-OWNER/REPOSITORY-NAME.git
```

### 3. Create a Branch

Create a new branch for your changes:

```bash
git checkout -b your-branch-name
```

### 4. Make Your Changes

- Make the necessary code changes
- Commit your changes with descriptive commit messages:

```bash
git add .
git commit -m "Add clear description of changes"
```

### 5. Push Your Branch

```bash
git push origin your-branch-name
```

### 6. Create the Pull Request

- Navigate to the original repository (or your fork)
- Click "Pull requests" > "New pull request"
- If working from a fork, click "Compare across forks"
- Select your branch with changes
- Click "Create pull request"
- Fill out the PR template with a title and description
- Click "Create pull request"

## Writing Good Pull Requests

- **Use a clear title**: Summarize what the PR does
- **Detailed description**: Explain why these changes are needed
- **Reference issues**: Link to related issues with `#issue-number`
- **Include screenshots/GIFs**: For UI changes
- **Add tests**: For new features or bug fixes
- **Update documentation**: If your changes affect docs

## Responding to Feedback

- Be responsive to reviewer comments
- Make requested changes promptly
- Use the "Resolve conversation" feature for addressed feedback
- Push additional commits to the same branch when making changes

## After Your PR is Merged

- Delete your branch
- Pull the latest changes from the main repository
- Start work on a new branch for your next contribution

## PR Review Process

When reviewing PRs:

- Be respectful and constructive
- Focus on code quality, not style preferences
- Approve only when you're confident in the changes
- Request changes when issues need to be addressed

Pull requests are a collaborative process that helps maintain code quality and ensures changes are properly reviewed before being integrated into the main codebase.