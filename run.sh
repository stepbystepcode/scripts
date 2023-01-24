cppname=$1.c
#outname=${cppname%.*}
#outname=$outname".out"
#clang $cppname -o $outname -Wall
clang $cppname
#./$outname
./a.out
