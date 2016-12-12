CXX=g++
CFLAGS=-Wall -g -I./include
LDFLAGS=-lSDL2

OBJS=obj/main.cpp.o obj/Game.cpp.o obj/Drop.cpp.o obj/utils.cpp.o
OBJS+=obj/Timer.cpp.o

bin/rain: $(OBJS)
	$(CXX) $(CFLAGS) $(LDFLAGS) $^ -o $@

obj/%.cpp.o: src/%.cpp
	$(CXX) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm obj/*
	rm bin/*