# Video_game_website
This project consists of a front-end (the video game webasite) and a backend (a MySQL database). It is devided into two sections: modern games and retro games. The website accesses the database to provide information about each individual game as well as poplulate the respective drop down lists. 

## Installation Instructions

### Download
The necesary files can be [downloaded here](https://github.com/nortorious-flame89/Video_game_website.git). 

### Additional installations & Running the website
You will need to install Xampp and PHPmyAdmin and import the SQL file into it. If you are a windows user, this [link](https://www.youtube.com/watch?v=hqfIksHKPPg) contains instructions for downloading it. For Mac users, this [video](https://www.youtube.com/watch?v=b_6g_5S_bVo) is recommended. Linux users should read [this article](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-16-04).
  * When these servers are running, import the database file by first creating a database using the SQL statement 
  * `CREATE DATABASE <database name>` then click the import tab on phpmyadmin and importing the sql file downloaded above. 

Other things this project requires is HTML5 and PHP5 which requires notepad++ and can be [downloaded here](https://notepad-plus-plus.org/download/v7.3.2.html). 

  * Be sure to choose your preferred flavor on the webpage. 
  * Alternatively if you use Ubuntu 16.04, then you can download any Linux capable IDE that supports HTML5 and PHP5 (I suspect    any IDE will do. If you'd like to install Atom, use the following terminal command: 
  * `sudo add-apt-repository ppa:webupd8team/atom` 
  * `sudo apt-get update`
  * `sudo apt-get install atom`

Unzip the files installed to the **download** folder and save them all under XAMPP's htdocs directory. Xampp will be installed under the C drive in windows. **This is of CRUCIAL IMPORTANCE**. If you don't extract those files to htdocs then you won't be able to run them. Windows users shouldn't experience permissions problems but if you experience permissions issues Google knows the answer.

Ubuntu 16.04 users will have a LAMPP folder instead of XAMPP and that folder will by default be downloaded into your /opt directory. 
* In addition, Linux users will have to change the permissions of the htdocs folder. You can do this by running the `chmod`      * command. You might have to do a recursive chmod on the htdocs directory (just add `-R` after chmod.)

Open and run the HTML and PHP files. 

## Acknowledgement
The front end of this project was a joint effort between myself and Derek Jordan. He was responsible for polishing the images used on the website (like adding a shadow) and he helped me countless times when I got stuck on the design portion of the website.

## License
This repository is provided under the MIT License. If you would like to read what that entails, please refer to the [license](https://github.com/nortorious-flame89/Video_game_website/blob/master/LICENSE) page in this repository.
