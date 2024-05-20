# Detail:

```
  Project: Weather Forecast
  Author: qynntrn
  Last update: 19/05/2024
```
# Content:

The website with functions such as viewing current weather, weather forecast, recent weather, searching by area, receiving weather notifications via email (under construction)

# Deloy:
```
    Link: https://railsweatherforecast-5fb5a5e23879.herokuapp.com
```

# Working with Git

```
  The main branch is the **Master** branch that contains common code. You cannot push code directly into this branch but must **checkout** another branch and create a **Pull Request**.

  Note when **checkout** between branches:
    **force checkout**: remove all of your uncommitted changes -> all your devs will disappear when you move to the new branch (later, checkout the old branch and the code will be gone too)
    **checkout**: bring changes from old branch to new branch
    **stash**: save changes in the old branch to the stash and checkout to the new branch (uncommitted code will not be in both the new branch and the old branch, when you checkout from the new branch to the old branch and unstash it will appear again)
```

# Workflow with git when adding new features:

```
  1. `git checkout main`
  2. `git pull`
  3. `git checkout -b Feature/MyBranch`
```

# **Pull Request** creation process

```
  1. `git checkout main`
  2. `git pull`
  3. `git checkout Feature/MyBranch`
  4. `git merge main`
```


# How to use:

```
  Development mode:
    Run in terminal: bundle install
  Production mode: 
    Run in terminal: rails s
```

# VSC extension:

```
  Name: EditorConfig for VS Code
  Id: EditorConfig.EditorConfig
  Description: EditorConfig Support for Visual Studio Code
  Version: 0.16.4
  Publisher: EditorConfig
```


# Note:

```
  Any problem please contact me through:
    Email: tcquyen.work@gmail.com
```

# Version log:

```
  Version: v0.0.1
  Date: 19/05/2024
  Log: initial commit
```
