.class public abstract Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardEntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StandardEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardEntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardEntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;

    return-object v0
.end method
