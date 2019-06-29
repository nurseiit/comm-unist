.class final Lcom/google/android/gms/internal/zzcwx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJA:Lcom/google/android/gms/internal/zzcww;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcww;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwx;->zzbJA:Lcom/google/android/gms/internal/zzcww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "App\'s UI deactivated. Dispatching hits."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwx;->zzbJA:Lcom/google/android/gms/internal/zzcww;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcww;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zzb(Lcom/google/android/gms/internal/zzcwn;)Lcom/google/android/gms/internal/zzcxi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcxi;->dispatch()V

    return-void
.end method
