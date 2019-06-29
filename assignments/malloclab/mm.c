/*
 * --------------------------
 * Explicit list with structs
 * --------------------------
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"
#include "mm.h"

team_t team = {
  /* Team name */
  "fenwick",
  /* First member's full name */
  "Nurseiit Abdimomyn",
  /* First member's email address */
  "nurs@unist.ac.kr",
  "",
  "",
};

/* ~ Constants and macros ~ */

#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~0x7)

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define BLK_HDR_SIZE ALIGN(sizeof(Header))

#define GROUPS 13

typedef struct header Header;

struct header {
  size_t size;
  Header *next;
  Header *prev;
};

void *find_fit(size_t size);
void print_heap();
void *coalesce(void *ptr);

Header* lists[20];

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
  int i;
  for (i = 3; i <= GROUPS; i++) {
    lists[i] = mem_sbrk(BLK_HDR_SIZE);
    lists[i]->size = BLK_HDR_SIZE;
    lists[i]->next = lists[i];
    lists[i]->prev = lists[i];
  }
  return 0;
}

void print_heap() {
  Header *bp = mem_heap_lo();
  while (bp < (Header *)mem_heap_hi()) {
    printf("%s block at %p, with size %d.\n",
        (bp->size & 1) ? "allocated" : "free", bp, (int)(bp->size & ~1));
    bp = (Header *)((char *)bp + (bp->size & ~1));
  }
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
  int newsize = ALIGN(size + BLK_HDR_SIZE);
  Header *bp = find_fit(newsize);
  if (bp == NULL) {
    bp = mem_sbrk(newsize);
    if (bp == (void *)-1)
      return NULL;
    else
      bp->size = newsize | 1; 
  } else {
    bp->size |= 1;
    bp->prev->next = bp->next;
    bp->next->prev = bp->prev;
  }
  return (char *)bp + BLK_HDR_SIZE;
}

void *find_fit(size_t size) {
  Header *head;
  int group = 3;
  for (; (1 << group) < size && group < GROUPS; group++);
  head = lists[group];
  Header *p;
  for (p = head->next;
      p != head && p->size < size;
      p = p->next);
  if (p != head)
    return p;
  return NULL;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
  Header *bp = ptr - BLK_HDR_SIZE;
  bp->size &= ~1;

  Header *head;
  int group = 3;
  for (; (1 << group) < bp->size && group < GROUPS; group++);
  head = lists[group];

  bp->next = head->next;
  bp->prev = head;
  head->next = bp;
  bp->next->prev = bp;
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size) {
  if (size == 0) {
    mm_free(ptr);
    return NULL;
  }

  Header *bp = ptr - BLK_HDR_SIZE;
  size_t copySize = bp->size - BLK_HDR_SIZE;
  if (size < copySize)
    return ptr;

  // Hack
  if (size * 3 > 24576 + size)
    size = 3 * size;
  else
    size += 24576;

  void *newptr = mm_malloc(size);
  if (newptr == NULL)
    return NULL;

  memcpy(newptr, ptr, copySize);
  mm_free(ptr);
  return newptr;
}

