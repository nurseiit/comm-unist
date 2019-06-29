.class public final Lcom/google/android/gms/internal/zzbrp;
.super Ljava/lang/Object;


# static fields
.field public static final zzaQI:Lcom/google/android/gms/internal/zzbrq;

.field public static final zzaQJ:Lcom/google/android/gms/internal/zzbrr;

.field public static final zzaQK:Lcom/google/android/gms/internal/zzbrt;

.field public static final zzaQL:Lcom/google/android/gms/internal/zzbrs;

.field public static final zzaQM:Lcom/google/android/gms/internal/zzbrv;

.field public static final zzaQN:Lcom/google/android/gms/internal/zzbru;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    const-string v1, "created"

    const v2, 0x3e8fa0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQI:Lcom/google/android/gms/internal/zzbrq;

    new-instance v0, Lcom/google/android/gms/internal/zzbrr;

    const-string v1, "lastOpenedTime"

    const v3, 0x419ce0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQJ:Lcom/google/android/gms/internal/zzbrr;

    new-instance v0, Lcom/google/android/gms/internal/zzbrt;

    const-string v1, "modified"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQK:Lcom/google/android/gms/internal/zzbrt;

    new-instance v0, Lcom/google/android/gms/internal/zzbrs;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQL:Lcom/google/android/gms/internal/zzbrs;

    new-instance v0, Lcom/google/android/gms/internal/zzbrv;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQM:Lcom/google/android/gms/internal/zzbrv;

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQN:Lcom/google/android/gms/internal/zzbru;

    return-void
.end method
