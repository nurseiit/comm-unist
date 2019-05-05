.class public final Lcom/google/android/gms/internal/abf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaKz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final zzcnD:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "[B>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/abf;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/abf;->zzaKz:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/internal/abf;->zzcnD:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/abf;->mContext:Landroid/content/Context;

    const-string v1, "frc"

    iget-object v2, p0, Lcom/google/android/gms/internal/abf;->zzaKz:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/im;

    invoke-direct {v4}, Lcom/google/android/gms/internal/im;-><init>()V

    iget-wide v5, p0, Lcom/google/android/gms/internal/abf;->zzcnD:J

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/in;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/google/android/gms/internal/im;J)V

    return-void
.end method
