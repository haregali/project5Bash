#!/bin/bash

javac -cp .:stdlib.jar:algs4.jar StronglyConnected.java
for ((i=0; i<=5; i+=1))
do
	a='input'$i'.txt'
	b='output'$i'.txt'	
	java -cp .:stdlib.jar:algs4.jar StronglyConnected $a > diff.txt
	var=$(diff diff.txt "$b")
        if [ -n "$var" ]; then
		 echo "$i"
	  	echo "$var"
	  	break
	fi
done

