#!/bin/sh
# Update jar file to match your system
ANTLR_LIB="C:/JavaLib/antlr-4.7.2-complete.jar"
touch out
rm -r out
mkdir out
java -jar ${ANTLR_LIB} -no-listener -visitor Expr.g4 -o out/
cp *.java out/
javac -cp .:out:${ANTLR_LIB} out/*.java
java -classpath .:out/:${ANTLR_LIB} Calc $1


