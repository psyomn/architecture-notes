# Location of notes

All my notes are free to be read by the willing. Now, the quality of my writing
is another question all together.

The repository of my notes exists here:

> https://github.com/psyomn/

These particular notes, may be accessed here:

> https://github.com/psyomn/architecture-notes/tree/master/languages/java

Changes and suggestions are welcome. You will be credited for possible
contributions.

# Introduction

The purpose of this document is to highlight the basics, and introduce core
examples to the reader. With this document you should be able to remind yourself
core features of the language, that in turn may be used to create simple object
oriented applications.

We will go through the following: structure of a simple program. Variable
declarations, and simple operations. Control structures. Classes. Visibility in
classes. Inheritance, and use of polymorphism.

## Structure of a Simple Program

A program is a set of operations that need to be executed at some order.
Ultimately you must supply the computer with two things: what needs to be
executed, and where to start. Many programming languages have the _main_
construct to account for this. Java has this convention too. You need to
remember 2 rules for your Java programs, which might be different if you're much
more used to writing C/C++ programs:

1. The file must have the same name as the class you will be writing. For
   example if you are writing `class Person { ... }`, then your file should be
   named `Person.java`.

2. The file must only contain one class definition. You can however define inner
   classes within the main class of the file.

## Hello World

The basic structure of a main program in _Java_ is the following:

~~~~java
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello world!");
  }
}
~~~~

In Java every file contains one _root_ class. That class may contain inner
classes as well. But no file will ever contain more than one class.

Due to the above rule, we need to enclose our _main_ call inside another class.
This raises the question - can there be, in a project, more than one file,
containing a class with the _main_ routine?

And the answer is yes. However, when compiling and running, you would have to
specify which _main_ to use. We will omit this information, as it is beyond
beginner scope (but good to know).

## Variables

Performing operations is nice, but adding the possibility of manipulating data
is even better. There are two things you need to keep in mind: there exists
primitives, and classes.

Primitives would include data types such as _int_, _float_, _char_, _bool_,
_double_.

~~~~java
int x = 2;
int y = 3;
int z = x + y;

double one = 2.3;
double two = one + 4.21;

boolean isOk = false;

char a = 'c';
~~~~

Classes would include types such as _String_, _StringBuilder_, _Person_,
_Calculator_, etc. The general convention is that classes tend to be
capitalized.

And there exists primitive arrays. Primitive arrays means that you have a
sequence of memory locations reserved for data. You can cram inside either a
type of primitive, or class.

Classes, and primitive arrays need to be created in the following way, with the
keyword _new_.

~~~~java
int[] a = new int[12]; /* An array of ints */
String str = new String();
String[] args = new String[12];
~~~~

Please notice the creation of _String_ and _String[]_. The former creates the
object, while the second reserves _array space_ for 12 _String_ objects. You
would have to create each string independently if you wanted to use the array of
objects. So with that said this is how you would set the values of the array.

~~~~java
String[] stringArr = new String[10];

for (int x = 0; x < stringArr.length; ++x) {
  stringArr[x] = new String("The string");
}
~~~~

Please don't confuse these primitive arrays with the Java implementation of the
basic data structures such as _ArrayList_ and _LinkedList_. We will see these in
the next section.



