#!/bin/bash

for ((i = 6; i < 20; i++)); do
    ./a.out $i 2 > prog.ml
    echo "size: $i"
    ../ocamlopt.false -o prog_false unix.cmxa prog.ml 
    ../ocamlopt.true -o prog_true unix.cmxa prog.ml
    echo "false:"
    ./prog_false
    echo "true:"
    ./prog_true
done
