.class final Lcom/google/android/gms/internal/zzavi;
.super Lcom/google/android/gms/internal/zzavm;


# instance fields
.field private synthetic zzauX:Lcom/google/android/gms/internal/zzave;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzave;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavi;->zzauX:Lcom/google/android/gms/internal/zzave;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzave;Lcom/google/android/gms/internal/zzavf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzavi;-><init>(Lcom/google/android/gms/internal/zzave;)V

    return-void
.end method


# virtual methods
.method public final zzb(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavi;->zzauX:Lcom/google/android/gms/internal/zzave;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzave;->zza(Lcom/google/android/gms/internal/zzave;[Ljava/lang/Object;)V

    return-void
.end method
