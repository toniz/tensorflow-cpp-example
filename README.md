# tensorflow-cpp-example

tensorflow cpp compile example. Using tensorflow.so. can run without install tensorflow.
___

## Compile Requirement
  tensorflow.so is building in GCC5.4.0 and glibc-2.23
* need GCC >=5.4.0
* need GLIBC >= 2.23

## Compile
* g++ -std=c++11 -Iinclude -Llib test.cpp -ltensorflow_cc -o exec
* g++ -std=c++11 -Iinclude -Llib label_image.cc -ltensorflow_cc -o label_image

## Run
![图片](/doc/01.jpg)


--- 

#GCC < 5.4.0 && GLIBC < 2.23

## Insall GCC 5.4.0
    sudo yum install libmpc-devel mpfr-devel gmp-devel
    sudo yum install zlib-devel*
    curl ftp://ftp.gnu.org/pub/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.bz2 -O
    tar xvfj gcc-5.4.0.tar.bz2    
    cd gcc-5.4.0
    ./configure --with-system-zlib --disable-multilib --enable-languages=c,c++
    make -j 8
    sudo make install


> found libstdc++.so.6.0.21 installed in your system.

## Insall GLIBC 2.26
    wget http://mirror.csclub.uwaterloo.ca/gnu/libc/glibc-2.26.tar.gz
    tar -zxvf glibc-2.26.tar.gz 
    mkdir glibc-build
    cd glibc-build
    ../glibc-2.26/configure --prefix=/usr/lib64/glibc-2.26 
    make -j 8
    make install
> found /usr/lib64/glibc-2.26/lib/libc.so installed 


## Compile
    g++ -std=c++11 -Wl,-rpath='/usr/lib64/glibc-2.26/lib' -Wl,--dynamic-linker='/usr/lib64/glibc-2.26/lib/ld-linux-x86-64.so.2' -Iinclude -I'/usr/lib64/glibc-2.26/include' -Llib -L '/usr/lib64/glibc-2.26/lib' test.cpp -ltensorflow_cc -o exec 
    g++ -std=c++11 -Wl,-rpath='/usr/lib64/glibc-2.26/lib' -Wl,--dynamic-linker='/usr/lib64/glibc-2.26/lib/ld-linux-x86-64.so.2' -Iinclude -I'/usr/lib64/glibc-2.26/include' -Llib -L '/usr/lib64/glibc-2.26/lib' label_image.cc -ltensorflow_cc -o label_image 

## Run
    export LD_LIBRARY_PATH=./lib:/usr/local/lib64/

![图片](/doc/02.jpg)

> libstdc++.so.6.0.21 is in /usr/local/lib64/



