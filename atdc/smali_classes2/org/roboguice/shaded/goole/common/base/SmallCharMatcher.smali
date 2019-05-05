.class final Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "no precomputation is done in GWT"
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p5}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->table:[C

    .line 42
    iput-wide p2, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->filter:J

    .line 43
    iput-boolean p4, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->containsZero:Z

    return-void
.end method

.method private checkFilter(I)Z
    .locals 6

    .line 62
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x1

    and-long v4, v0, v2

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static chooseTableSize(I)I
    .locals 6
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 11
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    .line 97
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v3, v0, [C

    .line 98
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 99
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const-wide/16 v4, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    or-long v9, v4, v7

    .line 102
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->smear(I)I

    move-result v2

    and-int/2addr v2, v0

    .line 105
    :goto_1
    aget-char v4, v3, v2

    if-nez v4, :cond_0

    int-to-char v4, v1

    .line 106
    aput-char v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    .line 99
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move-wide v4, v9

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    goto :goto_1

    .line 113
    :cond_1
    new-instance p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object p0
.end method

.method static smear(I)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p0, p0, v0

    const/16 v0, 0xf

    .line 58
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int p0, p0, v0

    return p0
.end method


# virtual methods
.method public matches(C)Z
    .locals 6

    if-nez p1, :cond_0

    .line 119
    iget-boolean p1, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->containsZero:Z

    return p1

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->table:[C

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 125
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->smear(I)I

    move-result v3

    and-int/2addr v3, v0

    move v4, v3

    .line 129
    :cond_2
    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->table:[C

    aget-char v5, v5, v4

    if-nez v5, :cond_3

    return v1

    .line 132
    :cond_3
    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->table:[C

    aget-char v5, v5, v4

    if-ne v5, p1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v0

    if-ne v4, v3, :cond_2

    return v1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 4
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 146
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->containsZero:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->table:[C

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-char v3, v0, v1

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
