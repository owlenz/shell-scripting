## paste

merges lines of files seperated by tabs

```bash
tee file1 << 'EOF'
i love
i hate
i want
EOF

tee file2 << 'EOF'
linux
myself
to die
EOF

paste file1 file2
i love	linux
i hate	myself
i want	to die
```

## cut

removes sections of each line of a file

```bash
cut -d: -f1 /etc/passwd
```
- -d: delimiter for cutting the lines into fields
- -f: field number to print could be used to print multiple fields with `-fX-Y` from field X to field Y

## regex

![[regex.png]]

## sed

stream editor

some important options

```bash
sed -i 's/ant/chimera ant/g' hxh.org
sed -i '/gon/s/ant/chimera ant/g' hxh.org # when gon appears in line do change
sed -i '/gon/!s/ant/chimera ant/g' hxh.org # when gon doesn't appear in line do change
sed -i'.backup' 's/ant/chimera ant/g' hxh.org
```
- -i: edits file in-place, adding a name to the option creates a backup before editing

```bash
sed -E 's/([0-9])/EUR\1/g' file.txt
```
- \1: insert the pattern inside the () brackets after EUR

### check out 
- https://linuxhint.com/50_sed_command_examples/
- `info sed | less`

