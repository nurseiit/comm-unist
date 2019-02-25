# Lab0: gitlab

This is a repository created for you to play with git, which you will use to
obtain and submit the labs and assignments. In addition, upcoming labs and
the corresponding grades will be posted here.

## Lab goal

In this lab, you are supposed to follow a sequence of steps, through which you will
execute some basic git commands. The grader will check the each steps and post
the grade under `grader/`. That is, you are not supposed to touch the files under
the directory.

## References

Please refer to these two websites for further details or more useful features.
- [git-scm](https://git-scm.com/)
- [Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/setting-up-a-repository)



## Steps

Follow these steps to complete this lab. Each step starts with general introduction followed by
the `TODO` that you are supposed to do to complete this lab.

### 1. Check your git configuration.

Git needs your name and email to associate the changes you make and your identity. As the identity
is also used by the Gitlab or other web-based Git hosting services, you should check and have
an accurate configuration. Use the following commands to update you configuration. Please note that
you should do this on every machine that you work with (e.g., uni server, your labtop).

```sh
git config --global user.name "Hyungon Moon"
git config --global user.email "hyungon@unist.ac.kr"
```

Please note that you should use your name and email, not mine.

#### `TODO-1` run the above two commands to update the config on the machine that you are working on.

### 2. Clone this repository.

There are two ways to have a git repository. Firstly, you can create your own one, which will
be empty at the beginning, by running this in a directory.

```sh
git init
```

This command creates a directory `.git` that contains the data that git needs. Please note that this
directory is hidden by default under UNIX-like OSes because of the dot at the beginning of its name.
`ls -a` will show you the directory.

Another option is to *clone* an existing repository, which gives you a clone of another repository,
which is typically at Github or Gitlab. The command looks like this.

```sh
git clone <repo url>
```

#### `TODO-2` clone this repository on your machine (e.g., uni server).

To obtain the url of this repository, click the blue clone button on the top right.


### 3. Add and commit

A git repository contains a set of files that you want to track their changes. To make a file being tracked,
you should add the file to the repository, which is composed of two steps here: add and commit. You will
first add the file (which makes the file *staged*) and then *commit* the changes. Only after the commit,
the repository will have the file that you added. 

The add command looks like this

```sh
git add <files>
```

You can add one or more files at once. You can also use regular expression to add multiple files.
For example, 

```sh
git add *.cpp
```

will add all files in the directory whose name ends with `.cpp`.

After adding your files, make sure that the files (and only the files) are added by running another command:

```sh
git status
```

Git will let you know which files are added, or not tracked.

As mentioned earlier, you also need to commit the changes to really add the files to the repository. Just like
you add comments to your codes, you can (and must) add some comment to each commit that you make, so that
you can understand what each commit (a set of changes) is meant to be.

Running the following command will lead you a text editor which you can write the commit message with (`nano` by default).

```sh
git commit
```

I personally do not prefer this way as I don't make long commit messages. If you also prefer not to use such an editor,
use a command like this.

```sh
git commit -m "<message>"
```

This will make a commit with message `<message>`.

#### `TODO-3` write something and make your first commit to your submit repo.

> If you made a mistake and start over, delete the repository that you have cloned and clone the one on the Gitlab again.

Under the repository that you have cloned, create a subdir gitlab, and make a file hello.txt.
Let the file to make a string "Hello World!", add the file, and make a commit. You will need to
use a sequence of commands like this.

```sh
mkdir gitlab
cd gitlab
echo 'Hello World!' >> hello.txt
git add hello.txt
git commit -m 'Hello World!'
```
### 4. Inspecting the repository: log and diff

Now you have some of you own commits in your repository. How can then check and learn from your old commits/changes?

The following command will show you about your previous commits.

```sh
git log
```

Your repository does not have so many commit yet but if so, a preferred way is to limit the length of histroy to be displayed.

```sh
git log -2
```

As you see, each commit is associated with a long string, which is also called as *hash* of each commit. You can refer to each
commit with its hash.

To inspect more details, you can use the `diff` command. The following will show the changes you made, but not yet added.
Perhaps it will not show anything at this moment.

```sh
git diff
```

You can determine which commit you will compared the current commit with like this.

```sh
git diff <hash>
```

You can also limit the set of files you are diffing, like this.

```sh
git diff <hash> -- gitlab/hello.txt
```

For more advanced uses of these commands, which will help you a lot, please refer to the relevant pages in git-scm.

#### `TODO-4` Nothing here.

### 5. Working with remote repositories remote, push, fetch, master and pull

All the changes you made stays in your machine, and not visible from the Gitlab. You should `push` the changes
to make them visible in *upstream*. If you cloned a repository, the cloned one is automatically connected with
and upstream. In this case, running this command sends your changes to the upstream, which is the repository
on Gitlab here.

```sh
git push
```

Otherwise, you need to let the git know which *remote* repository and branch you are pushing to. To see the remote
repositories, run this command.

```sh
git remote -v
```

You will see that the repository on Gitlab is connected to your local repository (e.g. on your uni server account) with the name `origin`. This is because
you have cloned the repository.

In addition, you should also know which branch are you in. Running the following command will show you the list of branches
your local repository has, and let you know you are at `master` branch.

```sh
git branch
```

In this case, you can push your changes to the `master` branch at `origin` like this.

```sh
git push origin master
```

Later if you want to bring changes to your local repository (to obtain the posted labs or grades), run this.

```sh
git pull
```

#### `TODO-5` Push your changes you made earlier to the Gitlab

Running this command should suffice.

```sh
git push
```

### 6. Working with branches 1: branch and checkout

At high level, git stores the snapshots of your repository, whenever you commit your changes.
Consequently, your repository will have increasing number of snapshots, while you work with
the latest one. 

Sometimes, you may want to label those snapshots for some reason. You may want to easily access
some snapshots, or work with your colleagues with the same repository simultaneously. A common
way to do so is creating a `branch` which is merely a name attached to a commit, which refers
to a snapshot. To work with a particular snapshot, you can `checkout` a branch. You may have
seen a message that you have checked out the *master* branch when you have cloned your repository.

The following command shows the list of branches in your local repository.

```sh
git branch
```

Sometimes you may want to check which branches a remote one has, because the `clone` command only
brings the `master` branch to your local repository. Use the following command to check the list of
all branches that the remote repositories have.

```sh
git branch -a
```

You may see some branches other than master, which you will use for this lab.

#### `TODO-6` Work on another branch.

Check the branches on the `origin` repository, which is the one one the class Gitlab.

```sh
git branch -a
```

You should see the branch `origin/gitlab`, which is prepared for this lab. Check how the branch
(snapshot) looks like by checking out with this command.

```sh
git chekcout -t origin/gitlab
```

This command will checkout out the `gitlab` branch in the `origin` repository, create a branch
named `gitlab` locally, and then associate them. Under `gitlab/`, you can find out `hello.c` and
`Makefile`. With this command, build and test the files you checked out.

```sh
cd gitlab
make
./a.out
```

This should print `Hello`.

Now complete the program by modifying the `hello.c` file so that the program prints `Hello World!`
instead of `Hello`, add the modified file to the repository, and push the changes to the `origin`.
After editing, the following commands should work.

```sh
git add hello.c
git commit -m "finishing hello.c"
git push
```

Now let's go back to the `master` branch with this command.

```sh
git checkout master
```

### 7. Working with branches 2: merge

After your friend working on another branch, like `gitlab`, you may want to merge the changes.
Merging the branches is sometimes a non-trivial task if they have some *conflict*, but in this
course, you shouldn't have such a problem. If there is no conflict (e.g. the same file is modified in
multiple branches), you can easily bring the changes with this command.

