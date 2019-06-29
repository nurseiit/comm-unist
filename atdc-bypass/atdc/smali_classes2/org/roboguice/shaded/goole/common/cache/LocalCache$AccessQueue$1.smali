.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;)V
    .locals 0

    .line 3729
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3739
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3751
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getNextInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3743
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3755
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0

    return-void
.end method

.method public setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3748
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3760
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method
