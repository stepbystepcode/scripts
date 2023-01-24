if [ ! -f "$1" ]; then
  cp ~/Documents/Templates/demo.java ./$1
  nvim ./$1
else
  nvim ./$1
fi
