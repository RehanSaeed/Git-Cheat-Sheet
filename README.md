# Git-Cheat-Sheet
A cheat sheet for uncommon Git commands

## Branches
| Command | Description |
| - | - |
| `git branch foo`                          | Create a new branch |
| `git checkout foo`                        | Switch to a branch |
| `git merge foo`                           | Merge branch into current branch |

## Staged Changes
| Command | Description |
| - | - |
| `git mv file1.txt file2.txt               | Move/rename file |
| `git rm --cached file.txt`                | Unstage file |
| `git rm --force file.txt`                 | Unstage and delete file |
| `git reset HEAD`                          | Unstage changes |
| `git reset --hard HEAD`                   | Unstage and delete changes |

## Changing Commits
| Command | Description |
| - | - |
| `git reset 5720fdf`                       | Reset current branch but not working area to commit |
| `git reset --hard 5720fdf`                | Reset current branch and working area to commit |
| `git commit --amend`                      | Change the last commit |
| `git revert 5720fdf`                      | Revert a commit |
| `git rebase --interactive`                | Squash, rename and drop commits |
| `git rebase --continue`                   | Continue an interactive rebase |

## Compare
| Command | Description |
| - | - |
| `git diff`                                | See difference between working area and current branch |
| `git diff master other`                   | See difference between two branches |

## View
| Command | Description |
| - | - |
| `git log`                                 | See commit list |
| `git log --graph --oneline --decorate`    | See commit visualization |
| `git show HEAD`                           | Show current commit |
| `git show 5720fdf`                        | Show named commit |
| `git blame file.txt`                      | See who changed each line and when |

## Stash
| Command | Description |
| - | - |
| `git stash`                               | Stash staged files |
| `git stash --include-untracked`           | Stash working area and staged files |
| `git stash list`                          | List stashes |
| `git stash apply`                         | Moved last stash to working area |
| `git stash apply 0`                       | Moved named stash to working area |
| `git stash clear`                         | Clear the stash |
