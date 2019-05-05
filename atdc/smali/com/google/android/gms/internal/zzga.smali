.class final Lcom/google/android/gms/internal/zzga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzxw:Lcom/google/android/gms/internal/zzfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzga;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzga;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfu;->zza(Lcom/google/android/gms/internal/zzfu;)Lcom/google/android/gms/internal/zzfi;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfi;->zzb(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzga;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfu;->zza(Lcom/google/android/gms/internal/zzfu;)Lcom/google/android/gms/internal/zzfi;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzga;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzfi;->zza(Lcom/google/android/gms/internal/zzgd;Ljava/util/Map;)V

    return-void
.end method
