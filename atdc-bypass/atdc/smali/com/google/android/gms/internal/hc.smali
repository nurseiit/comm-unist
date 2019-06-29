.class public final Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Ljava/lang/String;[Lcom/google/android/gms/internal/hg;)I
    .locals 7

    array-length v0, p1

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/16 v3, 0xe

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    if-ne v3, v1, :cond_2

    iget v5, v4, Lcom/google/android/gms/internal/hg;->type:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    iget v5, v4, Lcom/google/android/gms/internal/hg;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, v4, Lcom/google/android/gms/internal/hg;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v5, v1, :cond_3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget v0, v4, Lcom/google/android/gms/internal/hg;->type:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected TypedValue type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for key "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget v3, v4, Lcom/google/android/gms/internal/hg;->type:I

    goto :goto_2

    :cond_2
    iget v5, v4, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v5, v3, :cond_3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget v0, v4, Lcom/google/android/gms/internal/hg;->type:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ArrayList elements should all be the same type, but ArrayList with key "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " contains items of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return v3
.end method

.method public static zza(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/hd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/he;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/hc;->zza(Lcom/google/android/gms/wearable/DataMap;Ljava/util/List;)[Lcom/google/android/gms/internal/hf;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/he;->zzbTH:[Lcom/google/android/gms/internal/hf;

    new-instance p0, Lcom/google/android/gms/internal/hd;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/hd;-><init>(Lcom/google/android/gms/internal/he;Ljava/util/List;)V

    return-object p0
.end method

.method private static zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/hg;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/hg;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/hg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hg;-><init>()V

    const/16 v1, 0xe

    if-nez p1, :cond_0

    iput v1, v0, Lcom/google/android/gms/internal/hg;->type:I

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/hh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hh;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    instance-of v2, p1, Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    iput v3, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->zzbTN:Ljava/lang/String;

    return-object v0

    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    const/4 v4, 0x6

    if-eqz v2, :cond_2

    iput v4, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/hh;->zzbTR:I

    return-object v0

    :cond_2
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    const/4 p0, 0x5

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/hh;->zzbTQ:J

    return-object v0

    :cond_3
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    const/4 p0, 0x3

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/hh;->zzbTO:D

    return-object v0

    :cond_4
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    const/4 p0, 0x4

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/hh;->zzbTP:F

    return-object v0

    :cond_5
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    const/16 p0, 0x8

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hh;->zzbTT:Z

    return-object v0

    :cond_6
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_7

    const/4 p0, 0x7

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/hh;->zzbTS:I

    return-object v0

    :cond_7
    instance-of v2, p1, [B

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    iput v5, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->zzbTM:[B

    return-object v0

    :cond_8
    instance-of v2, p1, [Ljava/lang/String;

    if-eqz v2, :cond_9

    const/16 p0, 0xb

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->zzbTW:[Ljava/lang/String;

    return-object v0

    :cond_9
    instance-of v2, p1, [J

    if-eqz v2, :cond_a

    const/16 p0, 0xc

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->zzbTX:[J

    return-object v0

    :cond_a
    instance-of v2, p1, [F

    if-eqz v2, :cond_b

    const/16 p0, 0xf

    iput p0, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->zzbTY:[F

    return-object v0

    :cond_b
    instance-of v2, p1, Lcom/google/android/gms/wearable/Asset;

    if-eqz v2, :cond_c

    const/16 v1, 0xd

    iput v1, v0, Lcom/google/android/gms/internal/hg;->type:I

    iget-object v1, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v5

    int-to-long p0, p0

    iput-wide p0, v1, Lcom/google/android/gms/internal/hh;->zzbTZ:J

    return-object v0

    :cond_c
    instance-of v2, p1, Lcom/google/android/gms/wearable/DataMap;

    const/4 v6, 0x0

    const/16 v7, 0x9

    if-eqz v2, :cond_e

    iput v7, v0, Lcom/google/android/gms/internal/hg;->type:I

    check-cast p1, Lcom/google/android/gms/wearable/DataMap;

    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/hf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hf;-><init>()V

    aput-object v4, v2, v6

    aget-object v4, v2, v6

    iput-object v3, v4, Lcom/google/android/gms/internal/hf;->name:Ljava/lang/String;

    aget-object v4, v2, v6

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/hg;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/hf;->zzbTJ:Lcom/google/android/gms/internal/hg;

    add-int/2addr v6, v5

    goto :goto_0

    :cond_d
    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    iput-object v2, p0, Lcom/google/android/gms/internal/hh;->zzbTU:[Lcom/google/android/gms/internal/hf;

    return-object v0

    :cond_e
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    iput v2, v0, Lcom/google/android/gms/internal/hg;->type:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/hg;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v9, v5

    const/16 v5, 0xe

    :goto_1
    if-ge v6, v8, :cond_12

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/hg;

    move-result-object v11

    iget v12, v11, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v12, v1, :cond_f

    iget v12, v11, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v12, v3, :cond_f

    iget v12, v11, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v12, v4, :cond_f

    iget v12, v11, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v12, v7, :cond_f

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    if-ne v5, v1, :cond_10

    iget v12, v11, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v12, v1, :cond_10

    iget v5, v11, Lcom/google/android/gms/internal/hg;->type:I

    move-object v9, v10

    goto :goto_2

    :cond_10
    iget v12, v11, Lcom/google/android/gms/internal/hg;->type:I

    if-eq v12, v5, :cond_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ArrayList elements must all be of the sameclass, but this one contains a "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and a "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_2
    aput-object v11, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_12
    iget-object p0, v0, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    iput-object v2, p0, Lcom/google/android/gms/internal/hh;->zzbTV:[Lcom/google/android/gms/internal/hg;

    return-object v0

    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "newFieldValueFromValue: unexpected value "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_14
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/hd;)Lcom/google/android/gms/wearable/DataMap;
    .locals 7

    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hd;->zzbTF:Lcom/google/android/gms/internal/he;

    iget-object v1, v1, Lcom/google/android/gms/internal/he;->zzbTH:[Lcom/google/android/gms/internal/hf;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/hd;->zzbTG:Ljava/util/List;

    iget-object v6, v4, Lcom/google/android/gms/internal/hf;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/hf;->zzbTJ:Lcom/google/android/gms/internal/hg;

    invoke-static {v5, v0, v6, v4}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/hg;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/internal/hh;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Lcom/google/android/gms/internal/hh;",
            "I)",
            "Ljava/util/ArrayList;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/hh;->zzbTV:[Lcom/google/android/gms/internal/hg;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/hh;->zzbTV:[Lcom/google/android/gms/internal/hg;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    iget v5, v4, Lcom/google/android/gms/internal/hg;->type:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    const/16 v5, 0x9

    if-ne p2, v5, :cond_2

    new-instance v5, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    iget-object v4, v4, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    iget-object v4, v4, Lcom/google/android/gms/internal/hh;->zzbTU:[Lcom/google/android/gms/internal/hf;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    iget-object v9, v8, Lcom/google/android/gms/internal/hf;->name:Ljava/lang/String;

    iget-object v8, v8, Lcom/google/android/gms/internal/hf;->zzbTJ:Lcom/google/android/gms/internal/hg;

    invoke-static {p0, v5, v9, v8}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/hg;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    iget-object v4, v4, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    iget-object v4, v4, Lcom/google/android/gms/internal/hh;->zzbTN:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    if-ne p2, v5, :cond_4

    iget-object v4, v4, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    iget v4, v4, Lcom/google/android/gms/internal/hh;->zzbTR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected typeOfArrayList: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/hg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Lcom/google/android/gms/wearable/DataMap;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hg;",
            ")V"
        }
    .end annotation

    iget v0, p3, Lcom/google/android/gms/internal/hg;->type:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p3, p3, Lcom/google/android/gms/internal/hg;->zzbTL:Lcom/google/android/gms/internal/hh;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p3, Lcom/google/android/gms/internal/hh;->zzbTM:[B

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_1
    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    iget-object p0, p3, Lcom/google/android/gms/internal/hh;->zzbTW:[Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    iget-object p0, p3, Lcom/google/android/gms/internal/hh;->zzbTX:[J

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :cond_3
    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    iget-object p0, p3, Lcom/google/android/gms/internal/hh;->zzbTY:[F

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object p0, p3, Lcom/google/android/gms/internal/hh;->zzbTN:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    iget-wide v0, p3, Lcom/google/android/gms/internal/hh;->zzbTO:D

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    iget p0, p3, Lcom/google/android/gms/internal/hh;->zzbTP:F

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_7
    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    iget-wide v0, p3, Lcom/google/android/gms/internal/hh;->zzbTQ:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_8
    const/4 v3, 0x6

    if-ne v0, v3, :cond_9

    iget p0, p3, Lcom/google/android/gms/internal/hh;->zzbTR:I

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_9
    const/4 v4, 0x7

    if-ne v0, v4, :cond_a

    iget p0, p3, Lcom/google/android/gms/internal/hh;->zzbTS:I

    int-to-byte p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V

    return-void

    :cond_a
    const/16 v4, 0x8

    if-ne v0, v4, :cond_b

    iget-boolean p0, p3, Lcom/google/android/gms/internal/hh;->zzbTT:Z

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_b
    const/16 v4, 0xd

    if-ne v0, v4, :cond_e

    if-nez p0, :cond_d

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "populateBundle: unexpected type for: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    iget-wide v0, p3, Lcom/google/android/gms/internal/hh;->zzbTZ:J

    long-to-int p3, v0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    return-void

    :cond_e
    const/16 v4, 0x9

    if-ne v0, v4, :cond_10

    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    iget-object p3, p3, Lcom/google/android/gms/internal/hh;->zzbTU:[Lcom/google/android/gms/internal/hf;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_f

    aget-object v3, p3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/hf;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/hf;->zzbTJ:Lcom/google/android/gms/internal/hg;

    invoke-static {p0, v0, v4, v3}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/hg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_f
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    return-void

    :cond_10
    const/16 v5, 0xa

    if-ne v0, v5, :cond_15

    iget-object v0, p3, Lcom/google/android/gms/internal/hh;->zzbTV:[Lcom/google/android/gms/internal/hg;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hc;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/hg;)I

    move-result v0

    invoke-static {p0, p3, v0}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Lcom/google/android/gms/internal/hh;I)Ljava/util/ArrayList;

    move-result-object p0

    if-ne v0, v1, :cond_11

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_11
    if-ne v0, v4, :cond_12

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_12
    if-ne v0, v2, :cond_13

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_13
    if-ne v0, v3, :cond_14

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const/16 p1, 0x27

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected typeOfArrayList: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const/16 p1, 0x2b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "populateBundle: unexpected type "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/wearable/DataMap;Ljava/util/List;)[Lcom/google/android/gms/internal/hf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataMap;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)[",
            "Lcom/google/android/gms/internal/hf;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/hf;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/hf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/hf;-><init>()V

    aput-object v5, v1, v2

    aget-object v5, v1, v2

    iput-object v3, v5, Lcom/google/android/gms/internal/hf;->name:Ljava/lang/String;

    aget-object v3, v1, v2

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/hc;->zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/hg;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/hf;->zzbTJ:Lcom/google/android/gms/internal/hg;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
