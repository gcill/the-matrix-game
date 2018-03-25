                 Norton Guides Additional Information


This short file contains information that was too recent to include
in the manual.  The file contains information on these topics:


      TOPIC                              WHO SHOULD READ IT
-----------------------------------------------------------------

A new feature in the Guides              Everybody
(Gray + and - keys)

Two Notes on Using the Guides            Everybody

Running the Guides with                  Superkey Version 1.16A
Superkey Version 1.16A                   users

Some additional information on           Only those creating their
creating your own databases.             own databases, or reading
                                         the tutorial on creating
                                         databases.


A NEW FEATURE:  Gray plus and minus keys

A new feature has been added to the Guides since the manual was
written:  the gray plus and minus keys.  Any time you are viewing a
long entry, you can press the gray plus key to move immediately to
the next long entry, or the gray minus key to move to the previous
long entry.  (This is a shortcut for pressing Esc, down arrow,
Enter.)


TWO NOTES ON USING THE GUIDES

If when poppping up the Guides you ever get a message that the database 
can't be loaded, or is not a valid database, simply reload the database 
using the Options-Database menu.  (This is only likely to happen if 
you're moving databases from one directory to another.)

If you want the Guides to pop up away from the cursor, you must turn
"Auto lookup" on (using the Options menu).  With Auto Lookup off, the 
Guides will not pop up away from the cursor.


RUNNING THE GUIDES WITH SUPERKEY, VERSION 1.16A

If you are using Superkey Version 1.16A (and possibly later
versions), you should load the Guides AFTER you load Superkey.
Loading the Guides after Superkey will not affect the way Superkey
or the Guides works.  (If you load the Guides before loading
Superkey Version 1.16A, you will not be able to pop up the Guides.)



SOME NOTES TO THOSE OF YOU CREATING YOUR OWN DATABASES

For those of you creating your own databases (or just reading the
tutorial on creating databases in the manual), we have found three
items of which you should be aware.  (If you do not intend to create
your own databases, or read the tutorial in the manual on creating
databases, you can skip this section.)

1.)  If the Guides compiler or linker can't find the target of a
     !seealso command, it will normally issue a warning message. If,
     however, the problem !seealso is part of a file that contains
     only a single long description, the !seealso message won't be
     issued. (The seealso reference will be displayed in the seealso
     window, but selecting it won't take you anywhere.) Because of
     this, on page 24 of the tutorial, you will not get the warning
     message the tutorial expects. You can simply ignore the missing
     message and continue with the tutorial.

2.)  If you use tabs when writing short entries, they won't always
     be expanded properly, so the text on your screen might not line
     up as you expect.  If this happens, replace the tabs with
     spaces.

3.)  You can include a double quote in the text of a !seealso
     reference by surrounding the entire reference with single
     quotes, instead of double quotes:

            !seealso: 'This is a ref with a " mark in it'


Your database diskette might contain a file called READ.ME.  If so,
be sure to read it; it contains important information on installing
the database.
