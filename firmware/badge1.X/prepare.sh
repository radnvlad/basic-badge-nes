#!/usr/bin/env bash

pushd ../../games
xc32-objcopy --rename-section .data=.progmem.data,contents,alloc,load,readonly,data --input-target binary --output-target elf32-tradlittlemips --binary-architecture pic32mx SuperMarioBros.nes nesgame.o
popd 
