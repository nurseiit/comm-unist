.class final Lcom/google/android/gms/internal/na;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zzc;


# instance fields
.field private synthetic zzbZC:Lcom/google/android/gms/internal/on;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/on;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/na;->zzbZC:Lcom/google/android/gms/internal/on;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzac(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/na;->zzbZC:Lcom/google/android/gms/internal/on;

    const-string v0, "app_in_background"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/on;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/na;->zzbZC:Lcom/google/android/gms/internal/on;

    const-string v0, "app_in_background"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/on;->resume(Ljava/lang/String;)V

    return-void
.end method
