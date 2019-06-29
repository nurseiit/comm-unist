.class final Lcom/google/android/gms/internal/rh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pw;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rh;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgO(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v1, "Auth token changed, triggering auth token refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->zzc(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/on;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/on;->zzgH(Ljava/lang/String;)V

    return-void
.end method
