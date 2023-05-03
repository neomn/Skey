
CC=g++
CFLAGS=-c -W all -I include
LDFLAGS=
SOURCES=src/FindDevices.cpp src/main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=./build/Skey

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *o $(EXECUTABLE)

all: $(SOURCES) $(EXECUTABLE)
