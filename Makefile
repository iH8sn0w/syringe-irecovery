CC = tcc
CFLAGS_OSX = -lusb -framework CoreFoundation -framework IOKit -lreadline
CFLAGS_LNX = -lusb -lreadline
CFLAGS_WIN = -lusb -lreadline

all:
		@echo 'ERROR: no platform defined.'
		@echo 'LINUX USERS: make linux'
		@echo 'MAC OS X USERS: make macosx'
	 	@echo 'WINDOWS USERS: make win'
macosx:	
		@echo 'Buildling irecovery (Mac Os X)'			
		@$(CC) irecovery.c -o irecovery $(CFLAGS_OSX)
linux:
		@echo 'Buildling irecovery (Linux)'
		@$(CC) irecovery.c -o irecovery $(CFLAGS_LNX)
win:
		@echo 'Buildling irecovery (Windows)'
		@$(CC) irecovery.c -o irecovery -I "C:\MinGW\include" -L "C:\MinGW\lib" $(CFLAGS_WIN)

clean:
		@echo 'Cleaning...'
		@rm -rf *.o irecovery
		@echo 'Cleaning finished.'
