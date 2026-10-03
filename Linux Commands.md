## 😕 fuser
* used for identifiying processes using the file rn

```bash
fuser -k <pid> # kill the process
fuser -v <pid> # verbose output with the type of access the process has on the file
```

## ss
* a tool for investigating sockets and used ports

🕹

```sh
sudo ss -tulnp | less # list t: tcp sockets u: udp l: listening sockets only n: dont resolve port to hostname p: pid
```

## split
* a tool used for spliting files into equal-sized chunks 

```bash
split -l <lines> <file> <prefix>
split -n <num_of_chunks> <file> # equal-sized chunks by bytes
split -n l/<num_of_chunks> <file> # equal-sized chunks by lines
```
* by default it suffixes them alphabetically using `-d` it uses numerical suffixes 

## find & fd

search for files in a directory using regexp
- fd is more user-friendly and less gay version of find
- find needs the searching directory provided before the expression could you belive that
- find needs to match the whole file name, so we need an asterisk

```bash
find . -type f -name "h[a-z]h*"
fd -tf "h[a-z]h" .
```

## [[chapter 8#paste]]
## [[chapter 8#cut]]
## [[chapter 8#sed]]