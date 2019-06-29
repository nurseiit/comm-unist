.class final Lcom/google/android/gms/internal/zzama;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzaly;

.field private synthetic zzafE:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaly;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzama;->zzafD:Lcom/google/android/gms/internal/zzaly;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzama;->zzafE:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzama;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    return-void
.end method
