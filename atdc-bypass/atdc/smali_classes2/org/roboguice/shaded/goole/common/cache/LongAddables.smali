.class final Lorg/roboguice/shaded/goole/common/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final SUPPLIER:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "Lorg/roboguice/shaded/goole/common/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    :try_start_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAdder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;-><init>()V

    .line 38
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$2;-><init>()V

    .line 52
    :goto_0
    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->SUPPLIER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;
    .locals 1

    .line 56
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->SUPPLIER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    return-object v0
.end method
