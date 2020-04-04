int main() {
  setregid(getegid(), getegid());
  system("sh");
}
