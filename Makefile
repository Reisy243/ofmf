# For build in linux uses make
# OpenFlameMobileFirmware for moto e6plus (xt2025-1) by Reisy Red Panda (https://github.com/Reisy243/)

NAME = preloader
BINDIR = build
SOURCES = main.c cpu.c gpu.c ram.c
CFLAGS = -static -mcpu=cortex-a53 -march=armv8-a
CROSSCOMPILER = aarch64-linux-gnu-

RM := rm -rvf
MD := mkdir -p
OUT := $(BINDIR)/$(NAME).bin
CC := $(CROSSCOMPILER)gcc

all: clean prepare $(OUT)

prepare:
	$(MD) $(BINDIR)

$(OUT): $(SOURCES)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	$(RM) $(BINDIR)