
Be aware, this setup does not allow a full version of Java. 
Just static functions and data.
That means no objects, no GC, no util libraries, etc.


# Assumes

 * You're running linux (that's what I'm using) but OS X should also work.
 * You have an MSP430 Launchpad board and microprocessor
 * You've downloaded and installed [naken_asm](https://www.mikekohn.net/micro/naken_asm.php)
 * You've downloaded and installed [java_grinder](https://www.mikekohn.net/micro/java_grinder.php)
 * You've downloaded and installed [mspdebug](http://dlbeer.co.nz/mspdebug/)
 * You you have some JDK installed on your host system

# How to run

From the command line. 

    make test

This should do everything. 

 * Compile the Java to `.class` files.
 * Compile the `.class` files to msp430 assembly
 * Compile the assembly to a binary (hex actually)
 * Copy the program to the connected device
