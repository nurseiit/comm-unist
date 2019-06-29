.class public Lcom/google/android/gms/analytics/zzk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/zzk;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaea:Lcom/google/android/gms/analytics/zzl;

.field protected final zzaeb:Lcom/google/android/gms/analytics/zzi;

.field private final zzaec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/zzl;Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzaea:Lcom/google/android/gms/analytics/zzl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzaec:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/analytics/zzi;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/analytics/zzi;-><init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/common/util/zze;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzi;->zzjy()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzaeb:Lcom/google/android/gms/analytics/zzi;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/analytics/zzi;)V
    .locals 0

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/analytics/zzi;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/analytics/zzk;->zzaec:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzjj()Lcom/google/android/gms/analytics/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zzaeb:Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->zzjp()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzk;->zzd(Lcom/google/android/gms/analytics/zzi;)V

    return-object v0
.end method

.method protected final zzjz()Lcom/google/android/gms/analytics/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zzaea:Lcom/google/android/gms/analytics/zzl;

    return-object v0
.end method
