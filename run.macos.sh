#!/bin/sh

rm -f *.h *.o *.jnilib *.class

javac HelloWorld.java && \
javah -jni HelloWorld && \

cc -c -I /Library/Java/Home/include -I /Library/Java/Home/include/darwin helloworld.c && \
cc -dynamiclib -o libhelloworld.jnilib helloworld.o -framework JavaVM && \

java HelloWorld
