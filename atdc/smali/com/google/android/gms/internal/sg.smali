.class final Lcom/google/android/gms/internal/sg;
.super Lcom/google/android/gms/internal/wu;


# instance fields
.field private synthetic zzcew:Ljava/util/Map;

.field private synthetic zzcex:Lcom/google/android/gms/internal/sh;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/sh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sg;->zzcew:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/sg;->zzcex:Lcom/google/android/gms/internal/sh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/wu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sg;->zzcew:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/xm;Ljava/util/Map;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/sg;->zzcex:Lcom/google/android/gms/internal/sh;

    new-instance v1, Lcom/google/android/gms/internal/qr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/sh;->zzg(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    :cond_0
    return-void
.end method
