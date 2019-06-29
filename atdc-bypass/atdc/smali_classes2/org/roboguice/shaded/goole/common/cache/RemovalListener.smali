.class public interface abstract Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
.super Ljava/lang/Object;
.source "RemovalListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public abstract onRemoval(Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalNotification<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method
