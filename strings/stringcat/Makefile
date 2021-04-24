GCC += GCC

add_string:	src strings/src
	mkdir build
	$(GCC) src/add_string.c src/add_strings.s -o build/add_string
debug: src strings/src
	$(GCC) src/add_string.c src/add_strings.s -g -o add_string
clean:
	rm -f add_string
	rm -r build