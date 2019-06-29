.class public Lcom/google/android/gms/drive/query/SearchableField;
.super Ljava/lang/Object;


# static fields
.field public static final IS_PINNED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENTS:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final STARRED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRASHED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaQY:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaQZ:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaQw:Lcom/google/android/gms/internal/zzbrl;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TITLE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaQn:Lcom/google/android/gms/internal/zzbrh;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaQx:Lcom/google/android/gms/internal/zzbrm;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TRASHED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaQs:Lcom/google/android/gms/drive/metadata/internal/zzo;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQM:Lcom/google/android/gms/internal/zzbrv;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->zzaQY:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaQu:Lcom/google/android/gms/internal/zzbrk;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->STARRED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQK:Lcom/google/android/gms/internal/zzbrt;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrp;->zzaQJ:Lcom/google/android/gms/internal/zzbrr;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaQf:Lcom/google/android/gms/internal/zzbrg;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->IS_PINNED:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/zzbrc;->zzaPS:Lcom/google/android/gms/internal/zzbrf;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->zzaQZ:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
