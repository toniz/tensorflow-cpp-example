g++ -std=c++11 -Wl,-rpath='$ORIGIN/lib' -Iinclude -Llib test.cpp -ltensorflow_cc -o exec
g++ -std=c++11 -Wl,-rpath='$ORIGIN/lib' -Iinclude -Llib label_image.cc -ltensorflow_cc -o label_image

#g++ -std=c++11 -Wl,-rpath='/usr/lib64/glibc-2.26/lib' -Wl,--dynamic-linker='/usr/lib64/glibc-2.26/lib/ld-linux-x86-64.so.2' -Iinclude -I'/usr/lib64/glibc-2.26/include' -Llib -L '/usr/lib64/glibc-2.26/lib' test.cpp -ltensorflow_cc -o exec 
#g++ -std=c++11 -Wl,-rpath='/usr/lib64/glibc-2.26/lib' -Wl,--dynamic-linker='/usr/lib64/glibc-2.26/lib/ld-linux-x86-64.so.2' -Iinclude -I'/usr/lib64/glibc-2.26/include' -Llib -L '/usr/lib64/glibc-2.26/lib' label_image.cc -ltensorflow_cc -o label_image 


