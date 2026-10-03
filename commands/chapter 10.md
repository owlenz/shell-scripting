pretty much all notes are the code i wrote pracitcing this chapter at [my repo](https://github.com/owlenz/shell-scripting)
## test

used for comparing values and filetypes

```bash
$ test 10 -eq 10 ; echo $?
0 # true
$ test "true" = "false" ; echo $?
1 # false 
```

 test is identical to using square brackets `[]` with the conditions inside it 

```bash
$ [ 10 -eq 10 ] ; echo $?
0
```

also could be used for checking files and their types

```bash
$ [ -d ~/.config ] ; echo $?
0
```

most common file test options
![[tests.png]]


