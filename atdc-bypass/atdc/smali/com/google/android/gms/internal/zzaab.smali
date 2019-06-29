.class public final Lcom/google/android/gms/internal/zzaab;
.super Lcom/google/android/gms/internal/zzzy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajp;Lcom/google/android/gms/internal/zzzw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzajp<",
            "Lcom/google/android/gms/internal/zzaae;",
            ">;",
            "Lcom/google/android/gms/internal/zzzw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzzy;-><init>(Lcom/google/android/gms/internal/zzajp;Lcom/google/android/gms/internal/zzzw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaab;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzgA()V
    .locals 0

    return-void
.end method

.method public final zzgB()Lcom/google/android/gms/internal/zzaam;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzmb;

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzBX:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmb;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaab;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzabl;->zzgF()Lcom/google/android/gms/internal/zzabl;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzabm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzabm;

    move-result-object v0

    return-object v0
.end method
