.class public final Lcom/google/android/gms/internal/zztu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzLE:Lcom/google/android/gms/internal/zzahz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzahz<",
            "Lcom/google/android/gms/ads/internal/js/zza;",
            ">;"
        }
    .end annotation
.end field

.field private static zzLF:Lcom/google/android/gms/internal/zzahz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzahz<",
            "Lcom/google/android/gms/ads/internal/js/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzLG:Lcom/google/android/gms/ads/internal/js/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztu;->zzLE:Lcom/google/android/gms/internal/zzahz;

    new-instance v0, Lcom/google/android/gms/internal/zztw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztu;->zzLF:Lcom/google/android/gms/internal/zzahz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/ads/internal/js/zzl;

    sget-object v4, Lcom/google/android/gms/internal/zztu;->zzLE:Lcom/google/android/gms/internal/zzahz;

    sget-object v5, Lcom/google/android/gms/internal/zztu;->zzLF:Lcom/google/android/gms/internal/zzahz;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/js/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;Lcom/google/android/gms/internal/zzahz;Lcom/google/android/gms/internal/zzahz;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/zztu;->zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

    return-void
.end method


# virtual methods
.method public final zzff()Lcom/google/android/gms/ads/internal/js/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztu;->zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

    return-object v0
.end method
