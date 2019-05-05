.class public final Lcom/google/android/gms/internal/zzaor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanh;


# instance fields
.field public zzado:Ljava/lang/String;

.field public zzaiI:D

.field public zzaiJ:I

.field public zzaiK:I

.field public zzaiL:I

.field public zzaiM:I

.field public zzaiN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaor;->zzaiI:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaor;->zzaiJ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaor;->zzaiK:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaor;->zzaiL:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaor;->zzaiM:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaor;->zzaiN:Ljava/util/Map;

    return-void
.end method
