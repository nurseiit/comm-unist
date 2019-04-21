/*
 * Solution by:
 *  Nurseiit Abdimomyn
 *  20172001
 *  nurs[at]unist.ac.kr
 */

#include <argp.h>
#include <stdio.h>
#include <stdlib.h>
#include "cachelab.h"
#include "classes.h"

static int parse_opt(int key, char *arg, struct argp_state *state) {
  Arguments *arguments = state->input;
  switch (key) {
    case 'v':
      arguments->verbose = 1;
      break;
    case 's':
      arguments->setBits = atoi(arg);
      break;
    case 'E':
      arguments->linesPerSet = atoi(arg);
      break;
    case 'b':
      arguments->blockBits = atoi(arg);
      break;
    case 't':
      arguments->tracefile = arg;
      break;
  }
  return 0;
}

void solve(Arguments arguments);

int main(int argc, char **argv) {
  Arguments arguments;

  arguments.verbose = 0;

  struct argp_option options[] = {
      {0, 'v', 0, 0, "Optional verbose flag."},
      {0, 's', "<num>", 0, "Number of set index bits."},
      {0, 'E', "<num>", 0, "Number of lines per set."},
      {0, 'b', "<num>", 0, "Number of block offset bits."},
      {0, 't', "<file>", 0, "Trace file."},
      {0},
  };
  struct argp argp = {options, parse_opt};

  argp_parse(&argp, argc, argv, 0, 0, &arguments);

  solve(arguments);

  return 0;
}

/*
 * Methods
 */

void accessCache(ull addr) {
}

Cache initizalize(char *fileName, Arguments arguments) {
  freopen(fileName, "r", stdin);
  return newCache((1 << arguments.setBits), arguments.linesPerSet);
}

void solve(Arguments arguments) {
  Cache cache = initizalize(arguments.tracefile, arguments);

  char cmd;
  ull addr;
  int size;

  while (scanf(" %c %llx,%d", &cmd, &addr, &size) != EOF) {
    printf("%c, %llx, %d\n", cmd, addr, size);
    switch (cmd) {
      case 'I':
        break;
      case 'M':
        accessCache(addr);
      case 'L':
      case 'S':
        accessCache(addr);
        break;
    }
  }
  free(cache.sets);
  printSummary(0, 0, 0);
}

