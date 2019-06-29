.class final Lcom/google/android/gms/internal/zzbzh;
.super Lcom/google/android/gms/internal/zzbxe;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/fitness/result/SessionStopResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/fitness/result/SessionStopResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbzh;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbzh;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/SessionStopResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbzh;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method
