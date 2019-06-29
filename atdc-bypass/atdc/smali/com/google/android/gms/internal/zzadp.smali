.class public final Lcom/google/android/gms/internal/zzadp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzLK:Ljava/lang/String;

.field public final zzML:J

.field private zzWI:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzadr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadr;->zza(Lcom/google/android/gms/internal/zzadr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadp;->zzWI:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadr;->zzb(Lcom/google/android/gms/internal/zzadr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadp;->zzLK:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadr;->zzc(Lcom/google/android/gms/internal/zzadr;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzadp;->errorCode:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadr;->zzd(Lcom/google/android/gms/internal/zzadr;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzadp;->zzML:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzadr;Lcom/google/android/gms/internal/zzadq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzadp;-><init>(Lcom/google/android/gms/internal/zzadr;)V

    return-void
.end method
