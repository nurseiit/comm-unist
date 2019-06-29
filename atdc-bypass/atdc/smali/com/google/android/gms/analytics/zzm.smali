.class final Lcom/google/android/gms/analytics/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaej:Lcom/google/android/gms/analytics/zzi;

.field private synthetic zzaek:Lcom/google/android/gms/analytics/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzl;Lcom/google/android/gms/analytics/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzm;->zzaek:Lcom/google/android/gms/analytics/zzl;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzm;->zzaej:Lcom/google/android/gms/analytics/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzm;->zzaej:Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->zzjw()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzm;->zzaej:Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Lcom/google/android/gms/analytics/zzi;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzm;->zzaek:Lcom/google/android/gms/analytics/zzl;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzl;->zza(Lcom/google/android/gms/analytics/zzl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzm;->zzaek:Lcom/google/android/gms/analytics/zzl;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzm;->zzaej:Lcom/google/android/gms/analytics/zzi;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zza(Lcom/google/android/gms/analytics/zzl;Lcom/google/android/gms/analytics/zzi;)V

    return-void
.end method
