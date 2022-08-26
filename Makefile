all: compile link

compile:
	g++ -c ./src/*.cpp

link:
	g++ *.o -o bin/MemoryFill -mwindows -static
# -mwindows to hide console

run: compile link
	./bin/MemoryFill

ifeq ($(OS),Windows_NT)
clean:
	del *.o
	del .\bin\MemoryFill.exe
else
clean:
	rm *.o
	rm bin/MemoryFill
endif