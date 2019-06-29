.class final Lcom/google/android/gms/internal/zzcld;
.super Lcom/google/android/gms/internal/zzclf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzclf<",
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwV:Lcom/google/android/gms/internal/zzcoc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclc;Lcom/google/android/gms/internal/zzcoc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcld;->zzbwV:Lcom/google/android/gms/internal/zzcoc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzckn;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcld;->zzbwV:Lcom/google/android/gms/internal/zzcoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcoc;->zzzK()Lcom/google/android/gms/internal/zzcoo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcoq;->zza(Lcom/google/android/gms/internal/zzcoo;)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "NearbyConnectionsClient"

    const-string v0, "Failed to convert incoming ParcelablePayload %d to Payload."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcld;->zzbwV:Lcom/google/android/gms/internal/zzcoc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcoc;->zzzK()Lcom/google/android/gms/internal/zzcoo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcoo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcld;->zzbwV:Lcom/google/android/gms/internal/zzcoc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcoc;->zzzF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload;->asBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcld;->zzbwV:Lcom/google/android/gms/internal/zzcoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcoc;->zzzL()Z

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    :cond_1
    return-void
.end method
