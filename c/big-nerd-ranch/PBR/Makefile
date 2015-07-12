CC=gcc

SOURCE=main.c

OUT=main

build: clean notes
	
	$(CC) $(SOURCE) -o $(OUT)
	./$(OUT)

notes:
	notey 

clean:
	rm -f $(OUT)

.PHONY: notes
