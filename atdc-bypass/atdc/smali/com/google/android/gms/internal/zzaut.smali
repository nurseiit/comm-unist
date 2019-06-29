.class final Lcom/google/android/gms/internal/zzaut;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;


# instance fields
.field final synthetic zzasF:Lcom/google/android/gms/internal/zzaus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzb(Lcom/google/android/gms/internal/zzaus;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzal(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zze(Lcom/google/android/gms/internal/zzaus;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzauv;-><init>(Lcom/google/android/gms/internal/zzaut;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zznL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzb(Lcom/google/android/gms/internal/zzaus;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzal(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zze(Lcom/google/android/gms/internal/zzaus;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzauu;-><init>(Lcom/google/android/gms/internal/zzaut;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method
