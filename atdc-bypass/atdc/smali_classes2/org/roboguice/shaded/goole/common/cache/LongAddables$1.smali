.class final Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Supplier<",
        "Lorg/roboguice/shaded/goole/common/cache/LongAddable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;->get()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/roboguice/shaded/goole/common/cache/LongAddable;
    .locals 1

    .line 41
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAdder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;-><init>()V

    return-object v0
.end method
