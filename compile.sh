clang++ -march=armv8.2-a+sve -msve-vector-bits=512 -O -Wall test.cpp
./a.out > llvm.out
g++     -march=armv8.2-a+sve -msve-vector-bits=512 -O -Wall test.cpp
./a.out > gcc.out
diff llvm.out gcc.out
