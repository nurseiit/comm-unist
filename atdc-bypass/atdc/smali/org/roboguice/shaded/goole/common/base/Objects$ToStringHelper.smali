.class public final Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lorg/roboguice/shaded/goole/common/base/Objects$1;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->holderHead:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    .line 200
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->holderHead:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->holderTail:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 207
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/Objects$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 406
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lorg/roboguice/shaded/goole/common/base/Objects$1;)V

    .line 407
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->holderTail:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->next:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->holderTail:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 412
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder()Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 413
    iput-object p1, v0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 418
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder()Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 419
    iput-object p2, v0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 420
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 249
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;D)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 259
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;F)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 269
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 279
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 289
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 229
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 239
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(C)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(D)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 335
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(F)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 347
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 371
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 299
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Z)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 0

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public omitNullValues()Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    .locals 1

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 386
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->omitNullValues:Z

    const-string v1, ""

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->holderHead:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    iget-object v3, v3, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->next:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    .line 392
    iget-object v4, v3, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 393
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 396
    iget-object v4, v3, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, v3, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :cond_1
    iget-object v4, v3, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    iget-object v3, v3, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;->next:Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 402
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
