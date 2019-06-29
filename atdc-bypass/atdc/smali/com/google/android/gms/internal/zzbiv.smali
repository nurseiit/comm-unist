.class final Lcom/google/android/gms/internal/zzbiv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaKU:Lcom/google/android/gms/awareness/fence/zza;

.field private final zzaKV:Lcom/google/android/gms/internal/zzbjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/internal/zzbjd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/awareness/fence/zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiv;->zzaKU:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbjd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiv;->zzaKV:Lcom/google/android/gms/internal/zzbjd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
