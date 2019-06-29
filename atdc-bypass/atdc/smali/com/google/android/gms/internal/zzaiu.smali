.class public final Lcom/google/android/gms/internal/zzaiu;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzaax:Lcom/google/android/gms/internal/zzaiu;


# instance fields
.field zzJP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzif()Lcom/google/android/gms/internal/zzaiu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaiu;->zzaax:Lcom/google/android/gms/internal/zzaiu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaiu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiu;->zzaax:Lcom/google/android/gms/internal/zzaiu;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzaiu;->zzaax:Lcom/google/android/gms/internal/zzaiu;

    return-object v0
.end method
