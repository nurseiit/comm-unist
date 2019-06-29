.class public final Lcom/google/android/gms/ads/internal/zzv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field public final zztm:Lcom/google/android/gms/internal/zzsg;

.field public final zztn:Lcom/google/android/gms/ads/internal/overlay/zzz;

.field public final zzto:Lcom/google/android/gms/internal/zzaeu;

.field public final zztp:Lcom/google/android/gms/internal/zzij;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzsg;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/zzaeu;Lcom/google/android/gms/internal/zzij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zztm:Lcom/google/android/gms/internal/zzsg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzv;->zztn:Lcom/google/android/gms/ads/internal/overlay/zzz;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzto:Lcom/google/android/gms/internal/zzaeu;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzv;->zztp:Lcom/google/android/gms/internal/zzij;

    return-void
.end method

.method public static zzaQ()Lcom/google/android/gms/ads/internal/zzv;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/zzv;

    new-instance v1, Lcom/google/android/gms/internal/zzql;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzql;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzad;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/zzad;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzaek;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzaek;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzik;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzik;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Lcom/google/android/gms/internal/zzsg;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/zzaeu;Lcom/google/android/gms/internal/zzij;)V

    return-object v0
.end method
