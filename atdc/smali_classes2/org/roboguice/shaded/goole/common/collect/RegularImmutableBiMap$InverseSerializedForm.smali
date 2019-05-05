.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "RegularImmutableBiMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InverseSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$InverseSerializedForm;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$InverseSerializedForm;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method
