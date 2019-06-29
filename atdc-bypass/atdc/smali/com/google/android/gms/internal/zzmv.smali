.class public abstract Lcom/google/android/gms/internal/zzmv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field public static final zzGS:Lcom/google/android/gms/internal/zzmv;
    .annotation runtime Lcom/google/android/gms/internal/zzzn;
    .end annotation
.end field

.field public static final zzGT:Lcom/google/android/gms/internal/zzmv;
    .annotation runtime Lcom/google/android/gms/internal/zzzn;
    .end annotation
.end field

.field public static final zzGU:Lcom/google/android/gms/internal/zzmv;
    .annotation runtime Lcom/google/android/gms/internal/zzzn;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzmw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmv;->zzGS:Lcom/google/android/gms/internal/zzmv;

    new-instance v0, Lcom/google/android/gms/internal/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmv;->zzGT:Lcom/google/android/gms/internal/zzmv;

    new-instance v0, Lcom/google/android/gms/internal/zzmy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmv;->zzGU:Lcom/google/android/gms/internal/zzmv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
