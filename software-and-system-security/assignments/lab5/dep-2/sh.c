int main() {
  setregid(getegid(), getegid());
  system("cat flag");
}
