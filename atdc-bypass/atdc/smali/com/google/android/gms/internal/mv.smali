.class final Lcom/google/android/gms/internal/mv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbWj:Lcom/google/android/gms/internal/aae;

.field private synthetic zzbZx:Lcom/google/android/gms/internal/mu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mu;Lcom/google/android/gms/internal/aae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mv;->zzbZx:Lcom/google/android/gms/internal/mu;

    iput-object p2, p0, Lcom/google/android/gms/internal/mv;->zzbWj:Lcom/google/android/gms/internal/aae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mv;->zzbZx:Lcom/google/android/gms/internal/mu;

    iget-object v0, v0, Lcom/google/android/gms/internal/mu;->zzbZv:Lcom/google/android/gms/internal/pw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mv;->zzbWj:Lcom/google/android/gms/internal/aae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aae;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pw;->zzgO(Ljava/lang/String;)V

    return-void
.end method
