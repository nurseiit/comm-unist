.class final Lcom/google/android/gms/internal/vc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ve;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ve<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcgB:Lcom/google/android/gms/internal/ve;

.field private synthetic zzcgC:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vb;Lcom/google/android/gms/internal/ve;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/vc;->zzcgB:Lcom/google/android/gms/internal/ve;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/vc;->zzcgC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/vb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->zzcgB:Lcom/google/android/gms/internal/ve;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vc;->zzcgC:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/vb;->zza(Lcom/google/android/gms/internal/ve;ZZ)V

    return-void
.end method
