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
    $check_md5 --path test.txt   
    test.txt => 4925b5f6e954a193f07303a3186c966d
    ```

6. maven_dependency_compare/
  * compare jars between two different maven jar dependency folders.  
    a. List all jar files missing in dest that are present in src.
    b. List all jar files that are same between src and dest but have different md5 hash.
  * written in perl
  * depend on check_md5 to be in the path
  * add to path
  * chmod a+x maven_dependency_compare
  * example:
    ```
    $maven_dependency_compare --paths dir1 dir2
      Not found file1 in destination folder dir2
      MD5 is different for file4.jar and file4.jar :
      dir1/file4.jar => 0bee89b07a248e27c83fc3d5951213c1

      dir2/file4.jar => 8f0abafc5f8e6686a882c78cac4bcb9f

    $maven_dependency_compare --paths dir2 dir1
      Not found file3 in destination folder dir1
      MD5 is different for file4.jar and file4.jar :
      dir2/file4.jar => 8f0abafc5f8e6686a882c78cac4bcb9f

      dir1/file4.jar => 0bee89b07a248e27c83fc3d5951213c1
    ```   

7. iso_currency_mapper/
  * reads isoCurrency.js file (locally downloaded from https://github.com/zwacky/isoCurrency/blob/master/dist/isoCurrency.js) and generates isoCurrency.properties with the list of currency code as key and currency symbol as value
  * written in perl
  * add to path
  * chmod a+x isoCurrencyMapper
  * example:
    ```
    $isoCurrencyMapper

    ```
8. change_ssh_host/
  * small bash script to change the ssh host when connecting to github. This helps when u
have more than one github account (private, personal etc) and want an easy way to switch the ssh
connection private keys.
  * written in bash
  * add to path
  * chmod u=rwx,o=,g= change_ssh_host
  * example:
    ```
    $change_ssh_host <SSH Host as in ~/.ssh/config file> <Github User Name> <Github repo name>
    ```
9. statistics/
  * script that exports statistics functions like mean, variance,
    SD etc.
  * written in perl
  * chmod a+x bin/stats
  * example:
    ```
    $bin/stats mean 1 2 3 4 5 6
    3.5
    $bin/stats avg 1 2 3
    2
    $bin/stats
    Supported functions are : mean, avg
    ```   


 









