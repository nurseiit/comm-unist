/* 
 * CS:APP Data Lab 
 * 
 * <Nurseiit Abdimomyn 20172001>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2018 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* We do not support C11 <threads.h>.  */
/* 
 * bitOr - x|y using only ~ and & 
 *   Example: bitOr(6, 5) = 7
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitOr(int x, int y) {
  /*
   * One can apply De'Morgan's Law 
   * -> (A or B) = neg ((neg A) and (neg B))
   */
  int not_x = ~x;
  int not_y = ~y;
  return ~(not_x & not_y);
}
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  /*
   * 2^31 in Two's complement in 32 bits is the minimum.
   */
  return (1 << 31);
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  /*
   * Simple maths - invert x, add 1 to negate x.
   */
  return (~x + 1);
}
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (least significant) to 3 (most significant)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
  int mask = 255; // 11111111 – filter.
  int where = n << 3; // Multiply by `8`.
  // Shift right to truncate the less significant bytes.
  // Finally, filter only the last byte via `mask`.
  return (x >> where) & mask;
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
  /*
   * int is 32 bit, so the naive way would require about
   * 32 shift operations and 32 addtion operations to count
   * the number of 1 bits. But, the limit is 40 :(
   * 
   * One can count bits by using certain `masks` to be
   * able to sum many bits at the same time, so to speak.
   * 
   * Using the `masks` defined below, we can first sum every neighbor
   * bits, save it; sum every 2 neighbor bits, save it ... until we
   * reach 16 neighbor bits – at the end we get the sum of 1 bits of int.
   */
  int one_part = 85 | (85 << 8);
  int ones = (one_part << 16) | one_part;    // 01010101 01010101 01010101 01010101
  int two_part = 51 | (51 << 8);
  int twos = (two_part << 16) | two_part;    // 00110011 00110011 00110011 00110011
  int four_part = 15 | (15 << 8);
  int fours = (four_part << 16) | four_part; // 00001111 00001111 00001111 00001111
  int eights = 255 | (255 << 16);            // 00000000 11111111 00000000 11111111
  int sixteens = (1 << 15) + ~1 + 1;         // 00000000 00000000 11111111 11111111

  int result = (x & ones) + ((x >> 1) & ones);
  result = (result & twos) + ((result >> 2) & twos);
  result = (result & fours) + ((result >> 4) & fours);
  result = (result & eights) + ((result >> 8) & eights);
  result = (result & sixteens) + ((result >> 16)& sixteens);
  return result;
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  int isNegative = (1 << 31) & x;
  // Normal shift.
  int shifted = x >> n;
  // Significant `1` – shifted right by `n` pos-s, shifted left by `1` pos-n
  // to form `1111..(n times)..000`.
  int inverter = (isNegative >> n) << 1; 
  // In case `x` is negative, we need to invert
  // the leading `n` filled 1s to 0s.
  return inverter ^ shifted;
}
/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
int isPositive(int x) {
  /*
   * One can check the most significant bit.
   * 1. Because `x` is 32 bit signed int, if we shift x to 31 bits (x >> 31),
   *    we move the most significant bit to least significant place
   *    and check if it's 1 or 0 via ((x >> 1) & 1).
   * 2. Don't forget that 0 is not positive.
   */
  int sign_bit = (x >> 31) & 1;
  int is_zero = !x;
  return !(sign_bit | is_zero);
}
/* 
 * isLess - if x < y  then return 1, else return 0 
 *   Example: isLess(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLess(int x, int y) {
  /*
   * One could compare (x, y) via subtracting `y` from `x`
   * and checking for the sign of the result. But,
   * there could be an overflow in some cases. Thus,
   * we take the first 30 bits of each integers
   * and check via subtraction. Lastly, compare the last bits.
   */
  int xLastBit = x & 1;
  int yLastBit = y & 1;
  int lastBitIsLess = ((xLastBit + ~yLastBit + 1) >> 31) & 1;
  int xHalf = x >> 1;
  int yHalf = y >> 1;
  int subtraction = (xHalf + (~yHalf + 1));
  int subtractionIsNegative = (subtraction >> 31) & 1;
  int subtractionIsZero = !subtraction;
  return subtractionIsNegative | (subtractionIsZero & lastBitIsLess);
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  /*
   * For x to equal to 0, both x and -x should be non-negative.
   */
  int xIsNotNegative = (~(x >> 31)) & 1;
  int minusX = (~x + 1);
  int minusX_isNotNegative = (~(minusX >> 31)) & 1;
  return xIsNotNegative & minusX_isNotNegative;
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int isPower2(int x) {
  /*
   * Powers of 2 are of the form [10...000],
   * so subtracting 1 gives all ones except for the most significant
   * or Nth bit for x = 2^N. Thus, (x & (x - 1)) for any x = 2^N is zero.
   * 
   * Also, check if x is positive.
   */
  int minusOne = (~1 + 1);
  int xMinusOne = x + minusOne;
  int xIsPower2 = !(x & xMinusOne);
  // Check for corner cases.
  int xIsNegative = ((x >> 31) & 1);
  int notZero = !!x;
  return xIsPower2 & !xIsNegative & notZero;
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  int minusN = ~n + 1;
  // Remaining bits.
  int left = 32 + minusN;
  // Fill significant bits with 1s or 0s depending on the sign.
  int converted = (x << left) >> left;
  // Check if the `converted` result equals the original.
  int isEqual = !(x ^ converted);
  return isEqual;
}
/* 
 * floatInt2Float - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatInt2Float(int x) {
  // Start with bias.
  unsigned expo = 127;
  unsigned frac;
  // Set the sign.
  unsigned result = x & (1 << 31);
  unsigned temp = x;
  if (x == 0) return x;
  // Make `x` positive.
  if (result) x = temp = -x;
  // Count expo.
  while ((temp >> 1) > 0) {
    temp >>= 1;
    expo += 1;	
  }
  // Add expo to the answer.
  result |= (expo << 23);
  // Truncate useless bits until frac part.
  x <<= ((127 + 30) - expo);   
  frac = x >> 7;
  // Filter to remove everything after frac part.
  frac &= ((1 << 23) - 1);
  // Add frac to the answer.
  result |= frac;
  // Round.
  if ((x & (1 << 6)) && ((x & 255) ^ (1 << 6))) result++;
  return result;
}
/* 
 * floatNegate - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned floatNegate(unsigned uf) {
  int expo = 255; // 1111 1111.
  int maskExpo = expo << 23; // shift to form – 0 1111 1111 000...
  int maskFrac = (1 << 23) + ~0;
  int frac = maskFrac & uf;
  int isNaN = (maskExpo & uf) == maskExpo; // `true` if all exp bits are set to 1.
  // also, check if the fraction part is not zero.
  if(isNaN && frac)
    return uf;
  // Simply invert the sign bit
  return uf ^ (1 << 31);
}
/* 
 * floatIsLess - Compute f < g for floating point arguments f and g.
 *   Both the arguments are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   If either argument is NaN, return 0.
 *   +0 and -0 are considered equal.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 3
 */
