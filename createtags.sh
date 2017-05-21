# */5 * * * * oleg  /home/oleg/createtags.sh
#!/bin/bash
sudo apt install exuberant-ctags
exec ctags-exuberant -f ~/tags \
-h "*.*" -R \
--exclude="\.svn" \
--exclude="\.git" \
--totals=yes \
--PHP-kinds=+cf \
~/src/
