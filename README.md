# Bash-BigBrother
Bash script that follows for changes in a required folder.

How it works?
The script gets only one parameter at a time - this parameter is the absolute path of the folder that we want to follow.

### Examples:
```
./bigBrother.sh ~
./bigBrother.sh 'pwd'
```
### First run:
At the first time you are running this script you will see: "Welcome to the Big Brother". It means that from now and on this folder is under surveillance.

### Other runs:
After the first run of the script, it compares between the current and the previous state of the folder.
It prints all the changes that were apply, for example: deleted files, created files. 
* If there is a file that was not change, the script will not print anything about it.
* if a new folder created, you will see: "Folder created: 'FolderName'".
* if a new file created, you will see: "File created: 'FileName'".
* if a file was deleted, you will see: "File deleted: 'FileName'".

### Full Example:
```
runCheck@runCheck:~/Desktop/x$ ls
bigBrother.sh  file1  file2  folder1  folder2

runCheck@runCheck:~/Desktop/x$ ./bigBrother.sh `pwd`
Welcome to the Big Brother

runCheck@runCheck:~/Desktop/x$ ./bigBrother.sh `pwd`
runCheck@runCheck:~/Desktop/x$ rm -r folder1
runCheck@runCheck:~/Desktop/x$ rm file1
runCheck@runCheck:~/Desktop/x$ touch file3
runCheck@runCheck:~/Desktop/x$ mkdir folder3
runCheck@runCheck:~/Desktop/x$ ls
bigBrother.sh  file2  file3  folder2  folder3  helper.txt

runCheck@runCheck:~/Desktop/x$ ./bigBrother.sh `pwd`
File deleted: file1
File deleted: folder1
File created: file3
Folder created: folder3
```
