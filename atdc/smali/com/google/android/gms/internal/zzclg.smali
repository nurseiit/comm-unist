.class final Lcom/google/android/gms/internal/zzclg;
.super Lcom/google/android/gms/internal/zzcng;


# instance fields
.field private final zzbwW:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcng;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbdw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclg;->zzbwW:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcoc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclg;->zzbwW:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzclh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzclh;-><init>(Lcom/google/android/gms/internal/zzclg;Lcom/google/android/gms/internal/zzcoc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoe;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclg;->zzbwW:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzcli;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzclg;Lcom/google/android/gms/internal/zzcoe;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method
