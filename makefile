CXX = g++
CXXFLAGS = -std=c++11 -Wall -no-pie

all:  lizard

lizard: lizard.o $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^ -pthread
	
clean:
	$(RM) *.o lizard
