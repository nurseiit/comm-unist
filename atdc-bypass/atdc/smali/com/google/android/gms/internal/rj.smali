.class final Lcom/google/android/gms/internal/rj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vd<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/rv;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdN:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rj;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput p2, p0, Lcom/google/android/gms/internal/rj;->zzcdN:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/vb;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget v1, p0, Lcom/google/android/gms/internal/rj;->zzcdN:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/vb;I)V

    const/4 p1, 0x0

    return p1
.end method
