# Exercise 6: Command line Environment

This document contains solutions to [Lecture 6](https://missing.csail.mit.edu/2020/version-control) exercises and topics for later research.

Contents:

* [Exercises](#exercises)
* [More to research](#more-to-research)
* [References](#references)

## Exercises
1.  Clone the [repository for the class website](https://github.com/missing-semester/missing-semester)
    1.  Explore the version history by visualizing it as a graph.
    1.  Who was the last person to modify `README.md`? (Hint: `git log`)
    1.  What was the commit message associated with the last modification to 
        the `collections: ` line of `_config.yml`? (Hint: `git blame` and `git show`)

    Solution:
    ```bash
    git clone git@github.com:missing-semester/missing-semester.git class_website
    cd class_website
    git log -- README.md
    git blame _config.yml
    ```
1.  One common mistake when learning Git is to commit large files that should 
    not be managed by Git or adding sensitive information. Try adding a file 
    to a repository, making some commits and then deleting that file from 
    history (you may want to look at [this](https://help.github.com/articles/removing-sensitive-data-from-a-repository/)).

    Solution:

    Use `git filter-repo` tool to remove sensitive data from a repository. (read
    the documentation to learn how to use it)

1.  Clone some repository from GitHub, and modify one of its existing files. What
    happens when you do `git stash`? What do you see when running `git log --all 
    --oneline`? Run `git stash pop` to undo what you did with `git stash`. In 
    what scenario might this be useful?

    Solution:
    ```bash
    # make some changes to a file then git stash
    git stash
    ## > Saved working directory and index state WIP on master ...

    git log --all --oneline
    ## two new commits were created: (refs/stash) WIP on master and index on master
    ## working tree became clean (nothing to commit)

    git stash pop
    ## two newly created commits were removed
    ## changes shown in the working tree
    ```

    Git stash saves the current changes and cleans the working tree so that developers
    can checkout other branches without losing their work.

## More to research
*   Qx:
    *   to be added

## References
*   [fff]()
