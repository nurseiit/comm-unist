.class Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "**>;)V"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 261
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 262
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
