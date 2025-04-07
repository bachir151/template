CXX = g++
CXXFLAGS = -Wall
OBJECTS = main.o template.o
EXECUTABLE = mon_executable

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) main.o template.o -o $(EXECUTABLE)

main.o: main.cpp template.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

template.o: template.cpp template.h
	$(CXX) $(CXXFLAGS) -c template.cpp -o template.o

clean: 
	rm -f $(OBJECTS) $(EXECUTABLE)

.PHONY : clean 