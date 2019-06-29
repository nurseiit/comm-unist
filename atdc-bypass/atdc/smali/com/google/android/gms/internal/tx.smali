.class public abstract Lcom/google/android/gms/internal/tx;
.super Ljava/lang/Object;


# instance fields
.field protected final zzbZf:Lcom/google/android/gms/internal/qr;

.field private zzcfG:Lcom/google/android/gms/internal/ty;

.field protected final zzcfH:Lcom/google/android/gms/internal/tz;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ty;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tx;->zzcfG:Lcom/google/android/gms/internal/ty;

    iput-object p2, p0, Lcom/google/android/gms/internal/tx;->zzcfH:Lcom/google/android/gms/internal/tz;

    iput-object p3, p0, Lcom/google/android/gms/internal/tx;->zzbZf:Lcom/google/android/gms/internal/qr;

    return-void
.end method


# virtual methods
.method public final zzFq()Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tx;->zzbZf:Lcom/google/android/gms/internal/qr;

    return-object v0
.end method

.method public final zzHE()Lcom/google/android/gms/internal/tz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tx;->zzcfH:Lcom/google/android/gms/internal/tz;

    return-object v0
.end method

.method public final zzHF()Lcom/google/android/gms/internal/ty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tx;->zzcfG:Lcom/google/android/gms/internal/ty;

    return-object v0
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;
.end method
