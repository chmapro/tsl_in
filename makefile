main : main.c lib/libcal.a
	gcc main.c -o main -Iinclude -Llib -l cal
	
lib/add.o : src/add.c include/add.h
	gcc -c src/add.c  -o lib/add.o -Iinclude
	
lib/sub.o : src/sub.c include/sub.h
	gcc -c src/sub.c  -o lib/sub.o -Iinclude
	
lib/libcal.a : lib/sub.o lib/add.o
	ar rcs lib/libcal.a lib/sub.o lib/add.o
	
clean:
	rm -r lib/*.a
	rm -r lib/*.o

