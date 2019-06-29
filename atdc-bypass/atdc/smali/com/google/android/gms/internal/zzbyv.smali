.class final Lcom/google/android/gms/internal/zzbyv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbyx;


# instance fields
.field private synthetic zzaVY:Lcom/google/android/gms/fitness/request/OnDataPointListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbys;Lcom/google/android/gms/fitness/request/OnDataPointListener;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbyv;->zzaVY:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zztS()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/fitness/request/zzam;->zztV()Lcom/google/android/gms/fitness/request/zzam;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyv;->zzaVY:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/zzam;->zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/fitness/request/zzak;

    return-void
.end method
