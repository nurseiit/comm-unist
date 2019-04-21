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

  arguments.tagBits = 64 - (arguments.setBits + arguments.blockBits);
  solve(arguments);

  return 0;
}

int getEmptyLine(Set set, int length) {
  for (int i = 0; i < length; i++)
    if (set.lines[i].valid == 0)
      return i;
  return -1;
}

Pair getEvictionLine(Set set, int length) {
  int min = 0;
  int max = 0;

  for (int i = 0; i < length; i++) {
    if (set.lines[min].latest > set.lines[i].latest)
      min = i;
    if (set.lines[max].latest < set.lines[i].latest)
      max = i;
  }
  return newPair(min, max);
}

Cache accessCache(Cache cache, ull addr, Arguments arguments) {
  int linesPerSet = arguments.linesPerSet;

  ull tag = addr >> (64 - arguments.tagBits);
  ull foo = addr << arguments.tagBits;
  ull index = foo >> (arguments.blockBits + arguments.tagBits);

  Set set = cache.sets[index];

  int hasEmptyLine = 0;
  int isHit = 0;

  for (int i = 0; i < linesPerSet; i++) {
    if (set.lines[i].valid == 0) {
      hasEmptyLine = 1;
    } else if (tag == set.lines[i].tag) {
      set.lines[i].latest += 1;
      isHit = 1;
    }
  }

  if (isHit) {
    cache.counter.hit += 1;
    return cache;
  }

  cache.counter.miss += 1;

  Pair evictionLine = getEvictionLine(set, arguments.linesPerSet);
  int first = evictionLine.first;
  int second = evictionLine.second;

  if (hasEmptyLine) {
    int empty = getEmptyLine(set, arguments.linesPerSet);
    set.lines[empty] = newLine(1, tag, set.lines[second].latest + 1);
  } else {
    cache.counter.eviction += 1;
    set.lines[first] = newLine(1, tag, set.lines[second].latest + 1);
  }
  return cache;
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
    switch (cmd) {
      case 'M':
        cache = accessCache(cache, addr, arguments);
      case 'L':
      case 'S':
        cache = accessCache(cache, addr, arguments);
        break;
    }
  }

  Counter counter = cache.counter;
  printSummary(counter.hit, counter.miss, counter.eviction);
  return;
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