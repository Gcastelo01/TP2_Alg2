CC = g++
CFLAGS = -Wall -std=c++11 -pthread -O3

EXEC = ./main

OBJ = ./bin
SRC = ./src
INCLUDE = ./include


${EXEC}: ${OBJ}/main.o 
	${CC} ${CFLAGS} ${OBJ}/*.o -O3 -o ${EXEC}

${OBJ}/main.o: ${SRC}/main.cpp ${OBJ}/instance-generator.o ${OBJ}/instance-processor.o ${OBJ}/solvers.o
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/main.cpp -o ${OBJ}/main.o 

${OBJ}/instance-generator.o: ${INCLUDE}/instance-generator.hpp ${SRC}/instance-generator.cpp
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/instance-generator.cpp -o ${OBJ}/instance-generator.o 

${OBJ}/instance-processor.o: ${INCLUDE}/instance-processor.hpp ${SRC}/instance-processor.cpp
	${CC} ${CFLAGS} -I ${INCLUDE} -c ${SRC}/instance-processor.cpp -o ${OBJ}/instance-processor.o 

${OBJ}/solvers.o: ${INCLUDE}/solvers.hpp ${SRC}/solvers.cpp
	${CC} ${CFLAGS} -I ${INCLUDE} -I ${INCLUDE}/build -L  /usr/local/lib -ligraph -c ${SRC}/solvers.cpp -o ${OBJ}/solvers.o 

clean: 
	rm main
	rm -rf ${OBJ}/*
	rm -rf ./instances/*
	rm -rf ./logs/*
	clear
