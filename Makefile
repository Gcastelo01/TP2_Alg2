CC = g++
CFLAGS = -std=c++11 -pthread -ligraph -L/usr/local/lib

EXEC = ./main

OBJ = ./bin
SRC = ./src
INCLUDE = ./include


${EXEC}: ${OBJ}/main.o 
	${CC} ${CFLAGS} ${OBJ}/*.o -O3 -o ${EXEC}

${OBJ}/main.o: ${SRC}/main.cpp
	${CC} ${CFLAGS} -I ${INCLUDE}/* -c ${SRC}/main.cpp  -O3 -o ${OBJ}/main.o 
