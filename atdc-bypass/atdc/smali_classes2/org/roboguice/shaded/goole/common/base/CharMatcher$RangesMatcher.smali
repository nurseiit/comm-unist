.class Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .locals 4

    .line 106
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 108
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 109
    array-length p1, p2

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    const/4 p1, 0x0

    .line 110
    :goto_1
    array-length v0, p2

    if-ge p1, v0, :cond_4

    .line 111
    aget-char v0, p2, p1

    aget-char v3, p3, p1

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v0, p1, 0x1

    .line 112
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 113
    aget-char p1, p3, p1

    aget-char v3, p2, v0

    if-ge p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 125
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v0, v2, v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
