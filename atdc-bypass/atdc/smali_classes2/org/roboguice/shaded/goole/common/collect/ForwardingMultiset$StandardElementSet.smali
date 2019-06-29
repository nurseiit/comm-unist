.class public Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset$StandardElementSet;
.super Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;
.source "ForwardingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method multiset()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;

    return-object v0
.end method
