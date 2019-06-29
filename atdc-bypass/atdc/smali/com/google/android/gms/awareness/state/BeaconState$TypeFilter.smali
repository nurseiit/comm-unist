.class public abstract Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/awareness/state/BeaconState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TypeFilter"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public static with(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzasv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzasv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static with(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzasv;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzasv;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method
