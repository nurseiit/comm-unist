CSE221: Data Structures, Spring 2019
=======================================


Course Staffs
-------------

- Instructor
  - Hyungon Moon (hyungon@unist.ac.kr, @hyungon)
- TAs
  - Ki Hwan Kim (kh1875@unist.ac.kr, @kihwan, Wed 13:00-14:00 @106-303)
  - Seon Ha (seonha@unist.ac.kr, @seon, Fri 15:00-16:00 @106-605)
  - Hwiyeon Kim (gnldus28@unist.ac.kr, @hwiyeon)
  - Nguyen Thanh Ngyuen(ntnguyen@unist.ac.kr, @ngyenthanh)
  - Yun Ha Han(diana438@unist.ac.kr, @yunha, Thu 15:00-16:00 @106-303)
  

Announcements
-------------
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
|Mar/06(Wed)|                                        |                    |  lab1 out  |
|Mar/07(Thu)|           Stacks and Queues            |                    | lab0: due 11:59pm                   |
|Mar/08(Fri)| Analysis of Algorithms (1) (Tentative) |                    |                    |
|Mar/11(Mon)|                                        |                    |                    |
|Mar/12(Tue)|       Analysis of Algorithms (2)       |                    |      lab2 out      |
|Mar/13(Wed)|                                        |                    | lab1: due 11:59pm  |
|Mar/14(Thu)|               Recursion                |                    |                    |
|Mar/15(Fri)|                                        |                    |                    |
|Mar/18(Mon)|                                        |                    |                    |
|Mar/19(Tue)|           List and Iterators           |                    |                    |
|Mar/20(Wed)|                                        |                    |                    |
|Mar/21(Thu)|                 Trees                  |                    |      lab3 out      |
|Mar/22(Fri)|               DROP DATE                |                    | lab2: due 11:59pm  |
|Mar/25(Mon)|                                        |                    |                    |
|Mar/26(Tue)|      Binary Trees and Forests (1)      |                    |                    |
|Mar/27(Wed)|                                        |                    |                    |
|Mar/28(Thu)|      Binary Trees and Forests (2)      |                    |                    |
|Mar/29(Fri)|                                        |                    |                    |
|Apr/01(Mon)|                                        |                    |                    |
|Apr/02(Tue)|     Heaps and Priority Queues (1)      |                    |                    |
|Apr/03(Wed)|                                        |                    |                    |
|Apr/04(Thu)|     Heaps and Priority Queues (2)      |                    |                    |
|Apr/05(Fri)|                                        |                    |                    |
|Apr/08(Mon)|                                        |                    |      lab4 out      |
|Apr/09(Tue)|            Maps and Hashing            |                    | lab3: due 11:59pm  |
|Apr/10(Wed)|                                        |                    |                    |
|Apr/11(Thu)|      Ordered Maps and Skip Lists       |                    |                    |
|Apr/12(Fri)|                                        |                    |                    |
|Apr/15(Mon)|                                        |                    |                    |
|Apr/16(Tue)|              Midterm Week              |                    |                    |
|Apr/17(Wed)|                                        |                    |                    |
|Apr/18(Thu)|              Midterm Week              |                    |                    |
|Apr/19(Fri)|                                        |                    |                    |
|Apr/22(Mon)|                                        |                    |                    |
|Apr/23(Tue)|           Binary Search Tree           |                    |                    |
|Apr/24(Wed)|                                        |                    |                    |
|Apr/25(Thu)|               AVL Trees                |                    |                    |
|Apr/26(Fri)|                                        |                    |                    |
|Apr/29(Mon)|                                        |                    |      lab5 out      |
|Apr/30(Tue)|            Red-Black Trees             |                    | lab4: due 11:59pm  |
|May/01(Wed)|                                        |                    |                    |
|May/02(Thu)|              Splay Trees               |                    |                    |
|May/03(Fri)|                                        |                    |                    |
|May/06(Mon)|                                        |                    |                    |
|May/07(Tue)|       Multiway Search Trees (1)        |                    |                    |
|May/08(Wed)|                                        |                    |      lab6 out      |
|May/09(Thu)|       Multiway Search Trees (2)        |                    | lab5: due 11:59pm  |
|May/10(Fri)|           Graphs (Tentative)           |                    |                    |
|May/13(Mon)|                                        |                    |                    |
|May/14(Tue)|            Graph Traversals            |                    |                    |
|May/15(Wed)|                                        |                    |                    |
|May/16(Thu)|  Directed Graphs and Graph Algorithms  |                    |                    |
|May/17(Fri)|                                        |                    |                    |
|May/20(Mon)|                                        |                    |                    |
|May/21(Tue)|     SP19 (Recitation or no class)      |                    |                    |
|May/22(Wed)|                                        |                    |                    |
|May/23(Thu)|     SP19 (Recitation or no class)      |                    |                    |
|May/24(Fri)|                                        |                    |                    |
|May/27(Mon)|                                        |                    |                    |
|May/28(Tue)|             Disjoint Sets              |                    |                    |
|May/29(Wed)|                                        |                    | lab6: due 11:59pm  |
|May/30(Thu)|      Strings and Pattern Matching      |                    |                    |
|May/31(Fri)|                                        |                    |                    |
|Jun/03(Mon)|                                        |                    |                    |
|Jun/04(Tue)|                Sorting                 |                    |                    |
|Jun/05(Wed)|                                        |                    |                    |
|Jun/06(Thu)|        Memorial day (no class)         |                    |                    |
|Jun/07(Fri)|                                        |                    |                    |
|Jun/10(Mon)|               Final Week               |                    |                    |

