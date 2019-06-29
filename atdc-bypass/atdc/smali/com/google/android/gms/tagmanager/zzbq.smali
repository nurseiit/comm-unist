.class final Lcom/google/android/gms/tagmanager/zzbq;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzbl;)V
    .locals 13

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbl;->zzkL:[Lcom/google/android/gms/internal/zzbk;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzbk;->key:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v3, "GaExperimentRandom: No key"

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/internal/zzbk;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Number;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_2
    iget-wide v6, v3, Lcom/google/android/gms/internal/zzbk;->zzkF:J

    iget-wide v8, v3, Lcom/google/android/gms/internal/zzbk;->zzkG:J

    iget-boolean v10, v3, Lcom/google/android/gms/internal/zzbk;->zzkH:Z

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v6

    if-ltz v12, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v5, v10, v8

    if-lez v5, :cond_3

    :cond_2
    cmp-long v4, v6, v8

    if-gtz v4, :cond_7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-long v10, v8, v6

    long-to-double v8, v10

    mul-double v4, v4, v8

    long-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_3
    iget-object v5, v3, Lcom/google/android/gms/internal/zzbk;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/tagmanager/DataLayer;->zzfc(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/android/gms/internal/zzbk;->key:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/gms/tagmanager/DataLayer;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzbk;->zzkI:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_6

    const-string v5, "gtm"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "gtm"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "lifetime"

    aput-object v7, v6, v1

    iget-wide v7, v3, Lcom/google/android/gms/internal/zzbk;->zzkI:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string v5, "gtm"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/util/Map;

    const-string v6, "lifetime"

    iget-wide v7, v3, Lcom/google/android/gms/internal/zzbk;->zzkI:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string v3, "GaExperimentRandom: gtm not a map"

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-virtual {p0, v4}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_4

    :cond_7
    const-string v3, "GaExperimentRandom: random range invalid"

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzbp;)V
    .locals 6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbp;->zzlz:Lcom/google/android/gms/internal/zzbl;

    if-nez v0, :cond_0

    const-string p0, "supplemental missing experimentSupplemental"

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbp;->zzlz:Lcom/google/android/gms/internal/zzbl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbl;->zzkK:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzgk;->zzb(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/tagmanager/DataLayer;->zzfc(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbp;->zzlz:Lcom/google/android/gms/internal/zzbl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbl;->zzkJ:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzgk;->zzg(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "value: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a map value, ignored."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    check-cast v3, Ljava/util/Map;

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/zzbp;->zzlz:Lcom/google/android/gms/internal/zzbl;

    invoke-static {p0, p1}, Lcom/google/android/gms/tagmanager/zzbq;->zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzbl;)V

    return-void
.end method
