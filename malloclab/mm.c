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

#define WSIZE       4       /* Word and header/footer size (bytes) */
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))
#define PUT(p, val)  (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

#define BLK_HDR_SIZE ALIGN(sizeof(Header))

typedef struct header Header;

struct header {
  size_t size;
  Header *next;
  Header *prev;
};

void *find_fit(size_t size);
void print_heap();
void *coalesce(void *ptr);

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
  Header *p = mem_sbrk(BLK_HDR_SIZE);
  p->size = BLK_HDR_SIZE;
  p->next = p;
  p->prev = p;
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
    else {
      bp->size = newsize | 1;
    }
  } else {
    bp->size |= 1;
    bp->prev->next = bp->next;
    bp->next->prev = bp->prev;
  }
  return (char *)bp + BLK_HDR_SIZE;
}

void *find_fit(size_t size) {
  Header *p;
  for (p = ((Header *)mem_heap_lo())->next;
      p != mem_heap_lo() && p->size < size;
      p = p->next);
  if (p != mem_heap_lo())
    return p;
  return NULL;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
  Header *bp = ptr - BLK_HDR_SIZE,
         *head = mem_heap_lo();
  bp->size &= ~1;
  bp->next = head->next;
  bp->prev = head;
  head->next = bp;
  bp->next->prev = bp;
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size) {
  Header *bp = ptr - BLK_HDR_SIZE;
  size_t copySize = bp->size - BLK_HDR_SIZE;

  if (size == 0) {
    mm_free(ptr);
    return NULL;
  }

  if (size < copySize)
    return ptr;

  size_t oldsize = size < copySize ? size : copySize;
  size += size;

  void *newptr = mm_malloc(size);
  if (newptr == NULL)
    return NULL;

  memcpy(newptr, ptr, oldsize);
  mm_free(ptr);
  return newptr;
}

