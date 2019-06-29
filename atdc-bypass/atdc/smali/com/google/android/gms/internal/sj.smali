.class final Lcom/google/android/gms/internal/sj;
.super Lcom/google/android/gms/internal/wu;


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzceB:Lcom/google/android/gms/internal/si;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/si;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sj;->zzceB:Lcom/google/android/gms/internal/si;

    iput-object p2, p0, Lcom/google/android/gms/internal/sj;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/wu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->zzceB:Lcom/google/android/gms/internal/si;

    iget-object v1, p0, Lcom/google/android/gms/internal/sj;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/si;->zzh(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
