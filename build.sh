#!/bin/bash

rm -rf ./out
mkdir ./out
javac "TokenType.java" -d "./out"
javac -cp "./out" "Token.java" -d "./out"
javac -cp "./out" "Scanner.java" -d "./out"
javac -cp "./out" "Lox.java" -d "./out"
jar cvfe ./out/Lox.jar com.craftinginterpreters.lox.Lox -C ./out com/craftinginterpreters/lox/Lox.class \
							-C ./out com/craftinginterpreters/lox/Scanner.class \
							-C ./out com/craftinginterpreters/lox/Token.class \
							-C ./out com/craftinginterpreters/lox/TokenType.class
#java -jar ./out/Lox.jar


