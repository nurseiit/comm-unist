# Lab3: attacklab

- Assigned: Mar. 28 (Thu), Due: Apr. 08 (Wed)
- Lead TA: Changmin Yi (ulistar93@unist.ac.kr, @changmin)


**The targets whose ID is smaller than 32 are not working.
If you have one, please get a new one to work on the lab**

# Introduction


This assignment involves generating a total of five attacks on two
programs having different security vulnerabilities.
Outcomes you will gain from this lab include:

- You will learn different ways that attackers can exploit
  security vulnerabilities when programs do not safeguard themselves
  well enough against buffer overflows.
- Through this, you will get a better understanding of how to write
  programs that are more secure, as well as some of the features
  provided by compilers and operating systems to make programs less
  vulnerable.
- You will gain a deeper understanding of the stack and
  parameter-passing mechanisms of x86-64 machine code.
- You will gain a deeper understanding of how x86-64 instructions
  are encoded.
- You will gain more experience with debugging tools such as `gdb`
  and `objdump`.


**Note** In this lab, you will gain firsthand experience with
methods used to exploit security weaknesses in operating systems and
network servers. Our purpose is to help you learn about the runtime
operation of programs and to understand the nature of these security
weaknesses so that you can avoid them when you write system code. We do
not condone the use of any other form of attack to gain
unauthorized access to any system resources.

You will want to study Sections 3.10.3 and 3.10.4 of the CS:APP3e book
as reference material for this lab.

# Logistics

As usual, this is an individual project.  You will generate attacks
for target programs that are custom generated for you.  

## Step 1: Getting Files

You can obtain the target files just like you got the bombs.

The first option is to obtain from the web page and then to copy to
the `uni server`.
The second one would be more convenient for most of you. Please note that
your file will only work on the `uni06 server` (uni06.unist.ac.kr).

### Option 1

You can obtain your file by pointing your Web browser at:

- [http://bomb.unicss.org:4950](http://bomb.unicss.org:4950)


The server will build your files and return them to your browser in a
`tar` file called `targetk.tar`, where `k` is the unique
number of your target programs.

**Note:** It takes a few seconds to build and download your target,
so please be patient. 

Save the `targetk.tar` (e.g. `target10.tar`file in a (protected) Linux
directory in which you plan to do your work.  Then give the command:
`tar~-xvf targetk.tar`. This will extract a
directory `targetk` containing the files described below.

You should only download one set of files. If for some reason you download multiple
targets, choose one target to work on and delete the rest.

**Warning:** If you expand your `targetk.tar` on a
PC, by using a utility such as Winzip, or letting your browser do the
extraction, you'll risk resetting permission bits on the executable
files.  


The files in `targetk` include:
`README.txt`: A file describing the contents of the directory
`ctarget`: An executable program vulnerable to **code-injection**
  attacks
`rtarget`: An executable program vulnerable to 
  **return-oriented-programming** attacks
`cookie.txt`: An 8-digit hex code that you will use as a
  unique identifier in your attacks.
`farm.c`: The source code of your target's "gadget farm,"
which you will use in generating return-oriented programming attacks.
`hex2raw`: A utility to generate attack strings.

In the following instructions, we will assume that you have copied the
files to a protected local directory, and that you are
executing the programs in that local directory.


### Option 2

The option 1 requires you to get the bomb on your machine and then copy it to
the `uni server`. This may not be a straightforward task for you. Instead,
you can run a command like this, assuming that your student id is `20081234` and
your email address is johndoe@unist.ac.kr. First change the dir to `bomblab` and
execute the included script `get-target.sh` like this. 

```
./get-target.sh 20181234 johndoe@unist.ac.kr
```

You will get a file `target.tar` that contains your bomb. By running this command,
you will get the `targetk` directory with `k` replaced with your bomb number (e.g.,
bomb10).

```
tar -xf target.tar
```

You can find all necessary files from the directory.

## Scoreboard and submission

The server will test your exploit string to make sure it really works, and it will update the Attacklab score- board page indicating that your userid (listed by your target number for anonymity) has completed this phase.
You can view the scoreboard by pointing your Web browser at
    http://attack.unicss.org:4950/scoreboard
    Unlike the Bomb Lab, there is no penalty for making mistakes in this lab. Feel free to fire away at CTARGET and RTARGET with any strings you like.
    IMPORTANT NOTE: You can work on your solution on any Linux machine, but in order to submit your solution, you will need to be running on the `uni06 server`.
     Figure 1 summarizes the five phases of the lab. As can be seen, the first three involve code-injection (CI) attacks on CTARGET, while the last two involve return-oriented-programming (ROP) attacks on RTARGET.

# More details

Before getting started, please read this instruction carefully.
- [Instruction](attacklab.pdf)
