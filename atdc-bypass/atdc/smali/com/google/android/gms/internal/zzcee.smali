.class final Lcom/google/android/gms/internal/zzcee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbot:J

.field private synthetic zzbou:Lcom/google/android/gms/internal/zzcec;

.field private synthetic zztD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcec;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcee;->zzbou:Lcom/google/android/gms/internal/zzcec;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcee;->zztD:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcee;->zzbot:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcee;->zzbou:Lcom/google/android/gms/internal/zzcec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcee;->zztD:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcee;->zzbot:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcec;->zzb(Lcom/google/android/gms/internal/zzcec;Ljava/lang/String;J)V

    return-void
.end method
