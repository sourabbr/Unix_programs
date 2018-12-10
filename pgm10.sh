# to print hello world, number of users and current user
echo "hello world"
wc -l /etc/passwd|cut -d " " -f1>users
echo "number of users:`cat users`"
who|cut -d " " -f1>c_user
echo "current user:`cat c_user`"

