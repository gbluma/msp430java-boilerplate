

test:
	mkdir -p build
	javac -classpath ~/Downloads/java_grinder-2015-11-24/java/ -d build Test.java
	java_grinder build/Test.class build/Test.asm msp430g2231
	naken_asm -I ~/Downloads/naken_asm-2016-02-27/include/msp430/ -o build/Test.bin build/Test.asm
	mspdebug rf2500 'prog build/Test.bin'


clean:
	rm -Rf build
