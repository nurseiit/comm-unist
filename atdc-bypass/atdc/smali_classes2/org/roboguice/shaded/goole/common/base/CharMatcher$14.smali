.class final Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;->forPredicate(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0

    .line 579
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 579
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$14;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