/*
⠌⡂⡊⡢⠨⡊⡎⢗⠝⢕⠫⢣⠫⡪⠣⡓⡝⡜⣕⢇⢗⣕⢧⡳⡱⣕⢕⢅⢇⢕⢅⢣⠱⡨⢢⢑⢌⠢⡑⢔⠨⡐⡑⠌⠢⡑⠌⡌⡢⡑ 
⠨⢐⢐⠠⠁⡂⢜⠰⡡⣱⢸⡰⣱⡸⡸⡸⡘⡜⣜⢼⡱⡵⣳⢽⣝⡮⣗⡯⣗⣗⣗⢧⡳⣱⢱⡑⡆⡇⡎⡢⢑⠨⠄⠁⠂⠄⡁⠐⢐⠨⠢⡑⡨⠄⠄ 
⠈⡀⡂⠐⠄⡊⢆⢯⡺⣪⢷⢝⣞⢞⣝⢮⣣⡳⣕⢗⡽⣝⢮⢗⣗⡽⣳⢽⣳⣳⡳⡯⣞⢵⡣⡣⡇⡇⡕⠔⢀⠄⢂⠱⡠⣅⠠⠈⢀⠨⢈⢰⠨⡐⠄ 
⠄⠂⠄⢁⠐⠄⢝⢮⡺⡵⣫⢯⡺⡝⡮⡳⡕⣝⢮⢳⢝⡮⡯⣳⡳⡽⡽⣽⣺⢮⡯⣟⣞⢵⢝⡕⡇⢇⠡⠐⠄⢌⠄⡂⡈⢮⢪⠢⢐⢐⢅⡇⣗⢌⠄ 
⠄⢁⠐⠄⠠⠈⢸⢱⢕⢝⠪⣊⢬⠬⢦⢧⢵⣱⡱⡝⡵⣝⢮⡳⣝⢮⢯⢞⡾⣯⢯⣗⡷⣝⢗⡝⡬⡪⡎⠌⡢⡐⡐⢅⠢⡸⡨⡪⡸⡸⡵⣝⢮⡺⡌ 
⠄⠐⠈⢀⠠⠈⠠⠣⢁⠂⠃⠐⠄⠌⠄⢢⣅⢕⠹⡺⣪⢮⡳⣝⡮⣯⡺⡽⣽⢽⣻⣞⡽⡮⣻⡺⣪⢯⢝⡼⡴⡺⣜⢮⡺⡜⡮⢮⢳⢝⣞⢮⡳⣝⢮ 
⠄⠈⡀⠄⡀⠐⠄⠁⠂⡨⠄⠅⠡⠱⡁⡢⠪⣯⣳⣣⢣⢣⣻⣺⣺⢵⣫⢯⢯⣟⣗⣯⢯⢯⣳⢽⢽⢽⢽⢽⢽⢝⡮⣗⣝⢮⣫⢗⡯⣗⣗⢯⢞⡵⡳ 
⠄⠄⡀⠄⢀⠄⢈⠄⠅⡎⠄⠡⢅⢄⠢⡊⢜⡺⣪⢮⣳⢽⣺⣺⣺⢽⣺⢽⢽⣺⣳⢯⣟⣽⡺⡽⡽⡽⡽⡽⡽⡽⣝⣞⡾⣽⣺⢽⢽⣺⡺⣝⣗⢽⡹ 
⠄⠄⠄⠠⠄⠠⢐⠠⡣⡱⡱⡱⣢⣣⡳⣝⢵⣫⢾⣝⢾⢽⣺⣺⣺⢽⣺⢽⣝⣗⣯⣟⣾⣺⢽⣝⢾⢝⣽⣺⢽⢽⣺⢮⣻⣺⡺⡽⡽⡮⣯⣳⢵⡳⣝ 
⠄⠄⠈⢀⠠⠄⡢⡣⣣⢳⡹⣚⢮⡺⣚⢮⢯⣺⢵⣳⢯⣻⣺⣺⣺⢝⣮⣳⣳⢽⣺⣞⣾⣺⣳⢽⣝⢽⡺⣮⣻⢽⣺⢽⣺⢮⢯⢯⢯⣻⡺⡮⣳⢽⣪ 
⠄⠄⠐⠄⡀⢐⢕⣝⢮⣗⡽⣮⣳⢽⣪⢷⣻⣺⢽⣺⡽⣞⣞⣞⣞⡽⣪⢞⡮⣟⣞⣾⣺⢾⢽⢽⣺⡳⣝⡞⣞⡽⣞⡯⣗⡿⡽⡽⡽⡮⡯⡯⣳⡫⣞ 
⠄⠄⠄⠂⠄⡎⣺⡪⣟⡮⣟⣾⣺⡽⣞⣟⡾⣽⢽⣳⢯⣟⣞⣞⣮⣻⡪⡯⣺⣳⣳⢗⣯⢯⢿⡽⣞⣽⢵⡫⣗⡽⡵⣫⣗⢯⢯⢯⢯⢯⢯⣫⢗⡽⡵ 
⠄⠄⠁⠄⠡⡪⡪⣞⣗⡯⣷⣳⣗⡿⡽⡾⣽⣳⢿⡽⣽⣞⣗⣗⢷⢵⢝⢮⣳⡳⡽⣽⣺⢯⡿⣽⢽⣺⣝⢮⡳⣝⢞⡵⡳⣝⢽⢝⡽⣝⡵⣫⢗⡽⡺ 
⠄⠄⢀⠈⢌⢮⢺⢵⡳⡯⣗⡷⡯⣯⣟⣯⡷⣿⢽⡯⣷⣗⣟⡾⣝⢵⡫⣗⢵⡫⡯⣳⢽⢽⢽⢽⢝⣞⢼⠱⡙⡜⣕⢯⢯⡺⡭⣳⢝⡞⡮⣳⢝⢮⢫ 
⠄⠄⠄⠄⢸⡸⣝⡵⡯⡯⣗⡿⣽⣳⣻⢾⢽⢯⡯⣟⣗⡷⣫⡾⡵⡝⡮⣳⢝⢮⡫⡮⡳⣹⡪⡏⡗⡕⡕⢅⡣⣕⢽⣹⢵⣫⢯⢮⢳⣹⡹⣪⢳⡱⡱ 
⠄⠄⠐⠄⢕⡕⣗⢽⢝⣽⡳⡯⣗⡯⣞⡯⡿⡽⣽⡳⡯⡯⣗⡯⣗⡝⡜⡎⡣⡃⡡⡁⢅⠱⡱⡱⡱⡱⡱⣕⢧⣳⢽⣪⢗⡗⣗⢽⢕⡵⡝⣎⢇⢇⢗ 
⠄⠄⠂⠁⡱⡹⡪⣏⢯⣺⡺⣝⣗⢯⣗⢯⢯⡻⡮⡯⡯⣻⣪⢟⡮⣗⡵⣜⣜⢼⡸⣜⣜⢕⡕⣜⢜⡼⣪⣗⣟⢮⣗⡽⣕⢯⢺⢸⠵⣝⢮⡳⡝⣜⢵ 
⠄⠄⠄⠂⢕⢹⢪⡳⣝⢞⢮⣳⡳⣝⢮⢯⢏⡯⣏⢯⣫⢗⡽⣝⣞⢷⢽⡺⡮⣗⣟⣞⢮⣗⣟⢮⣗⡯⣗⣗⢗⡽⣪⢺⢪⠳⡑⠡⡹⣜⢞⢮⡫⣪⢪ 
⠄⠄⠁⠄⠅⠕⡕⡕⡧⡫⡳⡕⣝⢎⢯⡺⣝⢮⡳⣫⢮⡫⡯⣺⡺⣝⣗⢯⣻⣺⣺⡺⣽⡺⡮⣻⢪⡫⡺⡨⢃⢅⢅⢕⠌⠌⡰⡱⣕⢵⡫⣗⢽⡸⡸ 
⠄⠄⠄⠁⠨⠨⢪⢸⢸⢸⢱⡹⡸⡕⡧⡫⣎⢗⢽⢸⢪⢎⢯⡺⣝⢞⡮⡯⡺⡮⡺⡺⡱⢝⡪⡪⡪⣪⢮⣎⢮⣪⢲⡱⠡⡐⣝⢮⣳⢝⣮⡳⣣⢣⢣ 
⠄⠄⠈⠄⠈⡈⢆⢣⢣⢳⡱⡝⣎⢗⣝⢽⢜⣝⢎⢎⠊⠊⢃⠋⠎⡓⣙⢊⢣⢣⡣⡥⣳⢝⣞⣗⡯⣗⣟⠮⠳⢑⢡⢡⢑⢕⢵⢯⡺⣝⢮⡺⡪⡪⡪ 
⠄⠄⠄⠂⠁⡀⠢⡑⡕⡕⡵⡹⣪⡳⣕⢯⡳⡳⣝⢎⣗⣕⢄⢌⢈⠂⠸⣸⠘⠜⢮⢫⠺⢹⠺⢊⢍⢜⢨⠨⢌⠢⡊⢆⢣⢣⢯⡳⣝⢮⡳⡹⡸⡨⢂ 
⠄⠄⠠⠄⠄⠂⠡⠪⡸⡸⡸⡪⣪⢺⡪⣗⡽⣝⢮⣳⡳⣕⢯⡪⡪⡪⡊⡆⢎⠢⣂⠢⡑⢔⡑⡕⡌⡆⡕⢕⢕⢕⢱⢑⢕⡕⣗⣝⢮⢣⡳⡹⡨⠨⠄ 
⠄⠄⠄⠄⠂⠁⠈⠌⡂⢇⢇⢇⢇⢇⢯⢺⡪⣗⢯⣺⡪⣗⢽⣪⡳⣕⢕⢕⠕⡕⢜⠜⡜⡆⡇⡇⡇⡇⡇⡇⡇⡎⣲⢱⡣⣏⢮⡪⡎⡇⡇⢕⢌⢈⢂ 
⠄⠠⠄⠂⠄⡁⠄⠂⡈⡢⡑⡅⡇⡕⡕⢵⢹⡪⣗⢵⣝⢮⢳⡱⣝⢼⡹⣪⡣⡇⣇⢇⢕⢕⢕⢕⢕⢕⢕⢕⢕⡕⡧⡳⡕⡧⡳⡕⡇⡇⡇⢕⢰⢰⢕ 
⢀⠄⠄⠂⠁⢀⠈⢀⠠⠐⡐⢑⠌⡢⡃⢇⢳⢹⢜⢧⡳⡽⣕⢧⢳⡣⣏⢖⣳⢹⡪⣳⢹⢜⢼⡸⣜⢼⢜⡎⡧⡳⡝⣎⢯⡺⡝⣎⢇⢇⠪⣐⢕⣗⢽ 
⠐⠄⠠⠄⠐⠄⠠⠄⠄⠂⠐⠠⢑⢐⢌⠪⡘⡌⡎⢮⡚⡮⢮⢳⡣⡳⡵⣹⢜⢵⡹⣜⣕⢏⣗⣝⢮⣳⡳⣝⢽⣹⡪⣗⢽⡪⣏⢮⢪⢢⡣⡳⣝⡮⣟ 
⢈⠠⠡⠄⠄⠐⠄⠠⠐⠄⠈⠠⠄⡐⢀⢑⢐⢌⠪⡢⡣⢫⢣⢳⡹⢵⢝⢮⣫⡳⣝⢮⢮⡳⣳⢵⣻⣪⣞⣗⢽⣪⢞⢮⡳⣝⢎⢮⡪⣺⡪⣯⣳⢯⣻
      Hit or miss, I guess they never miss, huh?
 You got a boyfriend, I bet he doesn't kiss ya (Mwah!)
*/