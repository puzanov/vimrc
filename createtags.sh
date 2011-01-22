#!/bin/bash
exec ctags-exuberant -f ~/tags \
-h "*.*" -R \
--exclude="\.svn" \
--totals=yes \
--tag-relative=yes \
--PHP-kinds=+cf 
