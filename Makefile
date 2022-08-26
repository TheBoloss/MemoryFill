all:
	g++ -c ./src/*.cpp
	g++ *.o -o app -mwindows -static
# -mwindows to hide console