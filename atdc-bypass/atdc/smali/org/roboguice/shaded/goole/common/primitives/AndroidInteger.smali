.class final Lorg/roboguice/shaded/goole/common/primitives/AndroidInteger;
.super Ljava/lang/Object;
.source "AndroidInteger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/16 v0, 0xa

    .line 34
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 42
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Invalid radix %s, min radix is %s"

    .line 43
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x24

    if-gt p1, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Invalid radix %s, max radix is %s"

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v4, v5, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    return-object v3

    .line 51
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    if-ne v2, v0, :cond_4

    return-object v3

    :cond_4
    const/4 v1, 0x1

    .line 55
    :cond_5
    invoke-static {p0, v1, p1, v4}, Lorg/roboguice/shaded/goole/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/high16 v0, -0x80000000

    .line 61
    div-int v1, v0, p2

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge p1, v2, :cond_3

    add-int/lit8 v5, p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    return-object v4

    :cond_0
    if-le v1, v3, :cond_1

    return-object v4

    :cond_1
    mul-int v6, v3, p2

    sub-int p1, v6, p1

    if-le p1, v3, :cond_2

    return-object v4

    :cond_2
    move v3, p1

    move p1, v5

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    neg-int v3, v3

    if-gez v3, :cond_4

    return-object v4

    :cond_4
    const p0, 0x7fffffff

    if-gt v3, p0, :cond_6

    if-ge v3, v0, :cond_5

    goto :goto_1

    .line 87
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object v4
.end method
