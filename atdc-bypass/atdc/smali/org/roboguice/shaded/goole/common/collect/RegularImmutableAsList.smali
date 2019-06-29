.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.source "RegularImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "+TE;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    .line 36
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    return-object v0
.end method

.method delegateList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "+TE;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method
