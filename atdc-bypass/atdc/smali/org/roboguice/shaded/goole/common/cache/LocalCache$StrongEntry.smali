.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .param p3    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1070
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 1085
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->valueReference:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    .line 1071
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    .line 1072
    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->hash:I

    .line 1073
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->next:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .line 1099
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->next:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->valueReference:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1094
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;->valueReference:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-void
.end method
