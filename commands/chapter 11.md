This chapter talks about variables in bash. pretty simple stuff

```bash
current_dir = $(pwd)
echo $current_dir
```

# Shell Variables

```bash
echo $# # number of variables passed
echo $! # exit code of last command
echo $1 $2 $3 # nth variable passed
echo $0 # script name
```


# commands

## shift

shifts positional parameters n positions to the left
```bash
#! /usr/bin/env bash
echo $1 $2 $3
shift 1 # no argmuents passed defaults to 1
echo $1 $2 $3
```

``` bash
$ ./script.sh x y z
x y z
y z
```
