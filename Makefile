#FILES = in.1 in.2
FILES = `ls in.*`

all: a.exe

a.exe: a.cpp
	g++ -o a.exe a.cpp

test:
	for IN in $(FILES); do \
	    N=`echo $$IN | sed 's/in.//'`; \
	    OUT=out.$$N; \
	    # Compare the output with out.* \
	    # echo $$IN $$OUT; \
	    ./a.exe < $$IN | cmp - $$OUT; \
	done

file: 
	for f in $(FILES); do \
	    echo "Processing $$f"; \
	    # Do something with $$f \
	done
