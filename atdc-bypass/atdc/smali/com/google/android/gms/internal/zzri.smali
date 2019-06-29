.class final Lcom/google/android/gms/internal/zzri;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzJt:Ljava/lang/String;

.field private final zzJu:Ljava/net/URL;

.field private final zzJv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzrh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzJw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzrh;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzri;->zzJt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzri;->zzJu:Ljava/net/URL;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzri;->zzJv:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzri;->zzJw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzeA()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzrh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzJv:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final zzeB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzJw:Ljava/lang/String;

    return-object v0
.end method

.method public final zzey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzJt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzez()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzri;->zzJu:Ljava/net/URL;

    return-object v0
.end method
