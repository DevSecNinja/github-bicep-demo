CC      = gcc
CFLAGS  = -g
RM      = rm -f

default: all

all: app

app: app.c
	$(CC) $(CFLAGS) -o app app.c

clean veryclean:
	$(RM) app
