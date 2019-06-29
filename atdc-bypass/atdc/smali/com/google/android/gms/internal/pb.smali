.class final Lcom/google/android/gms/internal/pb;
.super Ljava/lang/Object;


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzcbt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcbv:Ljava/lang/String;

.field private final zzcbw:Lcom/google/android/gms/internal/pf;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pb;->zzcbv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/pb;->zzcbt:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/pb;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/pb;->zzcbw:Lcom/google/android/gms/internal/pf;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/oq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/pb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pb;)Lcom/google/android/gms/internal/pf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/pb;->zzcbw:Lcom/google/android/gms/internal/pf;

    return-object p0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pb;->zzcbv:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pb;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzGk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pb;->zzcbt:Ljava/util/List;

    return-object v0
.end method

.method public final zzGl()Lcom/google/android/gms/internal/pf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pb;->zzcbw:Lcom/google/android/gms/internal/pf;

    return-object v0
.end method