int floatIsLess(unsigned uf, unsigned ug) {
  int expo = 255; // 1111 1111.
  int maskExpo = expo << 23; // shift to form – 0 1111 1111 000...
  int maskFrac = (1 << 23) + ~0;

  int uf_frac = maskFrac & uf;
  int ug_frac = maskFrac & ug;
  
  int uf_expo = (maskExpo & uf);
  int ug_expo = (maskExpo & ug);
  
  int uf_isNaN = (uf_expo == maskExpo) && uf_frac;
  int ug_isNaN = (ug_expo == maskExpo) && ug_frac;
  
  int uf_sign = (uf >> 31) & 1;
  int ug_sign = (ug >> 31) & 1;

  // Check whether any number is NaN.
  if (uf_isNaN || ug_isNaN) return 0;
  // Check if the exp & frac parts are 0 on both numbers (+0, -0).
  if(!(uf << 1) && !(ug << 1)) return 0;

  // If the signs are different, compare signs.
  if(uf_sign ^ ug_sign) return uf_sign > ug_sign;
  // If the expo parts are different, compare them depending on the sign.
  if(uf_expo ^ ug_expo) return (uf_expo < ug_expo) ^ uf_sign;
  // If the fraction parts are different, compare them depending on the sign.
  if(uf_frac ^ ug_frac) return (uf_frac < ug_frac) ^ uf_sign;
  return 0;
}
/* 
 * sign - return 1 if positive, 0 if zero, and -1 if negative
 *  Examples: sign(130) = 1
 *            sign(-23) = -1
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 2
 */
int sign(int x) {
  /*
   * Basically, sign(x) = (x > 0) - (x < 0).
   * Below is to use only allowed operators to express the above.
   */
  int isNegative = (x >> 31) & 1;
  int isNotZero = !!x;
  int isPositive = (!isNegative) & isNotZero;
  return (isPositive + ~isNegative + 1);
}
