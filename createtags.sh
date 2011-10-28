# */5 * * * * oleg  /home/oleg/createtags.sh
#!/bin/bash
exec ctags-exuberant -f ~/tags \
-h "*.*" -R \
--exclude="\.svn" \
--totals=yes \
--PHP-kinds=+cf \
/mnt/src/namba/dev/
