.class public final Lcom/google/android/gms/internal/abe;
.super Ljava/lang/Object;


# instance fields
.field private final zzcnB:I

.field private final zzcnC:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/abe;->zzcnB:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/abe;->zzcnC:J

    return-void
.end method


# virtual methods
.method public final zzKC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/abe;->zzcnB:I

    return v0
.end method

.method public final zzKD()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/abe;->zzcnC:J

    return-wide v0
.end method
