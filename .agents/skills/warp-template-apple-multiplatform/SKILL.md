```markdown
# warp-template-apple-multiplatform Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill teaches best practices and conventions for developing Swift-based, Apple multi-platform applications using the `warp-template-apple-multiplatform` repository. It covers file naming, import/export styles, commit patterns, and testing approaches, providing clear examples and suggested commands for a streamlined development workflow.

## Coding Conventions

### File Naming
- **Convention:** Use PascalCase for all file names.
- **Example:**  
  ```
  MainView.swift
  UserProfileManager.swift
  ```

### Import Style
- **Convention:** Use relative imports within the project.
- **Example:**  
  ```swift
  import Foundation
  import MyFeatureModule
  ```

### Export Style
- **Convention:** Use named exports for clarity and maintainability.
- **Example:**  
  ```swift
  public struct UserProfile { ... }
  public func loadUserData() { ... }
  ```

### Commit Patterns
- **Type:** Freeform (no strict prefixes)
- **Average Length:** ~16 characters
- **Example:**  
  ```
  Add login screen
  Fix crash on launch
  Update user model
  ```

## Workflows

### Starting a New Feature
**Trigger:** When beginning work on a new feature.
**Command:** `/start-feature`

1. Create a new Swift file using PascalCase naming.
2. Implement the feature using relative imports as needed.
3. Export any public structs, classes, or functions with named exports.
4. Commit changes with a clear, concise message.

### Refactoring Code
**Trigger:** When improving or reorganizing existing code.
**Command:** `/refactor`

1. Identify code to refactor.
2. Rename files to PascalCase if necessary.
3. Update import statements to use relative paths.
4. Ensure all exports remain named and explicit.
5. Commit with a descriptive message.

### Writing Tests
**Trigger:** When adding or updating tests.
**Command:** `/write-test`

1. Create a test file following the `*.test.ts` pattern (if applicable).
2. Write test cases for new or updated functionality.
3. Run tests to ensure correctness.
4. Commit test files with a clear message.

## Testing Patterns

- **Framework:** Not explicitly detected; testing approach may vary.
- **File Pattern:** Test files should follow the `*.test.ts` naming convention.
- **Example:**  
  ```
  UserProfile.test.ts
  LoginFlow.test.ts
  ```
- **Note:** Ensure all new features and bug fixes include corresponding tests.

## Commands

| Command         | Purpose                                   |
|-----------------|-------------------------------------------|
| /start-feature  | Begin work on a new feature               |
| /refactor       | Refactor or reorganize existing code      |
| /write-test     | Add or update tests for your code         |
```
