.class final Lcom/google/android/gms/internal/zzake;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzabJ:Lcom/google/android/gms/internal/zzakb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzake;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzake;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzake;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziu()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfL()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzake;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakb;)Lcom/google/android/gms/internal/zzakh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzake;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakb;)Lcom/google/android/gms/internal/zzakh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakh;->zzaT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzake;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakb;Lcom/google/android/gms/internal/zzakh;)Lcom/google/android/gms/internal/zzakh;

    :cond_1
    return-void
.end method
