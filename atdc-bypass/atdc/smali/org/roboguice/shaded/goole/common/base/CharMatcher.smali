.class public abstract Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$BitSetMatcher;,
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;,
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;,
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;,
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$And;,
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;,
        Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field public static final ANY:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final ASCII:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final DIGIT:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field private static final DISTINCT_CHARS:I = 0x10000

.field public static final INVISIBLE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field private static final NINES:Ljava/lang/String;

.field public static final NONE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field public static final WHITESPACE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field private static final ZEROES:Ljava/lang/String; = "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->BREAKING_WHITESPACE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    const-string v0, "CharMatcher.ASCII"

    const/16 v1, 0x7f

    const/4 v2, 0x0

    .line 99
    invoke-static {v2, v1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->ASCII:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    const-string v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 138
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, 0x9

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->NINES:Ljava/lang/String;

    .line 149
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;

    const-string v3, "CharMatcher.DIGIT"

    const-string v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->NINES:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->DIGIT:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 156
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$2;

    const-string v3, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->JAVA_DIGIT:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 167
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$3;

    const-string v3, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->JAVA_LETTER:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 177
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$4;

    const-string v3, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 188
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$5;

    const-string v3, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->JAVA_UPPER_CASE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 199
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$6;

    const-string v3, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->JAVA_LOWER_CASE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    const/16 v0, 0x1f

    .line 210
    invoke-static {v2, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->inRange(CC)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->inRange(CC)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->or(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 220
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;

    const-string v1, "CharMatcher.INVISIBLE"

    const-string v2, "\u0000\u007f\u00ad\u0600\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, " \u00a0\u00ad\u0604\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->INVISIBLE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 245
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;

    const-string v1, "CharMatcher.SINGLE_WIDTH"

    const-string v2, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->SINGLE_WIDTH:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 250
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$7;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->ANY:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 326
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$8;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->NONE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 1361
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$15;

    const-string v1, "WHITESPACE"

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->WHITESPACE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 4

    .line 481
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 492
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 493
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.anyOf(\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    array-length v2, p0

    goto :goto_0

    .line 487
    :pswitch_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->isEither(CC)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 485
    :pswitch_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->is(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 483
    :pswitch_2
    sget-object p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->NONE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-object p0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 495
    aget-char v3, p0, v1

    .line 496
    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\")"

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$11;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$11;-><init>(Ljava/lang/String;[C)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1317
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1318
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p6, :cond_1

    .line 1320
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x1

    goto :goto_1

    .line 1324
    :cond_0
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1328
    :cond_2
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static forPredicate(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/base/CharMatcher;"
        }
    .end annotation

    .line 574
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    if-eqz v0, :cond_0

    .line 576
    check-cast p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-object p0

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.forPredicate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;

    invoke-direct {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;-><init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v1
.end method

.method public static inRange(CC)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 548
    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method static inRange(CCLjava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 557
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;

    invoke-direct {v0, p2, p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method public static is(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;

    invoke-direct {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static isEither(CC)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.anyOf(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$12;

    invoke-direct {v1, v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$12;-><init>(Ljava/lang/String;CC)V

    return-object v1
.end method

.method public static isNot(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;

    invoke-direct {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static isSmall(II)Z
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "SmallCharMatcher"
    .end annotation

    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x10

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 0

    .line 537
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method private static precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 869
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->isSmall(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/base/SmallCharMatcher;->from(Ljava/util/BitSet;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    goto :goto_0

    .line 865
    :pswitch_0
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    add-int/lit8 p2, p0, 0x1

    .line 866
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    int-to-char p1, p1

    .line 867
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->isEither(CC)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 863
    :pswitch_1
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->is(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 861
    :pswitch_2
    sget-object p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->NONE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-object p0

    .line 869
    :cond_0
    new-instance p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$BitSetMatcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher$1;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    const/4 v1, 0x6

    .line 228
    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, p0, 0xf

    .line 230
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v4

    shr-int/2addr p0, v3

    int-to-char p0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public and(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 675
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$And;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$And;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1270
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 1272
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1273
    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v2, p2, :cond_1

    add-int/lit8 v2, v3, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1274
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1279
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 1282
    invoke-direct/range {v0 .. v6}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1287
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1038
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1039
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 3

    .line 979
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 981
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1004
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1005
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndex(II)I

    :goto_0
    if-ge p2, v0, :cond_1

    .line 1007
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1025
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1026
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 945
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 946
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 931
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 965
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 621
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 718
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method

.method public precomputed()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 763
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Platform;->precomputeCharMatcher(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 6
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 790
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 791
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 792
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    const/high16 v3, 0x10000

    if-gt v2, v3, :cond_0

    .line 794
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 797
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->flip(II)V

    sub-int/2addr v3, v1

    const-string v1, ".negate()"

    .line 800
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v5, v1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    :goto_0
    new-instance v2, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;-><init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v2
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1056
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 1062
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 1069
    :goto_1
    array-length v3, p1

    if-ne v0, v3, :cond_1

    .line 1080
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    sub-int/2addr v0, v2

    invoke-direct {v1, p1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1072
    :cond_1
    aget-char v3, p1, v0

    invoke-virtual {p0, v3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int v3, v0, v2

    .line 1075
    aget-char v4, p1, v0

    aput-char v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1115
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1116
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 1120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1121
    aput-char p2, p1, v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 1122
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1123
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1124
    aput-char p2, p1, v0

    goto :goto_0

    .line 1127
    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1148
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1153
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    return-object p1

    .line 1162
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1163
    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1167
    :cond_3
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    .line 1170
    invoke-virtual {p0, p1, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1173
    invoke-virtual {v5, p1, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1093
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    const v0, 0xffff

    :goto_0
    if-ltz v0, :cond_1

    int-to-char v1, v0

    .line 911
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1347
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 9
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1298
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1302
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-le v1, v4, :cond_1

    .line 1303
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    if-ne v1, v0, :cond_2

    .line 1305
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    sub-int v0, v5, v4

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1193
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1198
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-le v0, v1, :cond_3

    .line 1203
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 1208
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1221
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1223
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1240
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1242
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 1243
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method withToString(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 0

    .line 773
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
