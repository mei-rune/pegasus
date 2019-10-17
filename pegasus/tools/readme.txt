
Windows Platform common utilities for Pegasus build

Karl Schopmyer
12 August 2003

This zip file is a collection of the most useful utilities for working with Pegasus on windows
platforms without a Unix-Like library.  It includes:

1. make - This is gnu Make 3.79.1 as a standalone file.  Make is essential to Pegasus
and we chose gnu make as our working model.  Note that this acts considerably different than
Microsoft's nmake.

2. mu.exe - This is a utility build by the pegasus team to smooth out the differences between
the different platforms with respect to make it contains our version of a number of common
utilities (ex. copy) to make the operation of these the same accross platforms.  You can
compile this utility from the source so that in reality, only make is necessary but putting
a copy here makes startup easier for many.

3. gawk.exe - Standalone version of the gnu awk.  Used ONLY in the documentation build process.

4. bison.exe - Standalone bison.  Used ONLY in the build of the compiler lex and yacc files.
If you don't modify these files, this is not needed.

5. flex.exe - Standalone flex for windows.  Same comment as bison

See the readme in the Pegasus download for more information on how to install and build Pegasus.
