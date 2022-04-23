# Offline on Shell Script
**CSE 314: Operating Systems Sessional**

## Input
Name of the root directory (with lots of files and sub-directories) and another input file. Input file contains the type of files to ignore, each in separate lines.

## Tasks
1. Take the working directory name (optional) and input file name as a command-line argument
2. If the user does not provide any working directory name, consider your script is lying in the root working directory
3. If the user does not provide any input file name, show him a usage message (i.e. how to use this script of yours)
4. Read the types of files to ignore from the input file (if the input file does not exist, prompt the user to give a valid input file name)
5. Recursively, from the root working directory and all of its sub-directories, collect the files whose types are not in the input file.
6. Gather all the required files in a separate output directory (created by you outside the root working directory). For each type of file, create a subdirectory in the output directory. The name should be the type of file. You can determine the type of the file from its extension. If there is no extension, move it to a subdirectory named “others”. You can ignore the duplicate files (files with identical names).
7. For each type of file, you also need to create a text file in the subdirectory of that type. In this file, you need to add the relative paths(path from the root working directory) of all the files of that type. Do this for the other types of files as well.
8. Create a .csv file containing two columns, namely file type, and number of files. Fill this out after organizing all the files

## Output
* An output directory where all the files are organized as mentioned above
* A .csv file