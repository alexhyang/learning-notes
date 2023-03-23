# Exercise 5: Command line Environment

This document contains solutions to [Lecture 5](https://missing.csail.mit.edu/2020/command-line) exercises and topics for later research.

Contents:

* [Exercises](#exercises)
* [More to research](#more-to-research)
* [References](#references)

## Exercises
### Job control
1.  From what we have seen, we can use some `ps aux | grep` commands to 
    get our jobs’ pids and then kill them, but there are better ways to do it. 
    Start a `sleep 10000` job in a terminal, background it with `Ctrl-Z` and 
    continue its execution with `bg`. Now use [`pgrep`](https://www.man7.org/linux/man-pages/man1/pgrep.1.html) to find its pid and [`pkill`](http://man7.org/linux/man-pages/man1/pgrep.1.html) to kill it without ever typing the pid itself. 
    (Hint: use the `-af` flags).

    Solution:
    ```bash
    sleep 10000
    pgrep -af sleep
    pkill -f sleep
    ```

    More about the -af flags:
    ```bash
    jobs
    ## [1]  + running    sleep 10000
    ## [2]  + running    sleep 20000

    pgrep sleep
    ## 21482
    ## 21962

    pgrep -a sleep
    ## 21482 sleep 10000
    ## 21962 sleep 20000

    pgrep -f sleep
    ## 21482
    ## 21962

    pgrep -af sleep
    ## 21482 sleep 10000
    ## 21962 sleep 20000

    pgrep -af "sleep 20000"
    ## 21962 sleep 20000
    ```

1.  Say you don’t want to start a process until another completes. How would you 
    go about it? In this exercise, our limiting process will always be `sleep 60 &`. 
    One way to achieve this is to use the [`wait`](https://www.man7.org/linux/man-pages/man1/wait.1p.html) command. 
    Try launching the sleep command and having an `ls` wait until the background 
    process finishes.

    However, this strategy will fail if we start in a different bash session, 
    since `wait` only works for child processes. One feature we did not discuss in 
    the notes is that the `kill` command’s exit status will be zero on success and 
    nonzero otherwise. `kill -0` does not send a signal but will give a nonzero exit 
    status if the process does not exist. Write a bash function called `pidwait` that 
    takes a pid and waits until the given process completes. You should use `sleep` to 
    avoid wasting CPU unnecessarily.

    Solution:
    ```bash
    # part 1
    sleep 60 & wait $! && ls

    # part 2 skipped

    ```

## More to research
*   Qx:
    *   to be added

## References
*   [fff]()
