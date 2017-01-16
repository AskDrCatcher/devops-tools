Introduction
------------

Most of the scripts are one-off or hopefully useful again.
They are written in more than one language depending on problem I am trying
to solve.

Contents
--------

1. number_of_files_of_types/
  * takes a dir path and the file type and print out the total number
    of files (including files under sub-dirs) under the dir path and the total number
    of files of file type.
  * written in js
  * run with node
    * sudo npm install
    * node number_of_files_of_types.js

2. check_sha/
  * takes the checksum file and optional sha size (256 is default) and print OK
    if the checksum is valid.
  * written in bash
  * add to path
  * chmod a+x check_sha
  * example:
    ```
    //default sha-256
    $check_sha WebStorm-2016.2.4.dmg.sha256.txt
    WebStorm-2016.2.4.dmg: OK

    //explicit sha-256
    $check_sha WebStorm-2016.2.4.dmg.sha256.txt 256
    WebStorm-2016.2.4.dmg: OK
    ```
3. java_propertyfile_compare/
  * takes two java property files fileA and fileB and print keys from fileB that are missing in fileA and keys from fileA that are missing in fileB
  * written in perl
  * add to path
  * chmod a+x java_propertyfile_compare
  * example:
    ```
    $java_propertyfile_compare --compare test1.txt test2.txt 

    Starting comparison of 
     test1.txt 
     and test2.txt

    test1.txt and test2.txt are different

     The keys in test1.txt not in test2.txt : 
    b

     The keys in test2.txt not in test1.txt : 
    c
    ```
  
4. remove_ctrlm_char/
  * Remove ^M (press Ctrl + V and M in succession) character at the end of line.Usually happen when file is ftp'ed from Windows machine to unix without turning on binary mode.
  * written in perl
  * add to path
  * chmod a+x remove_ctrlm_char
  * example:
    ```
    $ls -alt test.txt
    -rw-r--r--   1 user  root  2 Jan 16 01:13 test.txt
    $remove_ctrlm_char --removeControlChar test.txt 

    Files checked for CTRL+M characters:
    test.txt
    $ls -alt test.txt
    -rw-r--r--  1 user  root  1 Jan 16 01:25 test.txt
    ```
    Notice that the file size reduced from 2 to 1 from removing of the ^M character.  

5. check_md5/
  * print md5 checksum for a file or all files under a folder.
  * written in perl
  * add to path
  * chmod a+x check_md5
  * example:  
    ```
    $./check_md5 --path test.txt   
    test.txt => 4925b5f6e954a193f07303a3186c966d
    ```




