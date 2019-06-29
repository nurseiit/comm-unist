.class final Lcom/google/android/gms/internal/hv;
.super Ljava/lang/Object;


# static fields
.field private static final zzbUx:Lcom/google/android/gms/internal/ia;

.field private static final zzbUy:Lcom/google/android/gms/internal/ia;

.field private static final zzbUz:Lcom/google/android/gms/internal/ia;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ia;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/google/android/gms/internal/ia;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/hv;->zzbUx:Lcom/google/android/gms/internal/ia;

    new-instance v0, Lcom/google/android/gms/internal/ia;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v3, v2, v2}, Lcom/google/android/gms/internal/ia;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/hv;->zzbUy:Lcom/google/android/gms/internal/ia;

    new-instance v0, Lcom/google/android/gms/internal/ia;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/google/android/gms/internal/ia;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/hv;->zzbUz:Lcom/google/android/gms/internal/ia;

    return-void
.end method

.method static synthetic zzEj()Lcom/google/android/gms/internal/ia;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hv;->zzbUx:Lcom/google/android/gms/internal/ia;

    return-object v0
.end method

.method static synthetic zzEk()Lcom/google/android/gms/internal/ia;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hv;->zzbUy:Lcom/google/android/gms/internal/ia;

    return-object v0
.end method

.method static synthetic zzEl()Lcom/google/android/gms/internal/ia;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hv;->zzbUz:Lcom/google/android/gms/internal/ia;

    return-object v0
.end method
