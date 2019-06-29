.class public final Lcom/google/android/gms/internal/zzbjs;
.super Ljava/lang/Object;


# instance fields
.field private final zzaLn:Lcom/google/android/gms/internal/ade;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ade;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ade;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjs;->zzaLn:Lcom/google/android/gms/internal/ade;

    return-void
.end method

.method public static zzj(II)Lcom/google/android/gms/internal/zzbjs;
    .locals 2

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjs;

    new-instance v1, Lcom/google/android/gms/internal/ade;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ade;-><init>()V

    iput p0, v1, Lcom/google/android/gms/internal/ade;->zzcqq:I

    iput p1, v1, Lcom/google/android/gms/internal/ade;->zzcrJ:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjs;-><init>(Lcom/google/android/gms/internal/ade;)V

    return-object v0
.end method


# virtual methods
.method public final zzsJ()Lcom/google/android/gms/internal/ade;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjs;->zzaLn:Lcom/google/android/gms/internal/ade;

    return-object v0
.end method
