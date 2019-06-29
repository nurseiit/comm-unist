.class final Lcom/google/android/gms/internal/cg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/google/android/gms/common/api/Status;

.field private zzbKC:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "TT;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/cg;->mData:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/cg;->zzbKC:J

    return-void
.end method


# virtual methods
.method public final zzCO()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cg;->zzbKC:J

    return-wide v0
.end method

.method public final zzJ(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public final zzP(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->mData:Ljava/lang/Object;

    return-void
.end method

.method public final zzak(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/cg;->zzbKC:J

    return-void
.end method
