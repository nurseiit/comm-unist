.class public final Lcom/google/android/gms/internal/vt;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZf:Lcom/google/android/gms/internal/qr;

.field private final zzbZj:Lcom/google/android/gms/internal/vq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vt;->zzbZf:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    return-void
.end method

.method public static zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vt;

    sget-object v1, Lcom/google/android/gms/internal/vq;->zzcgZ:Lcom/google/android/gms/internal/vq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/vt;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/vt;

    iget-object v2, p0, Lcom/google/android/gms/internal/vt;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v3, p1, Lcom/google/android/gms/internal/vt;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    iget-object p1, p1, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/vq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vq;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->isDefault()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFq()Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZf:Lcom/google/android/gms/internal/qr;

    return-object v0
.end method

.method public final zzIm()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    return-object v0
.end method

.method public final zzIq()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIq()Z

    move-result v0

    return v0
.end method

.method public final zzIu()Lcom/google/android/gms/internal/vq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vt;->zzbZj:Lcom/google/android/gms/internal/vq;

    return-object v0
.end method
