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

Announcements
-------------


* **[03-27]** Please participate a survet using google form here for the midterm scheduling. The Deadline is tonight (Mar 28 10:00am).
  - [https://forms.gle/VzJCXsC31dtWz5q27](https://forms.gle/VzJCXsC31dtWz5q27)
  
* **[03-25]** A clarification on Lab2
  - The `write` function in `Textedit` takes the name of output file as an argument, not the contents to write.
  
* **[03-21]** Lab 2 is posted. Please refer to your submission repository and the calendar for the details.

* **[03-18]** There will be more pre-gradings as some students requested as Follows. The real grader will run at 0:05 3/19.
  - Around 3pm 3/18.
  - Around 6pm 3/18.
  - Around 9pm 3/18.
  - Around 11pm 3/18.

* **[03-17]** Lab1 is pre-graded. Please check the `grader-lab1` branch in your submissiong repository. The next scheduled runs are:
  - Around 8:30am 3/17.
  - Around 6pm 3/17.
  - Around 10pm 3/17.
  - Around the noon 3/18.

* **[03-12]** Lab1 is out. Due is Mar 18 (Mon) 11:59pm.

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

|   Date    |                Lecture                 |     Recitation     |        Lab         |
|-----------|----------------------------------------|--------------------|--------------------|
|Feb/25(Mon)|                                        |                    |                    |
|Feb/26(Tue)|              [Introduction](/slides/lecture01.pdf)              |                    |                    |
|Feb/27(Wed)|                                        |                    |                    |
|Feb/28(Thu)|                 [Arrays](/slides/lecture02.pdf)                 |                    |  lab0: gitlab out  |
|Mar/01(Fri)|                                        |                    |                    |
|Mar/04(Mon)|                                        |                    |                    |
|Mar/05(Tue)|   [Linked Lists](/slides/lecture03.pdf)              |                    |           |
|Mar/06(Wed)|                                        |                    |    |
|Mar/07(Thu)|           [Stacks and Queues](/slides/lecture04.pdf)            |                    | lab0: due 11:59pm                   |
|Mar/08(Fri)|  |                    |                    |
|Mar/11(Mon)|                                        |                    |                    |
|Mar/12(Tue)|       [Analysis of Algorithms](/slides/lecture05.pdf)       |                    |      lab1 out      |
|Mar/13(Wed)|                                        |                    |   |
|Mar/14(Thu)|               [Recursion](/slides/lecture06.pdf)                |                    |                    |
|Mar/15(Fri)|                                        |                    |                    |
|Mar/18(Mon)|                                        |                    | lab1: due 11:59pm                   |
|Mar/19(Tue)|           [List and Iterators](/slides/lecture07.pdf)           |                    |                    |
|Mar/20(Wed)|                                        |                    |                    |
|Mar/21(Thu)|                 [Trees](/slides/lecture08.pdf)                  |                    | lab2 out           |
|Mar/22(Fri)|               DROP DATE                |                    |   |
|Mar/25(Mon)|                                        |                    |                    |
|Mar/26(Tue)|      [Binary Trees (1)](/slides/lecture09.pdf)      |                    |                    |
|Mar/27(Wed)|                                        |                    |                    |
|Mar/28(Thu)|      [Binary Trees (2)](/slides/lecture09.pdf)      |                    |                    |
|Mar/29(Fri)|                                        |                    |                    |
|Apr/01(Mon)|                                        |                    |            |
|Apr/02(Tue)|     Heaps and Priority Queues (1)      |                    |                    |
|Apr/03(Wed)|                                        |                    |  lab2: due 11:59pm                 |
|Apr/04(Thu)|     Heaps and Priority Queues (2)      |                    |  lab3 out                  |
|Apr/05(Fri)|                                        |                    |                    |
|Apr/08(Mon)|                                        |                    |         |
|Apr/09(Tue)|            Maps and Hashing            |                    |                |
|Apr/10(Wed)|                                        |                    |  lab3: due 11:59pm                  |
|Apr/11(Thu)|      Ordered Maps and Skip Lists       |                    |                    |
|Apr/12(Fri)|                                        |                    |                    |
|Apr/15(Mon)|                                        |                    |                    |
|Apr/16(Tue)|              Midterm Week              |                    |                    |
|Apr/17(Wed)|                                        |                    |                    |
|Apr/18(Thu)|              Midterm Week              |                    |                    |
|Apr/19(Fri)|                                        |                    |                    |
|Apr/22(Mon)|                                        |                    |                    |
|Apr/23(Tue)|           Binary Search Tree           |                    |  lab4 out          |
|Apr/24(Wed)|                                        |                    |                    |
|Apr/25(Thu)|               AVL Trees                |                    |                    |
|Apr/26(Fri)|                                        |                    |                    |
|Apr/29(Mon)|                                        |                    |            |
|Apr/30(Tue)|            Red-Black Trees             |                    |   |
|May/01(Wed)|                                        |                    |    lab4: due 11:59pm                |
|May/02(Thu)|              Splay Trees               |                    |    lab5 out                |
|May/03(Fri)|                                        |                    |                    |
|May/06(Mon)|                                        |                    |                    |
|May/07(Tue)|       Multiway Search Trees (1)        |                    |                    |
|May/08(Wed)|                                        |                    |            |
|May/09(Thu)|       Multiway Search Trees (2)        |                    |  |
|May/10(Fri)|           Graphs (Tentative)           |                    |                    |
|May/13(Mon)|                                        |                    |                    |
|May/14(Tue)|            Graph Traversals            |                    |                    |
|May/15(Wed)|                                        |                    | lab5: due 11:59pm                   |
|May/16(Thu)|  Directed Graphs and Graph Algorithms  |                    | lab6 out                   |
|May/17(Fri)|                                        |                    |                    |
|May/20(Mon)|                                        |                    |                    |
|May/21(Tue)|     SP19 (Recitation or no class)      |                    |                    |
|May/22(Wed)|                                        |                    |                    |
|May/23(Thu)|     SP19 (Recitation or no class)      |                    |                    |
|May/24(Fri)|                                        |                    |                    |
|May/27(Mon)|                                        |                    |                    |
|May/28(Tue)|             Disjoint Sets              |                    |                    |
|May/29(Wed)|                                        |                    |   |
|May/30(Thu)|      Strings and Pattern Matching      |                    |                    |
|May/31(Fri)|                                        |                    |                    |
|Jun/03(Mon)|                                        |                    | lab6: due 11:59pm                   |
|Jun/04(Tue)|                Sorting                 |                    |                    |
|Jun/05(Wed)|                                        |                    |                    |
|Jun/06(Thu)|        Memorial day (no class)         |                    |                    |
|Jun/07(Fri)|                                        |                    |                    |
|Jun/10(Mon)|               Final Week               |                    |                    |

