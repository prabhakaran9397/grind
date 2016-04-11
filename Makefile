PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
UNAME_S:=$(shell uname -s)

.PHONY: install uninstall

install:
	install -m755 -d $(BINDIR)

	@if [ "$(UNAME_S)" = "Linux" ]; then\
		install -m755 -t $(BINDIR) grind; \
	fi
	@if [ "$(UNAME_S)" = "Darwin" ]; then\
		install -m755  grind $(BINDIR); \
	fi

uninstall:
	rm -f $(BINDIR)/grind
