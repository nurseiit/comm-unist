.class final Lorg/roboguice/shaded/goole/common/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter;->on(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lorg/roboguice/shaded/goole/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$1;->val$separatorMatcher:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Splitter$1;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
    .locals 1

    .line 149
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Splitter$1$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Splitter$1$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter$1;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
