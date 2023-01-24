if [ ! -f "$1" ]; then
  cp ~/Documents/Templates/c.c ./$1
  nvim ./$1
else
  nvim ./$1
fi
