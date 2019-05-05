.class final Lcom/google/android/gms/internal/zzza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakf;


# instance fields
.field private synthetic zzSc:Lcom/google/android/gms/internal/zzyy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzSc:Lcom/google/android/gms/internal/zzyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Z)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzza;->zzSc:Lcom/google/android/gms/internal/zzyy;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzyx;->zza(Lcom/google/android/gms/internal/zzyx;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbb;->zzbm()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzza;->zzSc:Lcom/google/android/gms/internal/zzyy;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzyy;->zzSa:Lcom/google/android/gms/internal/zzajg;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method
