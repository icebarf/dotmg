DESTDIR?=
PREFIX?=/usr

BIN:=dotmg
MANPAGE:=man/dotmg.1

all: install install-man

install: $(BIN)
	install -Dm755 ./$< "$(DESTDIR)$(PREFIX)/bin/$<"

install-man: $(MANPAGE)
	install -Dm544 ./$< "$(DESTDIR)$(PREFIX)/share/man/man1/dotmg.1"

uninstall:
	rm -f "$(DESTDIR)$(PREFIX)/bin/$(BIN)"
	rm -f "$(DESTDIR)$(PREFIX)/share/man/man1/$<"
