.class public final Lcom/google/android/gms/internal/ab;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final zzamr:I

.field private final zzbIJ:Lcom/google/android/gms/internal/zzcwa;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzcwa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ab;->zzamr:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ab;->zzbIJ:Lcom/google/android/gms/internal/zzcwa;

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcwa;",
            "[",
            "Lcom/google/android/gms/internal/dp<",
            "*>;)",
            "Lcom/google/android/gms/internal/dp<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    aget-object p2, p2, v2

    check-cast p2, Lcom/google/android/gms/internal/eb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/cb;->zzO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcxn;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->zzbIJ:Lcom/google/android/gms/internal/zzcwa;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzcxn;->zza(Lcom/google/android/gms/internal/zzcwa;)V

    new-array v0, v2, [Lcom/google/android/gms/internal/dp;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzcxn;->zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/ab;->zzamr:I

    if-nez p2, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to convert Custom Pixie to instruction"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzcvk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object p1
.end method
