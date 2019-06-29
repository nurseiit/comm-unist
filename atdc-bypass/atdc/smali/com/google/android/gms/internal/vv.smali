.class public final Lcom/google/android/gms/internal/vv;
.super Ljava/lang/Object;


# instance fields
.field public final zzchp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vj;",
            ">;"
        }
    .end annotation
.end field

.field public final zzchq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vj;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vv;->zzchp:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/vv;->zzchq:Ljava/util/List;

    return-void
.end method
