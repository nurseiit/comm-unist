.class final Lcom/google/android/gms/internal/zzayb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzayi:Lcom/google/android/gms/internal/zzaxx;

.field private synthetic zzayk:Lcom/google/android/gms/internal/zzayf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxz;Lcom/google/android/gms/internal/zzaxx;Lcom/google/android/gms/internal/zzayf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayb;->zzayi:Lcom/google/android/gms/internal/zzaxx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayb;->zzayk:Lcom/google/android/gms/internal/zzayf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayb;->zzayi:Lcom/google/android/gms/internal/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayb;->zzayk:Lcom/google/android/gms/internal/zzayf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaxx;->zza(Lcom/google/android/gms/internal/zzaxx;Lcom/google/android/gms/internal/zzayf;)V

    return-void
.end method
