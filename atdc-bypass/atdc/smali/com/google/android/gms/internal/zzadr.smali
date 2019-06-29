.class public final Lcom/google/android/gms/internal/zzadr;
.super Ljava/lang/Object;


# instance fields
.field private mErrorCode:I

.field private zzMs:Ljava/lang/String;

.field private zzWJ:Ljava/lang/String;

.field private zzWK:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzadr;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzadr;->zzMs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzadr;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzadr;->zzWJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzadr;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzadr;->mErrorCode:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzadr;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadr;->zzWK:J

    return-wide v0
.end method


# virtual methods
.method public final zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadr;->zzMs:Ljava/lang/String;

    return-object p0
.end method

.method public final zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadr;->zzWJ:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/zzadr;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzadr;->zzWK:J

    return-object p0
.end method

.method public final zzgU()Lcom/google/android/gms/internal/zzadp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzadp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzadp;-><init>(Lcom/google/android/gms/internal/zzadr;Lcom/google/android/gms/internal/zzadq;)V

    return-object v0
.end method

.method public final zzw(I)Lcom/google/android/gms/internal/zzadr;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzadr;->mErrorCode:I

    return-object p0
.end method
