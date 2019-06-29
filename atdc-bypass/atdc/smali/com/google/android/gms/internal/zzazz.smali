.class final Lcom/google/android/gms/internal/zzazz;
.super Lcom/google/android/gms/internal/zzbay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbay<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/zzbab;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzazM:Lcom/google/android/gms/internal/zzazu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazu;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzazn;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzbay;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazz;->zzazM:Lcom/google/android/gms/internal/zzazu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbay;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbab;

    new-instance v0, Lcom/google/android/gms/internal/zzbaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbaa;-><init>(Lcom/google/android/gms/internal/zzazz;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzazz;->zzazM:Lcom/google/android/gms/internal/zzazu;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazu:Lcom/google/android/gms/internal/zzazr;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazB:Lcom/google/android/gms/internal/aej;

    iget-object v2, v2, Lcom/google/android/gms/internal/aej;->zzctX:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazB:Lcom/google/android/gms/internal/aej;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzazu;->zzazu:Lcom/google/android/gms/internal/zzazr;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzazr;->zzoU()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/aej;->zzctX:[B

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazL:Lcom/google/android/gms/internal/zzazr;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazB:Lcom/google/android/gms/internal/aej;

    iget-object v2, v2, Lcom/google/android/gms/internal/aej;->zzcue:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazB:Lcom/google/android/gms/internal/aej;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzazu;->zzazL:Lcom/google/android/gms/internal/zzazr;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzazr;->zzoU()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/aej;->zzcue:[B

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazB:Lcom/google/android/gms/internal/aej;

    invoke-static {v2}, Lcom/google/android/gms/internal/adp;->zzc(Lcom/google/android/gms/internal/adp;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzazu;->zzazF:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbab;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbaf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazz;->zzazM:Lcom/google/android/gms/internal/zzazu;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbaf;->zza(Lcom/google/android/gms/internal/zzbad;Lcom/google/android/gms/internal/zzazu;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazz;->zzr(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
