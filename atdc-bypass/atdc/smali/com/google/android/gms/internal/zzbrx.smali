.class public final Lcom/google/android/gms/internal/zzbrx;
.super Ljava/lang/Object;


# static fields
.field public static final zzaQP:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaQQ:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzh;

    const-string v1, "contentAvailability"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/zzh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrx;->zzaQP:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    const-string v1, "isPinnable"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrx;->zzaQQ:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method
