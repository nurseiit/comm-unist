.class final Lcom/google/android/gms/internal/zzcwf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJa:Lcom/google/android/gms/internal/zzcwd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwf;->zzbJa:Lcom/google/android/gms/internal/zzcwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwf;->zzbJa:Lcom/google/android/gms/internal/zzcwd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwd;->zza(Lcom/google/android/gms/internal/zzcwd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwf;->zzbJa:Lcom/google/android/gms/internal/zzcwd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwd;->zze(Lcom/google/android/gms/internal/zzcwd;)Lcom/google/android/gms/internal/zzcvb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcvb;->dispatch()V

    return-void
.end method
