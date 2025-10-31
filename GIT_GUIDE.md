# 🚀 Quick Git Commands for Updates

## To Push README Changes to GitHub

```bash
# 1. Check what changed
git status

# 2. Stage all changes
git add .

# 3. Commit with a message
git commit -m "docs: Add comprehensive professional README with screenshots placeholders"

# 4. Push to GitHub
git push
```

## To Add Screenshots Later

```bash
# 1. Add your screenshots to the screenshots/ folder
# 2. Stage them
git add screenshots/

# 3. Commit
git commit -m "docs: Add project screenshots"

# 4. Push
git push
```

## Common Git Commands

### View Changes
```bash
git status              # See what files changed
git diff               # See detailed changes
git log                # View commit history
```

### Making Updates
```bash
git add <file>         # Stage specific file
git add .              # Stage all files
git commit -m "msg"    # Commit with message
git push               # Upload to GitHub
```

### Pulling Latest Changes
```bash
git pull               # Download latest changes
```

### Branches
```bash
git branch             # List branches
git branch feature-x   # Create new branch
git checkout feature-x # Switch to branch
git merge feature-x    # Merge branch
```

### Undo Changes
```bash
git restore <file>     # Discard changes in file
git reset HEAD~1       # Undo last commit (keep changes)
git reset --hard HEAD~1 # Undo last commit (discard changes)
```

## Best Practices

1. **Commit Often:** Make small, frequent commits
2. **Clear Messages:** Write descriptive commit messages
3. **Pull Before Push:** Always pull before pushing
4. **Test First:** Test your changes before committing

## Commit Message Convention

```
feat: Add new feature
fix: Fix bug
docs: Update documentation
style: Format code
refactor: Refactor code
test: Add tests
chore: Update dependencies
```

## Example Workflow

```bash
# Make changes to your code
# Save files

git status                              # Check changes
git add .                               # Stage all
git commit -m "feat: Add video call UI" # Commit
git push                                # Push to GitHub
```
