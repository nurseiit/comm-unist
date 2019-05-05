.class final Lcom/google/android/gms/internal/sf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/sm;


# instance fields
.field private synthetic zzcev:Lcom/google/android/gms/internal/si;

.field private synthetic zzcew:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/si;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sf;->zzcev:Lcom/google/android/gms/internal/si;

    iput-object p2, p0, Lcom/google/android/gms/internal/sf;->zzcew:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcev:Lcom/google/android/gms/internal/si;

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->zzcew:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/xm;Ljava/util/Map;)Lcom/google/android/gms/internal/xm;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/si;->zzh(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
