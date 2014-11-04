

default: libc.so librust.so
	ruby test.rb

libc.so: libc.o
	cc -shared -o libc.so libc.o

libc.o: libc.c
	cc -c libc.c -o libc.o

librust.so: rust.rs
	rustc rust.rs --crate-type=dylib

clean:
	rm -f *.so
	rm -f *.o
