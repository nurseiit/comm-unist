.class public Lcom/google/android/gms/internal/wr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xm;


# static fields
.field public static zzchR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/wp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcgs:Lcom/google/android/gms/internal/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nh<",
            "Lcom/google/android/gms/internal/wp;",
            "Lcom/google/android/gms/internal/xm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzchS:Lcom/google/android/gms/internal/xm;

.field private zzchT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ws;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wr;->zzchR:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchT:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/wr;->zzchR:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/android/gms/internal/ni;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/nh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/xm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nh<",
            "Lcom/google/android/gms/internal/wp;",
            "Lcom/google/android/gms/internal/xm;",
            ">;",
            "Lcom/google/android/gms/internal/xm;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create empty ChildrenNode with priority!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    iput-object p1, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    return-void
.end method

.method private static zzb(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzc(Ljava/lang/StringBuilder;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "{ }"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/wr;->zzb(Ljava/lang/StringBuilder;I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/wp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/wr;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wr;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/wr;->zzc(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xm;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/wr;->zzb(Ljava/lang/StringBuilder;I)V

    const-string v0, ".priority="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/wr;->zzb(Ljava/lang/StringBuilder;I)V

    const-string p2, "}"

    goto :goto_0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/xm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wr;->zzg(Lcom/google/android/gms/internal/xm;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/wr;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/wr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wr;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wr;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nh;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/nh;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/wp;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/xm;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    return v0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Something went wrong internally."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->size()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wr;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/wp;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/xm;

    invoke-interface {v7, p1}, Lcom/google/android/gms/internal/xm;->getValue(Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_2

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-eq v7, v9, :cond_3

    :cond_2
    invoke-static {v8}, Lcom/google/android/gms/internal/zd;->zzha(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz v5, :cond_6

    mul-int/lit8 v4, v4, 0x2

    if-ge v6, v4, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-gt v3, v6, :cond_5

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object p1

    :cond_6
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, ".priority"

    iget-object v1, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/xm;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wr;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/xl;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wp;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/wv;

    iget-object v1, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wv;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/wr;->zzc(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFz()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/wv;

    iget-object v1, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nh;->zzFz()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wv;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public zzIP()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchT:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/xo;->zzcix:Lcom/google/android/gms/internal/xo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wr;->zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zd;->zzgY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchT:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchT:Ljava/lang/String;

    return-object v0
.end method

.method public zzIQ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzIR()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzIS()Lcom/google/android/gms/internal/wp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->zzFx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wp;

    return-object v0
.end method

.method public final zzIT()Lcom/google/android/gms/internal/wp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->zzFy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wp;

    return-object v0
.end method

.method public zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wr;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/xo;->zzcix:Lcom/google/android/gms/internal/xo;

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hashes on children nodes only supported for V1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "priority:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    sget-object v1, Lcom/google/android/gms/internal/xo;->zzcix:Lcom/google/android/gms/internal/xo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xm;->zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wr;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/xl;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/xm;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/xr;->zzJl()Lcom/google/android/gms/internal/xr;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_6
    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/xm;->zzIP()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/wu;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wr;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    new-instance v0, Lcom/google/android/gms/internal/wt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/wt;-><init>(Lcom/google/android/gms/internal/wr;Lcom/google/android/gms/internal/wu;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/nh;->zza(Lcom/google/android/gms/internal/ns;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/nh;->zza(Lcom/google/android/gms/internal/ns;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/wr;->zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->zzX(Ljava/lang/Object;)Lcom/google/android/gms/internal/nh;

    move-result-object v0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/nh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nh;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/wr;

    iget-object p2, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/wr;-><init>(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/xm;)V

    return-object p1
.end method

.method public zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/wr;

    iget-object v1, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/wr;-><init>(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/xm;)V

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/xm;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wr;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/xm;->zzciw:Lcom/google/android/gms/internal/wr;

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public zzk(Lcom/google/android/gms/internal/wp;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wr;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzl(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/wp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->zzY(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/wp;

    return-object p1
.end method

.method public zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/wr;->zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wr;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/xm;->zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/wr;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method

.method public zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/wr;->zzchS:Lcom/google/android/gms/internal/xm;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wr;->zzcgs:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/xm;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p1

    return-object p1
.end method
