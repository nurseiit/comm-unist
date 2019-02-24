CSE251: System Programming, Spring 2019
=======================================


Course Staffs
-------------

- Instructor
  - Hyungon Moon (hyungon@unist.ac.kr, @hyungon)
- TAs
  - Sehoon Kim (sshhee@unist.ac.kr, @sehoon)
  - TBD1
  - TBD2
  - TBD3
  

Announcements
-------------

* [02-25] There will be recitations either in the evening or on Friday.


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
- https://docs.gitlab.com/ee/ssh/



Schedule
--------

* The followings will be scheduled/rescheduled on or after Mar 2 (once the
  course registration is finalized)
  * There are two make up lectures probably on Fridays.

|   Date    |                Lecture                 |     Recitation     |        Lab         |
|-----------|----------------------------------------|--------------------|--------------------|
|Feb/25(Mon)|              Introduction              |                    |                    |
|Feb/26(Tue)|                                        |                    |                    |
|Feb/27(Wed)|     Bits, Bytes, and Ints: Part 1      |                    |  lab0: gitlab out  |
|Feb/28(Thu)|                                        |                    |                    |
|Mar/01(Fri)|                                        |                    |                    |
|Mar/04(Mon)|     Bits, Bytes, and Ints: Part 2      |                    | lab1: datalab out  |
|Mar/05(Tue)|                                        |                    | lab0: due 11:59pm  |
|Mar/06(Wed)|             Floating Point             |                    |                    |
|Mar/07(Thu)|                                        |                    |                    |
|Mar/08(Fri)|    Machine Prog: Basics (Tentative)    |      data lab      |                    |
|Mar/11(Mon)|         Machine Prog: Control          |                    | lab2: bomblab out  |
|Mar/12(Tue)|                                        |                    | lab1: due 11:59pm  |
|Mar/13(Wed)|        Machine Prog: Procedures        |                    |                    |
|Mar/14(Thu)|                                        |                    |                    |
|Mar/15(Fri)|                                        |      bomb lab      |                    |
|Mar/18(Mon)|           Machine Prog: Data           |                    |                    |
|Mar/19(Tue)|                                        |                    |                    |
|Mar/20(Wed)|         Machine Prog: Advanced         |                    |lab3: attacklab out |
|Mar/21(Thu)|                                        |                    | lab2: due 11:59pm  |
|Mar/22(Fri)|                                        |     attack lab     |                    |
|Mar/25(Mon)|           Code Optimization            |                    |                    |
|Mar/26(Tue)|                                        |                    |                    |
|Mar/27(Wed)|          The Memory Hierarchy          |                    |                    |
|Mar/28(Thu)|                                        |                    |                    |
|Mar/29(Fri)|                                        |                    |                    |
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

