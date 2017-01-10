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
    *
    //default sha-256
    $check_sha WebStorm-2016.2.4.dmg.sha256.txt
     WebStorm-2016.2.4.dmg: OK
    *
    //explicit sha-256
    $check_sha WebStorm-2016.2.4.dmg.sha256.txt 256
      WebStorm-2016.2.4.dmg: OK