```sh
git merge <branch>
```

This command will merge the branch with name `<branch>` into the one that you are currently working with,
a.k.a., *checked out*.

#### `TODO-7`

Merge the `giitlab` branch into the `master` branch. Firstly, make sure that you are at `master` branch
with this command.

```sh
git branch
git checkout master
```

Then merging should be as easy as:

```sh
git merge gitlab
```

Don't forget to push the changes.

```sh
git push
```

### 8. Being happier: add -u, .gitignore

When you work with real projects or labs, you will frequently update multiple files which are *already being tracked*.
This is the command that adds (a.k.a. stages) all such changes at once.

```sh
git add -u
```

After making updates or adding new files, you may want to make sure that all the files you created are being appropriately tracked.
To do so, you can use

```sh
git status
```

A problem is that, there are files that you may not want to, or shouldn't track. For example, at least in this course, you shouldn't track
the files that compiler generates. That is, you should track the source files only. Let's first generate them with these commands.

```sh
cd gitlab
make
git status
```

You will see the files generated by the compiler (e.g. `a.out`) are listed as *untracked* files. It's OK when you have one or two,
but you may have tens or hundreds later. You can create `.gitignore` file to hide them.


#### `TODO-8` Let's ignore a.out


Add the `a.out` to `.gitignore`. The following commands should work. Not that you can freely edit `.gitignore` with your text editor,
and also use regular expressions. For example, if you us vi, you may want to have `*.swp` in you `.gitignore` to hide the temp files of
vi (like this repository already has).

```sh
cd gitlab
echo "a.out" >> .gitignore
git add .gitignore
git commit -m "ignoring a.out"
```


### 9. Marking special points: tag

We've seen we can label a snapshot with `branch`. Another way to do so is `tag`. With this command, you can add a tag to the current snapshot.

```sh
git tag -a <tag-name> -m <message>
```

Unlike the branches, tags does not move. That is, when you make a commit to a branch, the branch is moved to the new commit to point to
the *latest* snapshot of the branch. Tags do not. Tags are used only to name a specific snapshot. You will be asked to create a tag
when submitting a lab.

#### `TODO-9` Creating a tag to complete this lab.

At this moment your `master` branch should point a branch with three files (`hello.c`, `hello.txt`, `Makefile`) under `gitlab`. 
Create a tag with the name `lab0-submit` and push it like this. Note that you should explicitly submit your new tag.

```sh
git tag -a lab0-submit -m "submitting lab0"
git push origin lab0-submit
```


### Notes

When new lab or grade is posted, you may want to bring the changes. You can do that by running this command.

```sh
git pull
```

As you will typically be working on the `master` branch and newly posted grades or lab will not have conflicts,
this command will automatically merge the new files with your current `master` branch.




