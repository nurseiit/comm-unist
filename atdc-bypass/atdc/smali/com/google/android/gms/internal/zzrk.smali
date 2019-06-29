.class final Lcom/google/android/gms/internal/zzrk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzHD:Ljava/lang/String;

.field private final zzJA:I

.field private final zzJB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzrh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzJt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzrh;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrk;->zzJt:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzrk;->zzJA:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrk;->zzJB:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrk;->zzHD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrk;->zzHD:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrk;->zzJA:I

    return v0
.end method

.method public final zzeD()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/internal/zzrh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrk;->zzJB:Ljava/util/List;

    return-object v0
.end method

.method public final zzey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrk;->zzJt:Ljava/lang/String;

    return-object v0
.end method
