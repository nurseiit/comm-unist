int main() {
  setregid(getegid(), getegid());
  system("/bin/sh");
}
