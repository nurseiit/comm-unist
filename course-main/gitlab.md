
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

