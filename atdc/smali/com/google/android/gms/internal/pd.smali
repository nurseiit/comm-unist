.class final Lcom/google/android/gms/internal/pd;
.super Ljava/lang/Object;


# instance fields
.field private zzcbB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbC:Z

.field private zzcbv:Ljava/lang/String;

.field private zzcbw:Lcom/google/android/gms/internal/pf;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pd;->zzcbv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/pd;->zzcbB:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/pd;->zzcbw:Lcom/google/android/gms/internal/pf;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/oq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pd;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pd;)Lcom/google/android/gms/internal/pf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/pd;->zzcbw:Lcom/google/android/gms/internal/pf;

    return-object p0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->zzcbv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzGl()Lcom/google/android/gms/internal/pf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->zzcbw:Lcom/google/android/gms/internal/pf;

    return-object v0
.end method

.method public final zzGp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->zzcbB:Ljava/util/Map;

    return-object v0
.end method

.method public final zzGq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pd;->zzcbC:Z

    return-void
.end method

.method public final zzGr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pd;->zzcbC:Z

    return v0
.end method
