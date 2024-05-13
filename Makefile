NAME := cdda_arcana_translate_jp.mo
FIRST := Arcana_translate.po
FMT := msgfmt

RM := rm -rf
SRC_DIR := $(shell find -type d -not -path "./.git*" -not -path ".")
SRC := $(foreach srcdir, $(SRC_DIR), $(wildcard $(srcdir)/*.po))


#command
all: $(NAME)

$(NAME):
	$(FMT) $(FIRST) $(SRC) -o $(NAME)

clean:
	$(RM) $(NAME)

re: clean all

.PHONY: all clean re
