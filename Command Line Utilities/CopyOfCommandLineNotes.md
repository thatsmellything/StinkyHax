1.Command: ls

The command “ls” stands for (List Directory Contents), List the contents of the
folder, be it file or folder, from which it runs. The most common options are -a
(all files) and -l (long or details)

Tab completion is supported and may be configured with .inputrc

When output to file the files are listed one per line.

By default, colour is not used to distinguish types of files. That is equivalent
to using --color=none.

Using the --color option without the optional WHEN argument is equivalent to
using --color=always.

With --color=auto, color codes are output only if standard output is connected
to a terminal (tty).

ls commend kali

ls

A.Command “ls -a“, list the content of folder, including hidden files the hidden
files is colored blue

ls -a

ls -a

2. Command: lsblk

The “lsblk” stands for (List Block Devices), print block devices by their
assigned name (but not RAM) on the standard output in a tree-like fashion.

lsblk commend

lsblk

The “lsblk -l” command list block devices in ‘list‘ structure (not tree like
fashion).

Note: lsblk is very useful and easiest way to know the name of New Usb Device
you just plugged in, especially when you have to deal with disk/blocks in
terminal.

3. Command: sudo

he “sudo” (super user do) command allows a permitted user to execute a command
as the superuser or another user, as specified by the security policy in the
sudoers list.

exp: root\@Kali:\~\# sudo add-apt-repository ppa:tualatrix/ppa

Note: sudo allows user to borrow superuser privileged, while a similar command
‘su‘ allows user to actually log in as superuser. Sudo is safer than su.

It is not advised to use sudo or su for day-to-day normal use, as it can result
in serious error if accidentally you did something wrong, that’s why a very
popular saying in Linux community is:

“To err is human, but to really foul up everything, you need root password.”

4. Command: mkdir

The “mkdir” (Make directory) command create a new directory with name path.
However is the directory already exists, it will return an error message “cannot
create folder, folder already exists”.

exp: root\@Kalitut:\~\# mkdir Kalitut

Note: Directory can only be created inside the folder, in which the user has
write permission. mkdir: cannot create directory \`Kalitut‘: File exists

(Don’t confuse with file in the above output, you might remember what i said at
the beginning – In Linux every file, folder, drive, command, scripts are treated
as file).

5.Command: chmod

The Linux “chmod” command stands for (change file mode bits). chmod changes the
file mode (permission) of each given file, folder, script, etc.. according to
mode asked for.

There exist 3 types of permission on a file (folder or anything but to keep
things simple we will be using file).

Read (r)=4

Write(w)=2

Execute(x)=1

So if you want to give only read permission on a file it will be assigned a
value of ‘4‘, for write permission only, a value of ‘2‘ and for execute
permission only, a value of ‘1‘ is to be given. For read and write permission
4+2 = ‘6‘ is to be given, ans so on.

Now permission need to be set for 3 kinds of user and usergroup. The first is
owner, then usergroup and finally world.

rwxr-x--x abc.sh

Here the root’s permission is rwx (read, write and execute).

usergroup to which it belongs, is r-x (read and execute only, no write
permission) and

for world is –x (only execute).

To change its permission and provide read, write and execute permission to
owner, group and world.

root\@Kali:\~\# chmod 777 abc.sh

only read and write permission to all three.

root\@Kalitut:\~\# chmod 666 abc.sh

read, write and execute to owner and only execute to group and world.

root\@Kalitut:\~\# chmod 711 abc.sh

Note: one of the most important command useful for sysadmin and user both. On a
multi-user environment or on a server, this command comes to rescue, setting
wrong permission will either makes a file inaccessible or provide unauthorized
access to someone.

6.Command: tar

The “tar” command is a Tape Archive is useful in creation of archive, in a
number of file format and their extraction.

root\@Kali:\~\# tar -zxvf abc.tar.gz (Remember 'z' for .tar.gz)

root\@Kali:\~\# tar -jxvf abc.tar.bz2 (Remember 'j' for .tar.bz2)

root\@Kali:\~\# tar -cvf archieve.tar.gz(.bz2) /path/to/folder/abc

Note: A ‘tar.gz‘ means gzipped. ‘tar.bz2‘ is compressed with bzip which uses a
better but slower compression method.

7. Command: cp

The “copy” stands for (Copy), it copies a file from one location to another
location.

root\@Kali:\~\# cp /home/user/Downloads abc.tar.gz /home/user/Desktop (Return 0
when sucess)

Note: cp is one of the most commonly used command in shell scripting and it can
be used with wildcard characters (Describe in the above block), for customised
and desired file copying.

8. Command: mv

The “mv” command moves a file from one location to another location.

root\@Kali:\~\# mv /home/user/Downloads abc.tar.gz /home/user/Desktop (Return 0
when sucess)

Note: mv command can be used with wildcard characters. mv should be used with
caution, as moving of system/unauthorised file may lead to security as well as
breakdown of system.

9.Command: pwd

The command “pwd” (print working directory), prints the current working
directory with full path name from terminal.

root\@Kali:\~\# pwd

/home/user/Desktop

Note: This command won’t be much frequently used in scripting but it is an
absolute life saver for newbie who gets lost in terminal in their early
connection with nux. (Linux is most commonly referred as nux or nix).

10. Command: cd

Finally, the frequently used “cd” command stands for (change directory), it
change the working directory to execute, copy, move write, read, etc. from
terminal itself.

root\@Kali:\~\# cd /home/user/Desktop

server\@localhost:\~\$ pwd

/home/user/Desktop

Note: cd comes to rescue when switching between directories from terminal. “Cd
\~” will change the working directory to user’s home directory, and is very
useful if a user finds himself lost in terminal. “Cd ..” will change the working
directory to parent directory (of current working directory).

Now i will leave you with few more commends

File Operations:

pwd Print Name Of Current/Working Directory

The pwd is an acronym for print working directory. The pwd command is considered
as one of the most frequently used commands on Linux, AIX, HP-UX, \*BSD, and
other UNIX like operating systems along with the ls, and cd commands. It can be
used for the following purposes under Apple OS X or UNIX or Linux operating
systems:

=\> Find the full path to the current directory.

=\> Store the full path to the current directory in the shell variable.

=\> Verify the absolute path.

=\> Verify the physical path i.e exclude .

cd Changing The Working Directory

cp Copy Files Or Directory

rm Remove Files And Directory

ls List Of Directory Contents

mkdir Make Directory

cat Concatenate Files And Print On Standard Output

mv Move Files

chmod Change Files Permissions

Know Your System

uname Print System Information

who Show Who Is Logged On

cal Displays Calculator

date Print System Date And Time

df Report File System Disk Space Usage

du Estimate File Space Usage

ps Displays Information Of Current Active Processes

kill Allows To Kills Process

clear Clear The Terminal Screen

cat /proc/cpuinfo Cpuinfo Display CPU Information

cat /proc/meminfo Display Memory Information

Compression

tar Store and Extract Files From An Archive File

gzip Compress Or Decompress Named Files

Network

ifconfig To Config Network Interface

ping Check Other System are reachable from The Host System

wget Download Files From Network

ssh Remote Login Program

ftp Download/Upload Files From/To Remote System

last Displays List Of Last Logged In User

telnet Used To Communicate With Another Host Using THe Telnet Protocol

Searching Files

grep Search Files(s) For Specific Text

find Search For Files In A Directory Hierarchy

locate Find Files By Name
