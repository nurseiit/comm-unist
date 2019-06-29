.class public final Lcom/google/android/gms/internal/zzadz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzMz:Lcom/google/android/gms/internal/zzut;

.field private final zzWU:Lcom/google/android/gms/internal/zzadu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzadt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadz;->zzMz:Lcom/google/android/gms/internal/zzut;

    new-instance p1, Lcom/google/android/gms/internal/zzadu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzadu;-><init>(Lcom/google/android/gms/internal/zzadt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadz;->zzWU:Lcom/google/android/gms/internal/zzadu;

    return-void
.end method


# virtual methods
.method public final zzgW()Lcom/google/android/gms/internal/zzut;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadz;->zzMz:Lcom/google/android/gms/internal/zzut;

    return-object v0
.end method

.method public final zzgX()Lcom/google/android/gms/internal/zzadu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadz;->zzWU:Lcom/google/android/gms/internal/zzadu;

    return-object v0
.end method
