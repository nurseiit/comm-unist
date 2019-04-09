CSE251: System Programming, Spring 2019
=======================================


Course Staffs
-------------

- Instructor
  - Hyungon Moon (hyungon@unist.ac.kr, @hyungon)
- TAs
  - Changmin Yi(ulistar93@unist.ac.kr, @changmin, Wed 17:30~18:30 @106-605)
  - Sehoon Kim (sshhee@unist.ac.kr, @sehoon, Tue 14:30~15:30 @106-605)
  - Minsu Kang (minsu@unist.ac.kr, @minsu, Mon 20:30~21:30 @106-707-1)
  - Alisheri Anvar (alisher@unist.ac.kr, @alisheri, Thu 19:30~20:30)
  
Discussions
-----------
* [*Closed* (Answered) Issues](https://class.unicss.org/cse251-2019-spring/cse251-2019-spring/issues?scope=all&utf8=%E2%9C%93&state=closed)
* [*Open* (In discussion) Issues](https://class.unicss.org/cse251-2019-spring/cse251-2019-spring/issues)

Exams
-----
* Midterm on ~~4/16 Tue~~ 4/17 Wed 9pm-11pm.
  - Relevant Google Form: [https://forms.gle/V9YhW8RKsMFHyLu2A](https://forms.gle/V9YhW8RKsMFHyLu2A)
  - If your earlier exam ends on or around 9pm, let me know. You can join a bit later and will give you the same amount of time.
  - Starting late (9:30pm): [https://forms.gle/Yu8F9Uk3rDTtzoyV9](https://forms.gle/Yu8F9Uk3rDTtzoyV9)

Announcements
-------------
* **[04-09]** Lab 5 (cachelab) has been posted. Please refer yo your submit repo and the calendar for more detail.
* **[04-01]** Lab 4 recitation is on 4/10 (Wed) and a recitation introducing C language is on 4/8 (Mon). Please check the calendar for more detail.
* **[03-29]** Lab 3 is due on Apr 8 (**Monday**), as the calendar says.
* **[03-28]** Lab 2 server has just been closed.

* **[03-22]** IF you see this message on `uni server`, please refer to the corresponding issue( https://class.unicss.org/cse251-2019-spring/cse251-2019-spring/issues/28 ).
```
ImportError: No module named site
```

* **[03-09]** Use this repository's issue to ask questions. Any question on private repository or sent through email may not be answered or replied unless the question really is private: containing privacy-sensitive information.

* **[03-06]** lab 0 deadline is extended due to the university network issue.

* [02-28] Private questions will be answered only when they really are private. General questions (e.g. clarification of concepts) will not be answered on your repository.
* [02-25] There will be recitations either in the evening or on Friday.


Lecture Slides
--------------

* Original version: https://www.cs.cmu.edu/afs/cs/academic/class/15213-s18/www/schedule.html
* Modified version for this course: [/slides](/slides)

Grading
-------


### General rule

|   |                     |
|---|---------------------|
| 5%|Class participation  |
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

[link](/gitlab.md)

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
|Mar/04(Mon)|     [In-class recitation by TAs](/recitation/rec0.pdf)         |      [basics](/recitation/rec0.pdf)        |                    |
|Mar/05(Tue)|                                        |                    |   |
|Mar/06(Wed)|     [Bits, Bytes, and Ints: Part 2](/slides/03-bits-ints-part2.pdf)     | |                      |
|Mar/07(Thu)|                                        |                    | lab0: due 11:59pm                   |
|Mar/08(Fri)|        |            |                    |
|Mar/11(Mon)|    [Bits, Bytes and Ints: Part2 (cont'd)](/slides/03-bits-ints-part2.pdf),<br/> [Floating Point](/slides/04-float.pdf)                 |                    | lab1: datalab out   |
|Mar/12(Tue)|                                        |                    |   |
|Mar/13(Wed)|           [Floating Point](/slides/04-float.pdf),<br/> [Machine Prog: Basics](/slides/05-machine-basics.pdf)        |      [data lab](/recitation/rec1.pdf) - 8:40pm-10:00pm @ 202-106<br/>(room 106 @ 학술정보관 - the Library building)              |                    |
|Mar/14(Thu)|          [Machine Prog: Control](/slides/06-machine-control.pdf) <br/> (7:00pm - 8:15pm @ 106-T205)                             |                    |                   |
|Mar/15(Fri)|                                        |            |                    |
|Mar/17(Sun)| | |lab1: due 11:59pm |
|Mar/18(Mon)|       [Machine Prog: Control](/slides/06-machine-control.pdf)         |                   | lab2: bomblab out                   |
|Mar/19(Tue)|                                        |                    |                    |
|Mar/20(Wed)|        [Machine Prog: Procedures](/slides/07-machine-procedures.pdf)             |                    | |
|Mar/21(Thu)|                                        |  [bomb lab (7:00pm- @ 104-E102)](/recitation/rec2/CSE251_recitation2.pptx)                  |   |
|Mar/22(Fri)|                                        |          |                    |
|Mar/25(Mon)|        [Machine Prog: Data](/slides/08-machine-data.pdf)         |                    |                   |
|Mar/26(Tue)|                                        |                    |                    |
|Mar/27(Wed)|     [Machine Prog: Data](/slides/08-machine-data.pdf) <br/>   [Machine Prog: Advanced](/slides/09-machine-advanced.pdf)            |                    |    lab2: due 11:59pm                |
|Mar/28(Thu)|      [Machine Prog: Advanced](/slides/09-machine-advanced.pdf) <br/>   [Code Optimization](/slides/10-optimization.pdf) <br/> (7:00pm - 8:15pm @ 106-T204)                           |                    | [lab3: attacklab](/recitation/rec3.pptx) out                    |
|Mar/29(Fri)|         |                    |                    |
|Apr/01(Mon)|   [Code Optimization](/slides/10-optimization.pdf) <br/> [The Memory Hierarchy](/slides/11-memory-hierarchy.pdf)             |  attack lab (7:00pm - @ 104-E102)                  |  |
|Apr/02(Tue)|                                        |                    | |
|Apr/03(Wed)|                     [Cache Memories](/slides/12-cache-memories.pdf)                   |                    |                    |
|Apr/04(Thu)|                                        |                    |                      |
|Apr/05(Fri)|                                        |                    |                   |
|Apr/08(Mon)|     [Linking](/slides/13-linking.pdf)        |  [C overview](/recitation/c_boot_camp.pptx) <br/> (7pm-9pm @ 104-E102, by @minsu)                  |   lab3: due 11:59pm |
|Apr/09(Tue)|                                        |                    |  lab4: cachelab out  |
|Apr/10(Wed)|     [ECF: Exceptions and Processes](/slides/14-ecf-procs.pdf)      |  cache lab (7pm - @ 104-E102, by @minsu)                  |                     |
|Apr/11(Thu)|                                        |                    |                    |
|Apr/12(Fri)|                                        |                    |                    |
|Apr/15(Mon)|              Midterm Week (No class)              |                    |                    |
|Apr/16(Tue)|                                       |                    |                    |
|Apr/17(Wed)|      Midterm Week (No class) <br/>         Midterm @ TBD, 9:00pm-11:00pm             |                    |                    |
|Apr/18(Thu)|                                        |                    |                    |
|Apr/19(Fri)|                                        |                    |                    |
|**Apr/21(SUN)**|                                        |                    |  lab4: due 11:59pm                  |
|Apr/22(Mon)|       [ECF: Signals & Nonlocal Jumps](/slides/15-ecf-signals.pdf) <br/>     System Level I/O            |                    |  lab5: tshlab out    |
|Apr/23(Tue)|                                        |                    |                    |
|Apr/24(Wed)|        Virtual Memory: Concepts        |  tshlab (7pm - @ TBD by @changmin )                  | |
|Apr/25(Thu)|                                        |                    |   |
|Apr/26(Fri)|                                        |                    |                    |
|Apr/29(Mon)|        Virtual Memory: Systems         |                    | lab5: due 11:59pm                   |
|Apr/30(Tue)|                                        |                    |lab6: malloclab out                    |
|May/01(Wed)|     Dynamic Memory Allocation (1)      |                    |                    |
|May/02(Thu)|                                        |                    |                    |
|May/03(Fri)|                                        |                    |                    |
|May/06(Mon)|Children's day (supplemental, no class) |                    |                    |
|May/07(Tue)|                                        |                    |                    |
|May/08(Wed)|     Dynamic Memory Allocation (2)      |                    |                    |
|May/09(Thu)|                                        |                    |                    |
|May/10(Fri)|                |                    |  lab6: checkpoint  |
|May/13(Mon)|       Network Programming (1)           |                    |                    |
|May/14(Tue)|                                        |                    |                    |
|May/15(Wed)|         Network Programming (2)                 |                    |                    |
|May/16(Thu)|                                        |                    |                    |
|May/17(Fri)|                                        |                    |                    |
|May/20(Mon)|     SP19 (Recitation or no class)      |                    |                    |
|May/21(Tue)|                                        |                    |                    |
|May/22(Wed)|     SP19 (Recitation or no class)      |                    |                    |
|May/23(Thu)|                                        |                    |                    |
|May/24(Fri)|                                        |                    |                    |
|May/27(Mon)|           Concurrency            |                    | lab7: proxylab out |
|May/28(Tue)|                                        |                    | lab6: due 11:59pm  |
|May/29(Wed)|         Synchronization (1)           |                    |                    |
|May/30(Thu)|                                        |                    |                    |
|May/31(Fri)|                                        |                    |                    |
|Jun/03(Mon)|      Synchronizatiion (2)           |                    |                    |
|Jun/04(Tue)|                                        |                    |                    |
|Jun/05(Wed)|       Thread-level Parallelism         |                    | lab7 due 11:59 pm  |
|Jun/06(Thu)|                                        |                    |                    |
|Jun/07(Fri)|                                        |                    |                    |
|Jun/10(Mon)|               Final Week               |                    |                    |

