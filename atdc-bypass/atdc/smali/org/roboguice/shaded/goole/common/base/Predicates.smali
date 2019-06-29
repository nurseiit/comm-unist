.class public final Lorg/roboguice/shaded/goole/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$AssignableFromPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$InstanceOfPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$NotPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    .line 330
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Joiner;->on(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates;->COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800()Lorg/roboguice/shaded/goole/common/base/Joiner;
    .locals 1

    .line 48
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates;->COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    return-object v0
.end method

.method public static alwaysFalse()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 67
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysTrue()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 59
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static and(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->asList(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static varargs and([Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method private static asList(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 612
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/base/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static assignableFrom(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Class.isAssignableFrom"
    .end annotation

    .line 214
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$AssignableFromPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$AssignableFromPredicate;-><init>(Ljava/lang/Class;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static compose(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TB;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "TA;+TB;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$CompositionPredicate;-><init>(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static contains(Ljava/util/regex/Pattern;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.regex.Pattern"
    .end annotation

    .line 269
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static containsPattern(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.regex.Pattern"
    .end annotation

    .line 256
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ContainsPatternPredicate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 622
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static varargs defensiveCopy([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 616
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Predicates;->isNull()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 231
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .line 201
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InstanceOfPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 76
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->IS_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Predicates$NotPredicate;-><init>(Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static notNull()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 85
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->NOT_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static or(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->asList(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static varargs or([Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method
