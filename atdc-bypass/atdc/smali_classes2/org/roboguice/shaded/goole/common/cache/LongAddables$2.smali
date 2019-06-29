.class final Lorg/roboguice/shaded/goole/common/cache/LongAddables$2;
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$2;->get()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/roboguice/shaded/goole/common/cache/LongAddable;
    .locals 2

    .line 48
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;-><init>(Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;)V

    return-object v0
.end method
