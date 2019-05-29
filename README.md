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

* Final: 6/13 (Wed) 7(8)am - 10am @ TBD
  - Survey for alternative: https://docs.google.com/spreadsheets/d/1Dz0t_kBlO_9qnRCDcGgoWHcGyXcXCJwbBhXcpxfXU3Q/edit?usp=sharing


Announcements
-------------
* **[05-29]** Please participate the survey for alternative time slot: https://docs.google.com/spreadsheets/d/1Dz0t_kBlO_9qnRCDcGgoWHcGyXcXCJwbBhXcpxfXU3Q/edit?usp=sharing
* **[05-29]** Please check the final schedule.
* **[05-27]** Lab 6: as the baseline fives you 13/55 points, anyone who tried to do something bug failed will get the minimum of 13 points for fairness.
* **[05-27]** Midterm claim session is 5pm-8pm on May 30 (Thu). Please email me to make another appointment if you cannot use this seesion due to official schedules (e.g., other class).
* **[05-23]** You may find [this](https://class.unicss.org/cse251-2019-spring/cse251-2019-spring/issues/71) note useful in working on Lab 6.
* **[05-11]** Lab 6 grader will run everyday noon, 0512-0522 and 6am/noon/6pm, 0523-0528. The final grader runs 00:05am, 0529.
Please note that the as the grader uses different performance parameter (due to the difference in machine), the throughput score will be different, but it is intended behavior.
* **[05-01]** Makeup class on May 9 (Thu) 7pm-8:15pm @ 104-E102.
* **[04-29]** Midterm grade along with the overall status has been posted. Check `grader-overall` branch of your repo. Note that some of you lost some lab score due to cheating, and we are keep working on handling more cases. If you find any mismatch between the individual and overall grading of the lab, please report. The distribution is also posted at [overall.csv](/overall.csv). So far the maximal overall score is 47.5 and the top got 34.83. 
- The model solution is also available: [midterm.pdf](/midterm.pdf).
- Midterm distribution: [midterm.csv](/midterm.csv)
- Overall distribution: [overall.csv](/overall.csv)

* **[04-24]** Lab 5 grader will run 6am/noon/6pm, 4/24 - 05/02 and 00:05 05/03.
* **[04-22]** Lab 5 has been posted. The grader will start to run on Wed or Thu.
* **[04-22]** Attendance cheating will be considered like regular cheating. i.e., two attendance cheating results in F.
* **[04-19]** Lab 4 autograding has been started. The first results are up, the will run again at 6am, noon, 6pm everyday by the deadline.
The final grading run will be on 00:05 Apr 22. There will be no extension of the deadline.

* **[04-09]** Lab 4 (cachelab) has been posted. Please refer yo your submit repo and the calendar for more detail.

* **[04-01]** Lab 4 recitation is on 4/10 (Wed) and a recitation introducing C language is on 4/8 (Mon). Please check the calendar for more detail.

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


|      |      |
|------|------|
| 5.5% | lab0 |
| 5.5% | datalab |
| 5.5% | bomblab |
| 5.5% | attacklab |
| 5.5% | cachelab |
| 5.5% | shlab |
| 11.5% | malloclab |
| 5.5% | proxylab |



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

|      Date       |                                                                        Lecture                                                                        |                                                   Recitation                                                   |                     Lab                      |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| Feb/25(Mon)     | [Introduction](/slides/01-overview.pdf)                                                                                                               |                                                                                                                |                                              |
| Feb/26(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Feb/27(Wed)     | [Bits, Bytes, and Ints: Part 1](/slides/02-bits-ints-part1.pdf)                                                                                       |                                                                                                                |                                              |
| Feb/28(Thu)     |                                                                                                                                                       |                                                                                                                | lab0: gitlab out                             |
| Mar/01(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/04(Mon)     | [In-class recitation by TAs](/recitation/rec0.pdf)                                                                                                    | [basics](/recitation/rec0.pdf)                                                                                 |                                              |
| Mar/05(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/06(Wed)     | [Bits, Bytes, and Ints: Part 2](/slides/03-bits-ints-part2.pdf)                                                                                       |                                                                                                                |                                              |
| Mar/07(Thu)     |                                                                                                                                                       |                                                                                                                | lab0: due 11:59pm                            |
| Mar/08(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/11(Mon)     | [Bits, Bytes and Ints: Part2 (cont'd)](/slides/03-bits-ints-part2.pdf),<br/> [Floating Point](/slides/04-float.pdf)                                   |                                                                                                                | lab1: datalab out                            |
| Mar/12(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/13(Wed)     | [Floating Point](/slides/04-float.pdf),<br/> [Machine Prog: Basics](/slides/05-machine-basics.pdf)                                                    | [data lab](/recitation/rec1.pdf) - 8:40pm-10:00pm @ 202-106<br/>(room 106 @ 학술정보관 - the Library building) |                                              |
| Mar/14(Thu)     | [Machine Prog: Control](/slides/06-machine-control.pdf) <br/> (7:00pm - 8:15pm @ 106-T205)                                                            |                                                                                                                |                                              |
| Mar/15(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/17(Sun)     |                                                                                                                                                       |                                                                                                                | lab1: due 11:59pm                            |
| Mar/18(Mon)     | [Machine Prog: Control](/slides/06-machine-control.pdf)                                                                                               |                                                                                                                | lab2: bomblab out                            |
| Mar/19(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/20(Wed)     | [Machine Prog: Procedures](/slides/07-machine-procedures.pdf)                                                                                         |                                                                                                                |                                              |
| Mar/21(Thu)     |                                                                                                                                                       | [bomb lab (7:00pm- @ 104-E102)](/recitation/rec2/CSE251_recitation2.pptx)                                      |                                              |
| Mar/22(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/25(Mon)     | [Machine Prog: Data](/slides/08-machine-data.pdf)                                                                                                     |                                                                                                                |                                              |
| Mar/26(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Mar/27(Wed)     | [Machine Prog: Data](/slides/08-machine-data.pdf) <br/>   [Machine Prog: Advanced](/slides/09-machine-advanced.pdf)                                   |                                                                                                                | lab2: due 11:59pm                            |
| Mar/28(Thu)     | [Machine Prog: Advanced](/slides/09-machine-advanced.pdf) <br/>   [Code Optimization](/slides/10-optimization.pdf) <br/> (7:00pm - 8:15pm @ 106-T204) |                                                                                                                | [lab3: attacklab](/recitation/rec3.pptx) out |
| Mar/29(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/01(Mon)     | [Code Optimization](/slides/10-optimization.pdf) <br/> [The Memory Hierarchy](/slides/11-memory-hierarchy.pdf)                                        | [attack lab (7:00pm - @ 104-E102)](/recitation/rec4.pdf)                                                       |                                              |
| Apr/02(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/03(Wed)     | [Cache Memories](/slides/12-cache-memories.pdf)                                                                                                       |                                                                                                                |                                              |
| Apr/04(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/05(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/08(Mon)     | [Linking](/slides/13-linking.pdf)                                                                                                                     | [C overview](/recitation/c_boot_camp.pptx) <br/> (7pm-9pm @ 104-E102, by @minsu)                               | lab3: due 11:59pm                            |
| Apr/09(Tue)     |                                                                                                                                                       |                                                                                                                | lab4: cachelab out                           |
| Apr/10(Wed)     | [ECF: Exceptions and Processes (1)](/slides/14-ecf-procs.pdf)                                                                                         | [cache lab](/recitation/rec4.pdf) (8:30pm - @ 104-E102, by @minsu)                                             |                                              |
| Apr/11(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/12(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/15(Mon)     | Midterm Week (No class)                                                                                                                               |                                                                                                                |                                              |
| Apr/16(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/17(Wed)     | Midterm Week (No class) <br/>         Midterm @ TBD, 9:00pm-11:00pm                                                                                   |                                                                                                                |                                              |
| Apr/18(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/19(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| **Apr/21(SUN)** |                                                                                                                                                       |                                                                                                                | lab4: due 11:59pm                            |
| Apr/22(Mon)     | [ECF: Exceptions and Processes (2)](/slides/14-ecf-procs.pdf)                                                                                         |                                                                                                                | lab5: shlab out                              |
| Apr/23(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/24(Wed)     | [ECF: Signals & Nonlocal Jumps](/slides/15-ecf-signals.pdf)                                                                                           | [shlab](/recitation/rec5.pdf) (8:30pm - @ 104-E102, by @changmin )                                             |                                              |
| Apr/25(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/26(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Apr/29(Mon)     | [System Level I/O](/slides/16-io.pdf)                                                                                                                 |                                                                                                                |                                              |
| Apr/30(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/01(Wed)     | [Virtual Memory: Concepts](/slides/17-vm-concepts.pdf)                                                                                                |                                                                                                                |                                              |
| May/02(Thu)     |                                                                                                                                                       |                                                                                                                | lab5: due 11:59pm                            |
| May/03(Fri)     |                                                                                                                                                       |                                                                                                                | lab6: malloclab out  / lab7: proxylab out    |
| May/06(Mon)     | Children's day (supplemental, no class)                                                                                                               |                                                                                                                |                                              |
| May/07(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/08(Wed)     | [Dynamic Memory Allocation (1)](/slides/18-malloc-basic.pdf)                                                                                          |                                                                                                                |                                              |
| May/09(Thu)     | [Dynamic Memory Allocation (2)](/slides/19-malloc-advanced.pdf) (7pm-8:15pm @ 104-E102)                                                                    |                                                                                                                |                                              |
| May/10(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/13(Mon)     | [Network Programming (1)](/slides/20-netprog1.pdf)                                                                                                    |                                                                                                                |                                              |
| May/14(Tue)     |                                                                                                                                                       | lab6: malloc lab (7pm- @ 104-E102)                                                                        |                                              |
| May/15(Wed)     | [Network Programming (2)](/slides/21-netprog2.pdf)                                                                                                    |                                                                                                                |                                              |
| May/16(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/17(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/20(Mon)     |  No class                                                                                                                      |                                                                                  |                                              |
| May/21(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/22(Wed)     | In-class Recitation (proxylab)                                                                                                                |           lab7: [proxy lab](/recitation/rec7_ProxyLab.pdf) (10:30am- @ 104-E102)                                                                          |                                              |
| May/23(Thu)     |                                                                                                                                                       |                                                                                                                |                            |
| May/24(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/27(Mon)     | [Virtual Memory: Systems](/slides/22-vm-systems.pdf)  <br/> [Concurrency](/slides/23-concprog.pdf)                                                    |                                                                                                                |                                              |
| May/28(Tue)     |                                                                                                                                                       |                                                                                                                |    lab6: due 11:59pm                                           |
| May/29(Wed)     | [Synchronization (1)](/slides/24-sync-basic.pdf)                                                                                                      |                                                                                                                |                                              |
| May/30(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| May/31(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Jun/03(Mon)     | [Synchronizatiion (2)](/slides/25-sync-advanced.pdf)                                                                                                  |                                                                                                                |                                              |
| Jun/04(Tue)     |                                                                                                                                                       |                                                                                                                |                                              |
| Jun/05(Wed)     | [Thread-level Parallelism](/slides/26-parallelism.pdf)                                                                                                |                                                                                                                | lab7 due 11:59 pm                            |
| Jun/06(Thu)     |                                                                                                                                                       |                                                                                                                |                                              |
| Jun/07(Fri)     |                                                                                                                                                       |                                                                                                                |                                              |
| Jun/10(Mon)     | Final Week                                                                                                                                            |                                                                                                                |                                              |

