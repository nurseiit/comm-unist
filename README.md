CSE251: System Programming, Spring 2019
=======================================


Course Staffs
-------------

- Instructor
  - Hyungon Moon (hyungon@unist.ac.kr, @hyungon)
- TAs
  - Changmin Yi(ulistar93@unist.ac.kr, @changmin, Wed 17:30~18:30 @106-605)
  - Sehoon Kim (sshhee@unist.ac.kr, @sehoon, Tue 14:30~15:30 @106-605)
  - Minsu Kang (minsu@unist.ac.kr, @minsu, Mon 20:00~21:00 @106-707-1)
  - Alisheri Anvar (alisher@unist.ac.kr, @alisheri)
  

Announcements
-------------
* **[03-04] VPN setup done:**

  For those of you applied ealier, VPN access has been set up. Visit vpn.unist.ac.kr to use VPN.
  You can use your portal ID/PW. We'll give you one (and only one) more chance to apply during this week.
  
* [03-04] Black screen problem on putty? [click](https://class.unicss.org/cse251-2019-spring/cse251-2019-spring/issues/10)
* [03-01] We meet at **106-505-1** on Mar 4 10:30am instead of our regular class room.
* [02-28] Private questions will be answered only when they really are private. General questions (e.g. clarification of concepts) will not be answered on your repository.
* [02-28] Lab0 is out. due: Mar 06 11:59pm
* [02-25] There will be recitations either in the evening or on Friday.


Lecture Slides
--------------

* Original version: https://www.cs.cmu.edu/afs/cs/academic/class/15213-s18/www/schedule.html
* Modified version for this course: [/slides](/slides)

Grading
-------


### General rule


| 5%|Class participation  |
|---|---------------------|
|20%|Midterm              |
|25%|Final                |
|50%|Labs                 |


- Class participation refers to online/in-class participations, not
  attendance.

### Special rule

- Not submitting two or more lab will make your grade C+ or lower.
- We follow university and school policies about attendance and cheating.
  - Missing 8 or more classes will make your grade F.

Lab infra
---------

`Gitlab URL for the class: https://class.unicss.org`

You (will) receive a reset password email from hyungon.moon.helper@gmail.com
that give you an account to the class Gitlab. You username is your studenr id
(e.g. 20081234)

Once logged in, you should have an access to the two repositories under
a group of name `cse251-2019-spring`. Under the group, you will find two
repositories. `cse251-2019-spring` is where you can ask questions and the announcements will
be posted. `submit-<student_id>` is your private repository where you should
submit labs, and your grade will be posted.

Before cloning or working with the labs, you may want to create and register your ssh key
to your account. Follow the instrcution here.

### Creating and adding your key to Gitlab

Firstly, follow the instructions here to create a ssh key pair on your work machine (e.g. uni server).
- https://docs.gitlab.com/ee/ssh/#generating-a-new-ssh-key-pair

This step creates a pair of files, whose default names are `id_rsa` and `id_rsa.pub`. 

While generating the keys, check where the key goes. There are several locations that these would land:
- `/home/<your-user-name>/.ssh/id_rsa.pub`
  - This is the default in most cases.
- `/student_home/<your-user-name>/.ssh/id_rsa.pub`
  - This might be the case on the uni server.

You can add the *public* key to your account following the instruction here.
- http://fab.academany.org/2018/labs/fablabat3flo/students/mat-bgn/wiki/sshkey.html

To obtain your key in plain text, use `cat`.
```sh
cat <your-pub-key>
```
Then copy-paste the key. Note that in many cases, your machine adds newlines in your key string which you should remove.

Bad example:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUOer0D41OwP4QRTj/PKnZnyzWvaAO8DPYEJPJyayqwDuA0Z23JLVhLjvGwGT8
kp5H3Bsl3I84fEgDt+pNSQQwf/gtrZFSffmIqy0BAwPoJSBNPqyb0ZPUEwkn4K9fkwwEsncnzNnEYk4aVR0blkmLfpCN4GJpaug7a2IwaMqA86p2yHsMHg1JqadoCQRfr/s+zmnAKNSRnD2kiRKGyL82NWds63RaeZCs/Bnsbk3kJINf8BO0bkslmOma0g+7ZbnTLwBT4TC2H846WKiVAxvtxzgC7qCJaU6LTrzHu
peoF6yxT8/PY7nVl0UUPBOY+WTQX2r+k+U+UZK/TZLe/Vsp hyungon@xxx
```

Good example:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUOer0D41OwP4QRTj/PKnZnyzWvaAO8DPYEJPJyayqwDuA0Z23JLVhLjvGwGT8kp5H3Bsl3I84fEgDt+pNSQQwf/gtrZFSffmIqy0BAwPoJSBNPqyb0ZPUEwkn4K9fkwwEsncnzNnEYk4aVR0blkmLfpCN4GJpaug7a2IwaMqA86p2yHsMHg1JqadoCQRfr/s+zmnAKNSRnD2kiRKGyL82NWds63RaeZCs/Bnsbk3kJINf8BO0bkslmOma0g+7ZbnTLwBT4TC2H846WKiVAxvtxzgC7qCJaU6LTrzHupeoF6yxT8/PY7nVl0UUPBOY+WTQX2r+k+U+UZK/TZLe/Vsp hyungon@xxx
```




Schedule
--------

* The followings will be scheduled/rescheduled on or after Mar 2 (once the
  course registration is finalized)
  * There are two make up lectures probably on Fridays.

|   Date    |                Lecture                 |     Recitation     |        Lab         |
|-----------|----------------------------------------|--------------------|--------------------|
|Feb/25(Mon)|[Introduction](/slides/01-overview.pdf)              |                    |                    |
|Feb/26(Tue)|                                        |                    |                    |
|Feb/27(Wed)|[Bits, Bytes, and Ints: Part 1](/slides/02-bits-ints-part1.pdf)|                    |    |
|Feb/28(Thu)|                                        |                    | lab0: gitlab out   |
|Mar/01(Fri)|                                        |                    |                    |
|Mar/04(Mon)|     In-class recitation by TAs         |      basics        |                    |
|Mar/05(Tue)|                                        |                    |   |
|Mar/06(Wed)|     [Bits, Bytes, and Ints: Part 2](slides/03-bits-ints-part2.pdf)      |   lab1: datalab out                 |   |
|Mar/07(Thu)|                                        |                    | lab0: due 11:59pm                   |
|Mar/08(Fri)|        |            |                    |
|Mar/11(Mon)|          Floating Point       (Tentative)          |                    | lab2: bomblab out  |
|Mar/12(Tue)|                                        |                    |   |
|Mar/13(Wed)|           Machine Prog: Basics        |      data lab (8:40pm-10:00pm @ TBD)              |                    |
|Mar/14(Thu)|          Machine Prog: Control                              |                    | lab1: due 11:59pm                   |
|Mar/15(Fri)|                                        |      bomb lab      |                    |
|Mar/18(Mon)|        Machine Prog: Procedures        |                    |                    |
|Mar/19(Tue)|                                        |                    |                    |
|Mar/20(Wed)|           Machine Prog: Data           |                    |lab3: attacklab out |
|Mar/21(Thu)|                                        |                    | lab2: due 11:59pm  |
|Mar/22(Fri)|                                        |     attack lab     |                    |
|Mar/25(Mon)|         Machine Prog: Advanced         |                    |                    |
|Mar/26(Tue)|                                        |                    |                    |
|Mar/27(Wed)|           Code Optimization            |                    |                    |
|Mar/28(Thu)|                                        |                    |                    |
|Mar/29(Fri)|   The Memory Hierarchy (Tentative)     |                    |                    |
|Apr/01(Mon)|             Cache Memories             |                    | lab4: cachelab out |
|Apr/02(Tue)|                                        |                    | lab3: due 11:59pm  |
|Apr/03(Wed)|                Linking                 |                    |                    |
|Apr/04(Thu)|                                        |                    |                    |
|Apr/05(Fri)|                                        |                    |                    |
|Apr/08(Mon)|      ECF: Exceptions & Processes       |                    |  lab5: tshlab out  |
|Apr/09(Tue)|                                        |                    | lab4: due 11:59pm  |
|Apr/10(Wed)|     ECF: Signals & Nonlocal Jumps      |                    |                    |
|Apr/11(Thu)|                                        |                    |                    |
|Apr/12(Fri)|                                        |                    |                    |
|Apr/15(Mon)|              Midterm Week              |                    |                    |
|Apr/16(Tue)|                                        |                    |                    |
|Apr/17(Wed)|              Midterm Week              |                    |                    |
|Apr/18(Thu)|                                        |                    |                    |
|Apr/19(Fri)|                                        |                    |                    |
|Apr/22(Mon)|            System Level I/O            |                    |                    |
|Apr/23(Tue)|                                        |                    |                    |
|Apr/24(Wed)|        Virtual MEmory: Concepts        |                    |lab6: malloclab out |
|Apr/25(Thu)|                                        |                    | lab5: due 11:59pm  |
|Apr/26(Fri)|                                        |                    |                    |
|Apr/29(Mon)|        Virtual Memory: Systems         |                    |                    |
|Apr/30(Tue)|                                        |                    |                    |
|May/01(Wed)|     Dynamic Memory Allocation (1)      |                    |                    |
|May/02(Thu)|                                        |                    |                    |
|May/03(Fri)|                                        |                    |                    |
|May/06(Mon)|Children's day (supplemental, no class) |                    |                    |
|May/07(Tue)|                                        |                    |                    |
|May/08(Wed)|     Dynamic Memory Allocation (2)      |                    |                    |
|May/09(Thu)|                                        |                    |                    |
|May/10(Fri)|        Network Programming (1)         |                    |  lab6: checkpoint  |
|May/13(Mon)|        Network Programming (2)         |                    |                    |
|May/14(Tue)|                                        |                    |                    |
|May/15(Wed)|              Concurrency               |                    |                    |
|May/16(Thu)|                                        |                    |                    |
|May/17(Fri)|                                        |                    |                    |
|May/20(Mon)|     SP19 (Recitation or no class)      |                    |                    |
|May/21(Tue)|                                        |                    |                    |
|May/22(Wed)|     SP19 (Recitation or no class)      |                    |                    |
|May/23(Thu)|                                        |                    |                    |
|May/24(Fri)|                                        |                    |                    |
|May/27(Mon)|          Synchronization (1)           |                    | lab7: proxylab out |
|May/28(Tue)|                                        |                    | lab6: due 11:59pm  |
|May/29(Wed)|          Synchronizatiion (2)          |                    |                    |
|May/30(Thu)|                                        |                    |                    |
|May/31(Fri)|                                        |                    |                    |
|Jun/03(Mon)|        Thread-level Parallelism        |                    |                    |
|Jun/04(Tue)|                                        |                    |                    |
|Jun/05(Wed)|                  TBA                   |                    | lab7 due 11:59 pm  |
|Jun/06(Thu)|                                        |                    |                    |
|Jun/07(Fri)|                                        |                    |                    |
|Jun/10(Mon)|               Final Week               |                    |                    |

