.class final Lcom/google/android/gms/internal/zzcle;
.super Lcom/google/android/gms/internal/zzclf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzclf<",
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwO:Lcom/google/android/gms/internal/zzcnw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclc;Lcom/google/android/gms/internal/zzcnw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcle;->zzbwO:Lcom/google/android/gms/internal/zzcnw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzckn;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcle;->zzbwO:Lcom/google/android/gms/internal/zzcnw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnw;->zzzF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method
