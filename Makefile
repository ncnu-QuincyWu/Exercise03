all: a.exe

a.exe: a.cpp
	g++ -o a.exe a.cpp
test:
	./a.exe
