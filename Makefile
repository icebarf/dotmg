DESTDIR?=""
PREFIX?="/usr"

BIN:=dotmg

install: $(BIN)
	install -Dm755 ./$< "$(DESTDIR)$(PREFIX)/bin/$<"

uninstall:
	rm -f "$(DESTDIR)$(PREFIX)/bin/$(BIN)"
