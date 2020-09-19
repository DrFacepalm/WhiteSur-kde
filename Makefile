PREFIX ?= /usr
IGNORE ?=
THEMES ?= aurorae color-schemes Kvantum plasma wallpapers latte-dock sddm

THEMES := $(filter-out $(IGNORE), $(THEMES))

all:

install:
		mkdir -p $(DESTDIR)$(PREFIX)/share
		cp -R $(THEMES) $(DESTDIR)$(PREFIX)/share
