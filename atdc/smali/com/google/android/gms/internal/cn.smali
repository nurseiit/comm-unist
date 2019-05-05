.class public final Lcom/google/android/gms/internal/cn;
.super Ljava/lang/Object;


# instance fields
.field private final zzbII:Lcom/google/android/gms/internal/db;

.field private final zzbKI:[B

.field private final zzbKJ:J

.field private final zzbKK:Lcom/google/android/gms/internal/bz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bz;[BLcom/google/android/gms/internal/db;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cn;->zzbKK:Lcom/google/android/gms/internal/bz;

    iput-object p2, p0, Lcom/google/android/gms/internal/cn;->zzbKI:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/cn;->zzbII:Lcom/google/android/gms/internal/db;

    iput-wide p4, p0, Lcom/google/android/gms/internal/cn;->zzbKJ:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/db;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/bz;[BLcom/google/android/gms/internal/db;J)V

    return-void
.end method


# virtual methods
.method public final zzCT()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->zzbKI:[B

    return-object v0
.end method

.method public final zzCU()Lcom/google/android/gms/internal/bz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->zzbKK:Lcom/google/android/gms/internal/bz;

    return-object v0
.end method

.method public final zzCV()Lcom/google/android/gms/internal/db;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->zzbII:Lcom/google/android/gms/internal/db;

    return-object v0
.end method

.method public final zzCW()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cn;->zzbKJ:J

    return-wide v0
.end method
