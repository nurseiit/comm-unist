/*
 * Class/Struct Definitions
 */

typedef unsigned long long ull;

struct arguments {
  int verbose;
  int setBits;
  int linesPerSet;
  int blockBits;
  char *tracefile;
};
typedef struct arguments Arguments;

struct counter {
  int hit;
  int miss;
  int eviction;
};
typedef struct counter Counter;

struct line {
  int valid;
  ull tag;
};
typedef struct line Line;

Line newLine(int valid, ull tag) {
  Line line = {valid, tag};
  return line;
}

struct set {
  struct line *lines;
};
typedef struct set Set;

Set newSet(int length) {
  Set set;
  set.lines = (Line *)malloc(sizeof(Line) * length);
  for (int i = 0; i < length; i++)
    set.lines[i] = newLine(0, 0);
  return set;
}

struct cache {
  struct set *sets;
} cache;
typedef struct cache Cache;

Cache newCache(int length, int setSize) {
  Cache cache;
  cache.sets = (Set *)malloc(sizeof(Set) * length);
  for (int i = 0; i < length; i++)
    cache.sets[i] = newSet(setSize);
  return cache;
}