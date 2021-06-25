# new users

Install docker + create `common` user first

```bash
# run as su
adduser $user
usermod -aG sudo $user
usermod -aG common $user
usermod -aG docker $user
su $user
cd
mkdir .ssh
echo "$sshkey" > .ssh/authorized_keys
exit
```

