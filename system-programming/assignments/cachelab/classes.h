/*
 * Class/Struct Definitions
 */

typedef unsigned long long ull;

struct pair {
  int first;
  int second;
};
typedef struct pair Pair;

Pair newPair(int first, int second) {
  Pair pair = {first, second};
  return pair;
}

struct arguments {
  int verbose;
  int setBits;
  int linesPerSet;
  int blockBits;
  int tagBits;
  char *tracefile;
};
typedef struct arguments Arguments;

struct counter {
  int hit;
  int miss;
  int eviction;
};
typedef struct counter Counter;

Counter newCounter(int hit, int miss, int eviction) {
  Counter counter = {hit, miss, eviction};
  return counter;
}

struct line {
  int valid;
  ull tag;
  int latest;
};
typedef struct line Line;

Line newLine(int valid, ull tag, int latest) {
  Line line = {valid, tag, latest};
  return line;
}

struct set {
  Line *lines;
};
typedef struct set Set;

Set newSet(int length) {
  Set set;
  set.lines = (Line *)malloc(sizeof(Line) * length);
  for (int i = 0; i < length; i++)
    set.lines[i] = newLine(0, 0, 0);
  return set;
}

struct cache {
  Set *sets;
  Counter counter;
} cache;
typedef struct cache Cache;

Cache newCache(int length, int setSize) {
  Cache cache;
  cache.sets = (Set *)malloc(sizeof(Set) * length);
  cache.counter = newCounter(0, 0, 0);
  for (int i = 0; i < length; i++)
    cache.sets[i] = newSet(setSize);
  return cache;
}