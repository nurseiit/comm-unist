CSE221: Data Structures, Spring 2019
=======================================


Course Staffs
-------------

- Instructor
  - Hyungon Moon (hyungon@unist.ac.kr, @hyungon)
- TAs
  - Ki Hwan Kim (kh1875@unist.ac.kr, @kihwan, Wed 13:00-14:00 @106-303)
  - Seon Ha (seonha@unist.ac.kr, @seon, Fri 15:00-16:00 @106-605)
  - Hwiyeon Kim (gnldus28@unist.ac.kr, @hwiyeon, Tue 16:00-17:00 @106-303)
  - Nguyen Thanh Nguyen(ntnguyen@unist.ac.kr, @nguyenthanh, Mon 14:00 - 15:00 @106-707-1)
  - Yun Ha Han(diana438@unist.ac.kr, @yunha, Thu 17:00-18:00 @106-303)

Discussions
-----------
* [*Closed* (Answered) Issues](https://class.unicss.org/cse221-2019-spring/cse221-2019-spring/issues?scope=all&utf8=%E2%9C%93&state=closed)
* [*Open* (In discussion) Issues](https://class.unicss.org/cse221-2019-spring/cse221-2019-spring/issues)

Exams
-----
* Final
  TBA

Announcements
-------------
* **[05-16]** An error has been found from lab 5 Splay Tree operation definition, and fixed test cases are being deployed. On deletion, you should splay 
the parent of the node to really be deleted.
* **[05-14]** Lab 5 test cases have been fixed, and grader has also set up correctly with new test case set.
* **[05-10]** Lab 5 grader will run 9am/9pm every day by the deadline and the final one will run at 5/18 00:05am.
* **[05-10]** Lab 5 deadline has been changed: you have two more days and the new deadline if 5/17 Fri 11:59pm.
* **[05-08]** Lab 5 has beend posted. Please check the calandar for the schedule. The scheduling for pre-grading will be poseted by this weekend.

* **[04-22]** Attendance cheating will be considered like regular cheating. i.e., two attendance cheating results in F.
* **[04-08]** Lab 3 FAQ: `[LAB3] Any explanations about "the program ended abnormally"?` >> https://class.unicss.org/cse221-2019-spring/cse221-2019-spring/issues/96
* **[04-08]** From now on, there also are deadlinines for claiming about your lab gradings. Please refer to the calendar.

* **[03-09]** Use this repository's issue to ask questions. Any question on private repository or sent through email may not be answered or replied unless the question really is private: containing privacy-sensitive information.

* **[03-06]** lab 0 pre-graded. Use this command to check your grade on your local repository. Or, check the branch `grader-lab0` on Gitlab.
Note that this grading is not final.

```sh
git fetch origin
git checkout -t origin/grader-lab0
```

* **[03-06]** lab 0 deadline is extended due to the university network issue.
* **[03-04] VPN setup done:**

  For those of you applied ealier, VPN access has been set up. Visit vpn.unist.ac.kr to use VPN.
  You can use your portal ID/PW.
* **[02-28] Private questions will be answered only when they really are private. General questions (e.g. clarification of concepts) will not be answered on your repository.**
* **[02-28] Lab0 is out. due: Mar 06 11:59pm**

Logistics
---------

- Lecture slides: [/slides](/slides)

Grading
-------


### General rule


| 5%|Class participation  |
|---|---------------------|
|25%|Midterm              |
|30%|Final                |
|40%|Labs                 |


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
a group of name `cse221-2019-spring`. Under the group, you will find two
repositories. `cse221-2019-spring` is where you can ask questions and the announcements will
be posted. `submit-<student_id>` is your private repository where you should
submit labs, and your grade will be posted.

Before cloning and working with the lab repository, you may want to create and
register your ssh key by following this instruction.

### Creating and adding your key to Gitlab

[link](/gitlab.md)


Schedule
--------

* The followings will be scheduled/rescheduled on or after Mar 2 (once the
  course registration is finalized)
  * There are two make up lectures probably on Fridays.

|    Date     |                                                 Lecture                                                 | Recitation |             Lab              |
| ----------- | ------------------------------------------------------------------------------------------------------- | ---------- | ---------------------------- |
| Feb/25(Mon) |                                                                                                         |            |                              |
| Feb/26(Tue) | [Introduction](/slides/lecture01.pdf)                                                                   |            |                              |
| Feb/27(Wed) |                                                                                                         |            |                              |
| Feb/28(Thu) | [Arrays](/slides/lecture02.pdf)                                                                         |            | lab0: gitlab out             |
| Mar/01(Fri) |                                                                                                         |            |                              |
| Mar/04(Mon) |                                                                                                         |            |                              |
| Mar/05(Tue) | [Linked Lists](/slides/lecture03.pdf)                                                                   |            |                              |
| Mar/06(Wed) |                                                                                                         |            |                              |
| Mar/07(Thu) | [Stacks and Queues](/slides/lecture04.pdf)                                                              |            | lab0: due 11:59pm            |
| Mar/08(Fri) |                                                                                                         |            |                              |
| Mar/11(Mon) |                                                                                                         |            |                              |
| Mar/12(Tue) | [Analysis of Algorithms](/slides/lecture05.pdf)                                                         |            | lab1 out                     |
| Mar/13(Wed) |                                                                                                         |            |                              |
| Mar/14(Thu) | [Recursion](/slides/lecture06.pdf)                                                                      |            |                              |
| Mar/15(Fri) |                                                                                                         |            |                              |
| Mar/18(Mon) |                                                                                                         |            | lab1: due 11:59pm            |
| Mar/19(Tue) | [List and Iterators](/slides/lecture07.pdf)                                                             |            |                              |
| Mar/20(Wed) |                                                                                                         |            |                              |
| Mar/21(Thu) | [Trees](/slides/lecture08.pdf)                                                                          |            | lab2 out                     |
| Mar/22(Fri) | DROP DATE                                                                                               |            |                              |
| Mar/25(Mon) |                                                                                                         |            |                              |
| Mar/26(Tue) | [Binary Trees (1)](/slides/lecture09.pdf)                                                               |            |                              |
| Mar/27(Wed) |                                                                                                         |            |                              |
| Mar/28(Thu) | [Binary Trees (2)](/slides/lecture09.pdf)                                                               |            |                              |
| Mar/29(Fri) |                                                                                                         |            |                              |
| Apr/01(Mon) |                                                                                                         |            |                              |
| Apr/02(Tue) | [Heaps and Priority Queue)](/slides/lecture10.pdf)                                                      |            |                              |
| Apr/03(Wed) |                                                                                                         |            | lab2: due 11:59pm            |
| Apr/04(Thu) | [Maps and Hashing (1)](/slides/lecture11.pdf)                                                           |            | lab3 out                     |
| Apr/05(Fri) |                                                                                                         |            |                              |
| Apr/08(Mon) |                                                                                                         |            |                              |
| Apr/09(Tue) | [Maps and Hashing (2)](/slides/lecture11.pdf) <br/>[Ordered Maps and Skip Lists](/slides/lecture12.pdf) |            | lab 1 / lab 2 claim deadline |
| Apr/10(Wed) |                                                                                                         |            |                              |
| Apr/11(Thu) | [Binary Search Tree](/slides/lecture13.pdf)                                                             |            |                              |
| Apr/12(Fri) |                                                                                                         |            |                              |
| Apr/15(Mon) |                                                                                                         |            |                              |
| Apr/16(Tue) | Midterm Week (No class)                                                                                 |            |                              |
| Apr/17(Wed) |                                                                                                         |            |                              |
| Apr/18(Thu) | Midterm Week (No class)                                                                                 |            |                              |
| Apr/19(Fri) |                                                                                                         |            |                              |
| Apr/22(Mon) | Midterm (9pm-11pm @ 104-E205)                                                                           |            | lab3: due 11:59pm            |
| Apr/23(Tue) | No class                                                                                                |            | lab4 out                     |
| Apr/24(Wed) |                                                                                                         |            | lab 3 claim deadline         |
| Apr/25(Thu) | [AVL Trees](/slides/lecture14.pdf)                                                                      |            |                              |
| Apr/26(Fri) |                                                                                                         |            |                              |
| Apr/29(Mon) |                                                                                                         |            |                              |
| Apr/30(Tue) | [Red-Black Trees](/slides/lecture15.pdf)                                                                |            |                              |
| May/01(Wed) |                                                                                                         |            |                              |
| May/02(Thu) | [Splay Trees](/slides/lecture16.pdf)                                                                                             |            |                              |
| May/03(Fri) |                                                                                                         |            |                              |
| May/06(Mon) |                                                                                                         |            | lab4: due 11:59pm            |
| May/07(Tue) | [Multiway Search Trees (1)](/slides/lecture17.pdf)                                                                               |            | lab5 out                     |
| May/08(Wed) |                                                                                                         |            | lab4 claim deadline          |
| May/09(Thu) | [Multiway Search Trees (2)](/slides/lecture17.pdf)                                                                               |            |                              |
| May/10(Fri) |                                                                                       |            |                              |
| May/13(Mon) |                                                                                                         |            |                              |
| May/14(Tue) | [Graph](/slides/lecture18.pdf)                                                                                         |            |                              |
| May/15(Wed) |                                                                                                         |            |             |
| May/16(Thu) | [Graph Traversals](/slides/lecture19.pdf)                                                                    |            |                      |
| May/17(Fri) |                                                                                                         |            |   lab5: due 11:59pm                           |
| May/18(Sat) |                                                                                                         |            |   lab6 out                           |
| May/20(Mon) |                                                                                                         |            |                              |
| May/21(Tue) | No class                                                                           |            |                              |
| May/22(Wed) |                                                                                                         |            |                              |
| May/23(Thu) | No class                                                                           |            |                              |
| May/24(Fri) |                                                                                                         |            |                              |
| May/27(Mon) | [Directed Graphs and Graph Algorithms (1) ](/slides/lecture20.pdf) (7pm - 8:15pm @ TBD)                                                                                                        |            |                              |
| May/28(Tue) | [Directed Graphs and Graph Algorithms (2)](/slides/lecture20.pdf) <br/> [Disjoint Sets](/slides/lecture21.pdf)                                                                                           |            |                              |
| May/29(Wed) |                                                                                                         |            |                              |
| May/30(Thu) | [Strings and Pattern Matching](/slides/lecture22.pdf)                                                                            |            |                              |
| May/31(Fri) |                                                                                                         |            |                              |
| Jun/03(Mon) |                                                                                                         |            |            |
| Jun/04(Tue) | [Sorting](/slides/lecture23.pdf)                                                                                                 |            |                              |
| Jun/05(Wed) |                                                                                                         |            |     lab6: due 11:59pm                          |
| Jun/06(Thu) | Memorial day (no class)                                                                                 |            |                              |
| Jun/07(Fri) |                                                                                                         |            |                              |
| Jun/10(Mon) | Final Week                                                                                              |            |                              |

