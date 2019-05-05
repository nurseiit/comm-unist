.class public final Lcom/google/android/gms/internal/zzctl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final zzbCM:Lcom/google/android/gms/internal/zzctl;


# instance fields
.field private final zzalh:Z

.field private final zzali:Ljava/lang/String;

.field private final zzama:Z

.field private final zzamb:Ljava/lang/String;

.field private final zzbCN:Z

.field private final zzbCO:Z

.field private final zzbCP:Ljava/lang/Long;

.field private final zzbCQ:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzctm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzctm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzctl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzctl;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/google/android/gms/internal/zzctl;->zzbCM:Lcom/google/android/gms/internal/zzctl;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzctl;->zzbCN:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzctl;->zzalh:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzctl;->zzali:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzctl;->zzama:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzctl;->zzbCO:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzctl;->zzamb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzctl;->zzbCP:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzctl;->zzbCQ:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctl;->zzali:Ljava/lang/String;

    return-object v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctl;->zzalh:Z

    return v0
.end method

.method public final zzAr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctl;->zzbCN:Z

    return v0
.end method

.method public final zzAs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctl;->zzama:Z

    return v0
.end method

.method public final zzAt()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctl;->zzamb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzAu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctl;->zzbCO:Z

    return v0
.end method

.method public final zzAv()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctl;->zzbCP:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzAw()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctl;->zzbCQ:Ljava/lang/Long;

    return-object v0
.end method
