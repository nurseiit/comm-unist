.class public final Lorg/roboguice/shaded/goole/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final factorials:[J

.field static final halfPowersOf10:[J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    .line 169
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0x13

    .line 176
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lorg/roboguice/shaded/goole/common/math/LongMath;->powersOf10:[J

    .line 201
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->halfPowersOf10:[J

    const/16 v0, 0x15

    .line 618
    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    const/16 v0, 0x22

    .line 727
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->biggestBinomials:[I

    const/16 v0, 0x1f

    .line 736
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->biggestSimpleBinomials:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_3
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 12

    const-string v0, "n"

    .line 649
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    .line 650
    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "k (%s) > n (%s)"

    const/4 v4, 0x2

    .line 651
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_1

    sub-int p1, p0, p1

    :cond_1
    const-wide/16 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 661
    sget-object v2, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    array-length v2, v2

    if-ge p0, v2, :cond_2

    .line 662
    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    aget-wide v1, v0, p0

    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    aget-wide v3, v0, p1

    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    sub-int/2addr p0, p1

    aget-wide p0, v0, p0

    mul-long v3, v3, p0

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_0
    int-to-long p0, p0

    return-wide p0

    :pswitch_1
    return-wide v0

    .line 663
    :cond_2
    sget-object v2, Lorg/roboguice/shaded/goole/common/math/LongMath;->biggestBinomials:[I

    array-length v2, v2

    if-ge p1, v2, :cond_8

    sget-object v2, Lorg/roboguice/shaded/goole/common/math/LongMath;->biggestBinomials:[I

    aget v2, v2, p1

    if-le p0, v2, :cond_3

    goto :goto_4

    .line 665
    :cond_3
    sget-object v2, Lorg/roboguice/shaded/goole/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v2, v2

    if-ge p1, v2, :cond_5

    sget-object v2, Lorg/roboguice/shaded/goole/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v2, v2, p1

    if-gt p0, v2, :cond_5

    add-int/lit8 v0, p0, -0x1

    int-to-long v1, p0

    :goto_1
    if-gt v4, p1, :cond_4

    int-to-long v5, v0

    mul-long v1, v1, v5

    int-to-long v5, v4

    .line 670
    div-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-wide v1

    :cond_5
    int-to-long v2, p0

    .line 674
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v5}, Lorg/roboguice/shaded/goole/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v5

    add-int/lit8 p0, p0, -0x1

    move-wide v6, v0

    move-wide v10, v6

    move-wide v8, v2

    move v0, p0

    move p0, v5

    :goto_2
    if-gt v4, p1, :cond_7

    add-int/2addr p0, v5

    const/16 v1, 0x3f

    if-ge p0, v1, :cond_6

    int-to-long v1, v0

    mul-long v8, v8, v1

    int-to-long v1, v4

    mul-long v10, v10, v1

    goto :goto_3

    .line 697
    :cond_6
    invoke-static/range {v6 .. v11}, Lorg/roboguice/shaded/goole/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v1

    int-to-long v6, v0

    int-to-long v8, v4

    move p0, v5

    move-wide v10, v8

    move-wide v8, v6

    move-wide v6, v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 703
    :cond_7
    invoke-static/range {v6 .. v11}, Lorg/roboguice/shaded/goole/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_8
    :goto_4
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkedAdd(JJ)J
    .locals 7
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    add-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 p2, 0x0

    cmp-long v4, v2, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-long v5, p0, v0

    cmp-long p0, v5, p2

    if-ltz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    or-int p0, v4, v2

    .line 510
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .locals 8
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 534
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long v3, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    mul-long p0, p0, p2

    return-wide p0

    :cond_0
    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 549
    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    const-wide/16 v0, 0x0

    cmp-long v4, p0, v0

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, p2, v5

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v4, v5

    .line 550
    invoke-static {v4}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long v4, p0, p2

    cmp-long v6, p0, v0

    if-eqz v6, :cond_4

    .line 552
    div-long p0, v4, p0

    cmp-long v0, p0, p2

    if-nez v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v4
.end method

.method public static checkedPow(JI)J
    .locals 7
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "exponent"

    .line 564
    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-wide/16 v0, -0x2

    cmp-long v2, p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v3

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_7

    long-to-int p0, p0

    const-wide/16 v5, -0x1

    packed-switch p0, :pswitch_data_0

    .line 580
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0x3f

    if-ge p2, p0, :cond_2

    const/4 v0, 0x1

    .line 574
    :cond_2
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    shl-long p0, v3, p2

    return-wide p0

    :pswitch_1
    return-wide v3

    :pswitch_2
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    :goto_2
    return-wide v3

    :pswitch_3
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move-wide v3, v5

    :goto_3
    return-wide v3

    :pswitch_4
    const/16 p0, 0x40

    if-ge p2, p0, :cond_5

    const/4 v0, 0x1

    .line 577
    :cond_5
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_6

    shl-long p0, v3, p2

    goto :goto_4

    :cond_6
    shl-long p0, v5, p2

    :goto_4
    return-wide p0

    :cond_7
    :goto_5
    packed-switch p2, :pswitch_data_1

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_8

    .line 592
    invoke-static {v3, v4, p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    move-wide v3, v2

    goto :goto_6

    .line 589
    :pswitch_5
    invoke-static {v3, v4, p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide p0

    return-wide p0

    :pswitch_6
    return-wide v3

    :cond_8
    :goto_6
    shr-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_7

    const-wide v5, 0xb504f333L

    cmp-long v2, p0, v5

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 596
    :goto_7
    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long p0, p0, p0

    goto :goto_5

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 7
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 p2, 0x0

    cmp-long v4, v2, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-long v5, p0, v0

    cmp-long p0, v5, p2

    if-ltz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    or-int p0, v4, v2

    .line 522
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 10
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 348
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v4, p0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    xor-long v6, p0, p2

    const/16 p0, 0x3f

    shr-long p0, v6, p0

    long-to-int p0, p0

    const/4 p1, 0x1

    or-int/2addr p0, p1

    .line 365
    sget-object v6, Lorg/roboguice/shaded/goole/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    .line 395
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 384
    :pswitch_0
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 385
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long v8, p2, v4

    sub-long p2, v4, v8

    cmp-long v4, p2, v2

    if-nez v4, :cond_4

    .line 389
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    const-wide/16 v4, 0x1

    and-long v8, v0, v4

    cmp-long p4, v8, v2

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    and-int/2addr p1, p3

    or-int/2addr p1, p2

    goto :goto_4

    :cond_4
    cmp-long p4, p2, v2

    if-lez p4, :cond_6

    goto :goto_4

    :pswitch_1
    if-lez p0, :cond_6

    goto :goto_4

    :pswitch_2
    if-gez p0, :cond_6

    goto :goto_4

    :pswitch_3
    cmp-long p2, v4, v2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 367
    :goto_3
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_6
    :pswitch_4
    const/4 p1, 0x0

    :goto_4
    :pswitch_5
    if-eqz p1, :cond_7

    int-to-long p0, p0

    add-long p2, v0, p0

    goto :goto_5

    :cond_7
    move-wide p2, v0

    :goto_5
    return-wide p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static factorial(I)J
    .locals 3
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "n"

    .line 614
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 615
    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->factorials:[J

    aget-wide v1, v0, p0

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method

.method static fitsInInt(J)Z
    .locals 3

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static gcd(JJ)J
    .locals 8

    const-string v0, "a"

    .line 463
    invoke-static {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-string v0, "b"

    .line 464
    invoke-static {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide p2

    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-wide p0

    .line 476
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-long/2addr p0, v0

    .line 478
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr p2, v1

    :goto_0
    cmp-long v2, p0, p2

    if-eqz v2, :cond_2

    sub-long v2, p0, p2

    const/16 p0, 0x3f

    shr-long p0, v2, p0

    and-long v4, v2, p0

    sub-long p0, v2, v4

    sub-long v2, p0, v4

    add-long p0, p2, v4

    .line 497
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p2

    shr-long p2, v2, p2

    move-wide v6, p0

    move-wide p0, p2

    move-wide p2, v6

    goto :goto_0

    .line 499
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    sub-long v7, p0, v5

    and-long v5, p0, v7

    cmp-long p0, v5, v0

    if-nez p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    and-int p0, v2, v3

    return p0
.end method

.method static lessThanBranchFree(JJ)I
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    sub-long v0, p0, p2

    const-wide/16 p0, -0x1

    xor-long p2, v0, p0

    xor-long v0, p2, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 4
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "x"

    .line 128
    invoke-static {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 129
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->log10Floor(J)I

    move-result v0

    .line 130
    sget-object v1, Lorg/roboguice/shaded/goole/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    .line 131
    sget-object v1, Lorg/roboguice/shaded/goole/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    .line 147
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 145
    :pswitch_0
    sget-object p2, Lorg/roboguice/shaded/goole/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v1, p2, v0

    invoke-static {v1, v2, p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 140
    :pswitch_1
    invoke-static {v2, v3, p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :pswitch_2
    cmp-long p2, p0, v2

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 133
    :goto_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 4
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 160
    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 165
    sget-object v1, Lorg/roboguice/shaded/goole/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lorg/roboguice/shaded/goole/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 4

    const-string v0, "x"

    .line 86
    invoke-static {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 87
    sget-object v0, Lorg/roboguice/shaded/goole/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 110
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "impossible"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 103
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    const-wide v0, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v0, p2

    rsub-int/lit8 p2, p2, 0x3f

    .line 107
    invoke-static {v0, v1, p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    :pswitch_1
    const-wide/16 v0, 0x1

    sub-long v2, p0, v0

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x40

    return p0

    .line 89
    :pswitch_2
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result p2

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 93
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(JJ)J
    .locals 4

    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 p0, 0x1

    shr-long p0, v2, p0

    add-long p2, v0, p0

    return-wide p2
.end method

.method public static mod(JI)I
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    int-to-long v0, p2

    .line 421
    invoke-static {p0, p1, v0, v1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->mod(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static mod(JJ)J
    .locals 3
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 445
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Modulus must be positive"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_0
    rem-long/2addr p0, p2

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    add-long v0, p0, p2

    move-wide p0, v0

    :goto_0
    return-wide p0
.end method

.method static multiplyFraction(JJJ)J
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 713
    div-long/2addr p2, p4

    return-wide p2

    .line 715
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lorg/roboguice/shaded/goole/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 716
    div-long/2addr p0, v0

    .line 717
    div-long/2addr p4, v0

    .line 720
    div-long/2addr p2, p4

    mul-long p0, p0, p2

    return-wide p0
.end method

.method public static pow(JI)J
    .locals 6
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "exponent"

    .line 232
    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-wide/16 v0, -0x2

    cmp-long v2, v0, p0

    const-wide/16 v0, 0x1

    if-gtz v2, :cond_5

    const-wide/16 v2, 0x2

    cmp-long v4, p0, v2

    if-gtz v4, :cond_5

    long-to-int p0, p0

    const/16 p1, 0x40

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 250
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    if-ge p2, p1, :cond_0

    shl-long v2, v0, p2

    :cond_0
    return-wide v2

    :pswitch_1
    return-wide v0

    :pswitch_2
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    return-wide v0

    :pswitch_3
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :pswitch_4
    if-ge p2, p1, :cond_4

    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_3

    shl-long p0, v0, p2

    goto :goto_2

    :cond_3
    shl-long p0, v0, p2

    neg-long p0, p0

    :goto_2
    return-wide p0

    :cond_4
    return-wide v2

    :cond_5
    move-wide v2, p0

    move-wide p0, v0

    :goto_3
    packed-switch p2, :pswitch_data_1

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v0

    goto :goto_4

    :pswitch_5
    mul-long p0, p0, v2

    return-wide p0

    :pswitch_6
    return-wide p0

    :cond_6
    move-wide v4, v2

    :goto_4
    mul-long p0, p0, v4

    mul-long v2, v2, v2

    shr-int/lit8 p2, p2, 0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 8
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    const-string v0, "x"

    .line 276
    invoke-static {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 277
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-int p0, p0

    .line 278
    invoke-static {p0, p2}, Lorg/roboguice/shaded/goole/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    long-to-double v0, p0

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long v2, v0, v0

    .line 300
    sget-object v4, Lorg/roboguice/shaded/goole/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v4, p2

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p2, :pswitch_data_0

    .line 334
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    cmp-long p2, p0, v2

    if-gez p2, :cond_1

    const/4 v6, 0x1

    :cond_1
    int-to-long v2, v6

    sub-long v4, v0, v2

    mul-long v0, v4, v4

    add-long v2, v0, v4

    .line 332
    invoke-static {v2, v3, p0, p1}, Lorg/roboguice/shaded/goole/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    int-to-long p0, p0

    add-long v0, v4, p0

    return-wide v0

    :pswitch_1
    cmp-long p2, p0, v2

    if-lez p2, :cond_2

    add-long p0, v0, v4

    return-wide p0

    :cond_2
    return-wide v0

    :pswitch_2
    cmp-long p2, p0, v2

    if-gez p2, :cond_3

    sub-long p0, v0, v4

    return-wide p0

    :cond_3
    return-wide v0

    :pswitch_3
    cmp-long p2, v2, p0

    if-nez p2, :cond_4

    const/4 v6, 0x1

    .line 302
    :cond_4
    invoke-static {v6}, Lorg/roboguice/shaded/goole/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
