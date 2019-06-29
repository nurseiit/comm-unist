.class public Lorg/roboguice/shaded/goole/common/collect/ForwardingSortedMap$StandardKeySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$SortedKeySet;
.source "ForwardingSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ForwardingSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$SortedKeySet<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingSortedMap;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ForwardingSortedMap;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingSortedMap$StandardKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingSortedMap;

    .line 106
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-void
.end method
