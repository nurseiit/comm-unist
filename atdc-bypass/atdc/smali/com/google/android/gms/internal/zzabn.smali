.class final Lcom/google/android/gms/internal/zzabn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzUA:Lcom/google/android/gms/internal/zzabu;

.field private synthetic zzUB:Lcom/google/android/gms/internal/zzmz;

.field final synthetic zzUC:Ljava/lang/String;

.field private synthetic zztA:Lcom/google/android/gms/ads/internal/js/zzl;

.field final synthetic zztd:Lcom/google/android/gms/internal/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabn;->zztA:Lcom/google/android/gms/ads/internal/js/zzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabn;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabn;->zztd:Lcom/google/android/gms/internal/zznb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabn;->zzUB:Lcom/google/android/gms/internal/zzmz;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzabn;->zzUC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabn;->zztA:Lcom/google/android/gms/ads/internal/js/zzl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzl;->zzb(Lcom/google/android/gms/internal/zzcu;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzabu;->zzUN:Lcom/google/android/gms/ads/internal/js/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zztd:Lcom/google/android/gms/internal/zznb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabn;->zzUB:Lcom/google/android/gms/internal/zzmz;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "rwc"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zztd:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzabo;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzabo;-><init>(Lcom/google/android/gms/internal/zzabn;Lcom/google/android/gms/internal/zzmz;)V

    new-instance v1, Lcom/google/android/gms/internal/zzabp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzabp;-><init>(Lcom/google/android/gms/internal/zzabn;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-void
.end method
