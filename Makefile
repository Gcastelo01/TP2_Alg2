CC = g++
CFLAGS = -Wall -std=c++11 -I/usr/local/include/igraph -L/usr/local/lib -pthread
LIB =  -ligraph -lm -lstdc++ -lgomp -lpthread
EXEC = ./main
OBJ = ./bin
SRC = ./src
INCLUDE = ./include


${EXEC}: ${OBJ}/main.o 
	${CC} ${CFLAGS} ${OBJ}/*.o -o ${EXEC} ${LIB}

${OBJ}/main.o: ${SRC}/main.cpp ${OBJ}/instance-generator.o ${OBJ}/instance-processor.o ${OBJ}/solvers.o
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/main.cpp -o ${OBJ}/main.o ${LIB}

${OBJ}/instance-generator.o: ${INCLUDE}/instance-generator.hpp ${SRC}/instance-generator.cpp
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/instance-generator.cpp -o ${OBJ}/instance-generator.o ${LIB}

${OBJ}/instance-processor.o: ${INCLUDE}/instance-processor.hpp ${SRC}/instance-processor.cpp
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/instance-processor.cpp -o ${OBJ}/instance-processor.o ${LIB}

${OBJ}/solvers.o: ${INCLUDE}/solvers.hpp ${SRC}/solvers.cpp 
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/solvers.cpp -o ${OBJ}/solvers.o ${LIB}

clean: 
	rm -rf ${OBJ}/*
	rm main
	rm -rf ./instances/*
	rm -rf ./logs/*
	clear
