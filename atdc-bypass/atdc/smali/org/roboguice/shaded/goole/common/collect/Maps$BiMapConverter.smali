.class final Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;
.super Lorg/roboguice/shaded/goole/common/base/Converter;
.source "Maps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BiMapConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/base/Converter<",
        "TA;TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 1319
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Converter;-><init>()V

    .line 1320
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    return-void
.end method

.method private static convert(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TX;TY;>;TX;)TY;"
        }
    .end annotation

    .line 1334
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "No non-null mapping present for input: %s"

    .line 1335
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->convert(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->convert(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1341
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;

    if-eqz v0, :cond_0

    .line 1342
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;

    .line 1343
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1350
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maps.asConverter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;->bimap:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
