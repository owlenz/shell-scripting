perliminary arguments please consult the manual pages
# users and groups

## users
### useradd

- creates a new user
```bash
sudo useradd -m -s $SHELL <username> # -m adds home directory for the user -s specifies the shell
```

### usermod

- modify an existing user
```bash
sudo usermod -a<g/G> <gid/group_name> # -a appends user to a group -g gid -G group names
```

### chpasswd
used to change passwords in an explicit and programmatic way

```bash
echo "<user>:<password" | chpasswd
```

### chage
changes a user password expiry date
```bash
chage -m 15 -M 30 -W 7 -E 2026-10-10 <user> 
```

- -m: minimum number of days before you can change user password
- -M: maximum number of days before a password change is required
- -W: number of days before the -M for you to get a warning about changing the password
- -E: account expiry date, user need to contact the system admin to regain access

## groups
### groupadd

```bash
sudo groupadd -g <gid> <group_name> # -g specifies a unique gid for this group
```

### groupmod

- modify an existing user
```bash
sudo groupmod -g <gid> -n <new_name> <old_name>
```
- -g: change gid of the group
- -n: change group name

# ownership and permissions

## mode bits

### chmod

- change mode bits of a file
```bash
sudo chmod -R 755 ~/test/
sudo chmod -R u+rwx g+rx o+rx ~/test/
sudo chmod -R 3755 ~/test/ # first digit is setgid, files inherit directory group owner
```
### chown

- change who owns the file
```bash
sudo chown -R <user>:<group> ~/test/
```

## ACL

### setfacl

```bash
sudo setfacl -R -m g:<group>:rwx ~/test/
sudo setfacl -R -d -m u:<user>:rwx ~/test/
```
- -R: recursively
- -m: modify file/directory ACL
- -d: modify ACLs of newly created file under this directory (defualt ACL)

```bash
sudo setfacl -m mask::rx ~/test/
sudo setfacl -d -m mask::rx ~/test/
```
- mask future acl to not have another perms
### getfacl

- get ACLs of specified file
```bash
sudo getfacl ~/test/
sudo getfacl ~/test/
```
