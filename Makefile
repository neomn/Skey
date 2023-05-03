
CC=g++
CFLAGS=-c -W all -I include
SOURCES=src/FindDevices.cpp src/main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=myprogram

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *o $(EXECUTABLE)

all: $(SOURCES) $(EXECUTABLE)
