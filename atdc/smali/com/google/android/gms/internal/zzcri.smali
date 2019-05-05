.class public final Lcom/google/android/gms/internal/zzcri;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcri$zzg;,
        Lcom/google/android/gms/internal/zzcri$zzf;,
        Lcom/google/android/gms/internal/zzcri$zze;,
        Lcom/google/android/gms/internal/zzcri$zzd;,
        Lcom/google/android/gms/internal/zzcri$zzc;,
        Lcom/google/android/gms/internal/zzcri$zzb;,
        Lcom/google/android/gms/internal/zzcri$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcri;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbAS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbgj<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private zzAe:I

.field private zzD:Ljava/lang/String;

.field private zzIi:Ljava/lang/String;

.field private zzaeT:Ljava/lang/String;

.field private zzaku:I

.field private zzalP:Ljava/lang/String;

.field private zzbAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbAU:Ljava/lang/String;

.field private zzbAV:Lcom/google/android/gms/internal/zzcri$zza;

.field private zzbAW:Ljava/lang/String;

.field private zzbAX:Ljava/lang/String;

.field private zzbAY:I

.field private zzbAZ:Lcom/google/android/gms/internal/zzcri$zzb;

.field private zzbBa:Ljava/lang/String;

.field private zzbBb:Lcom/google/android/gms/internal/zzcri$zzc;

.field private zzbBc:Z

.field private zzbBd:Lcom/google/android/gms/internal/zzcri$zzd;

.field private zzbBe:Ljava/lang/String;

.field private zzbBf:I

.field private zzbBg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcri$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zzbBh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcri$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzbBi:I

.field private zzbBj:I

.field private zzbBk:Ljava/lang/String;

.field private zzbBl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcri$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzbBm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/gms/internal/zzcrj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcrj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcri;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "aboutMe"

    const-string v2, "aboutMe"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const-class v4, Lcom/google/android/gms/internal/zzcri$zza;

    const/4 v5, 0x3

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v6, 0x5

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "circledByCount"

    const-string v2, "circledByCount"

    const/4 v7, 0x6

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zzbgj;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "cover"

    const-string v2, "cover"

    const-class v8, Lcom/google/android/gms/internal/zzcri$zzb;

    const/4 v9, 0x7

    invoke-static {v2, v9, v8}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "currentLocation"

    const-string v2, "currentLocation"

    const/16 v8, 0x8

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v10, 0x9

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    new-instance v10, Lcom/google/android/gms/internal/zzbge;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzbge;-><init>()V

    const-string v11, "male"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const-string v11, "female"

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const-string v11, "other"

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const/16 v11, 0xc

    invoke-static {v2, v11, v10, v12}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbgk;Z)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v10, 0xe

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const-class v10, Lcom/google/android/gms/internal/zzcri$zzc;

    const/16 v11, 0xf

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "isPlusUser"

    const-string v2, "isPlusUser"

    const/16 v10, 0x10

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzbgj;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v10, 0x12

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const-class v10, Lcom/google/android/gms/internal/zzcri$zzd;

    const/16 v11, 0x13

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    const/16 v10, 0x14

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    new-instance v10, Lcom/google/android/gms/internal/zzbge;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzbge;-><init>()V

    const-string v11, "person"

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const-string v11, "page"

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const/16 v11, 0x15

    invoke-static {v2, v11, v10, v12}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbgk;Z)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const-class v10, Lcom/google/android/gms/internal/zzcri$zze;

    const/16 v11, 0x16

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzbgj;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const-class v10, Lcom/google/android/gms/internal/zzcri$zzf;

    const/16 v11, 0x17

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzbgj;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "plusOneCount"

    const-string v2, "plusOneCount"

    const/16 v10, 0x18

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzbgj;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "relationshipStatus"

    const-string v2, "relationshipStatus"

    new-instance v10, Lcom/google/android/gms/internal/zzbge;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzbge;-><init>()V

    const-string v11, "single"

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const-string v11, "in_a_relationship"

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v10

    const-string v11, "engaged"

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const-string v10, "married"

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const-string v5, "its_complicated"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const-string v4, "open_relationship"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const-string v4, "widowed"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const-string v4, "in_domestic_partnership"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const-string v4, "in_civil_union"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/zzbge;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbge;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v2, v4, v3, v12}, Lcom/google/android/gms/internal/zzbgj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbgk;Z)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "tagline"

    const-string v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const-class v3, Lcom/google/android/gms/internal/zzcri$zzg;

    const/16 v4, 0x1c

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/zzbgj;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcri;->zzaku:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcri$zzc;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcri;->zzaku:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzalP:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcri;->zzIi:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 p2, 0xe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBb:Lcom/google/android/gms/internal/zzcri$zzc;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput p4, p0, Lcom/google/android/gms/internal/zzcri;->zzbBf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 p2, 0x15

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcri;->zzD:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 p2, 0x1b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/zzcri$zza;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/zzcri$zzb;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzcri$zzc;ZLjava/lang/String;Lcom/google/android/gms/internal/zzcri$zzd;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcri$zza;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/zzcri$zzb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcri$zzc;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcri$zzd;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcri$zze;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcri$zzf;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcri$zzg;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    move v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/zzcri;->zzaku:I

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAU:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAV:Lcom/google/android/gms/internal/zzcri$zza;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAW:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAX:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAY:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbAZ:Lcom/google/android/gms/internal/zzcri$zzb;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBa:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzalP:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/internal/zzcri;->zzAe:I

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzIi:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBb:Lcom/google/android/gms/internal/zzcri$zzc;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBc:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzaeT:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBd:Lcom/google/android/gms/internal/zzcri$zzd;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBe:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBf:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBg:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBh:Ljava/util/List;

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBi:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBj:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBk:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzD:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBl:Ljava/util/List;

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcri;->zzbBm:Z

    return-void
.end method

.method public static zzp([B)Lcom/google/android/gms/internal/zzcri;
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Lcom/google/android/gms/internal/zzcri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzcri;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/zzcri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcri;

    sget-object v2, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbgj;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzcri;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzcri;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzcri;->zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzcri;->zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzcri;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getAboutMe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAU:Ljava/lang/String;

    return-object v0
.end method

.method public final getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAV:Lcom/google/android/gms/internal/zzcri$zza;

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAW:Ljava/lang/String;

    return-object v0
.end method

.method public final getBraggingRights()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAX:Ljava/lang/String;

    return-object v0
.end method

.method public final getCircledByCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAY:I

    return v0
.end method

.method public final getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAZ:Lcom/google/android/gms/internal/zzcri$zzb;

    return-object v0
.end method

.method public final getCurrentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBa:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzalP:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri;->zzAe:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzIi:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBb:Lcom/google/android/gms/internal/zzcri$zzc;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzaeT:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBd:Lcom/google/android/gms/internal/zzcri$zzd;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBe:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBf:I

    return v0
.end method

.method public final getOrganizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBg:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlacesLived()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBh:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlusOneCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBi:I

    return v0
.end method

.method public final getRelationshipStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBj:I

    return v0
.end method

.method public final getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBk:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzD:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBl:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hasAboutMe()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasAgeRange()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasBirthday()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasBraggingRights()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasCircledByCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasCover()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasCurrentLocation()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasDisplayName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasGender()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasId()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasImage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasIsPlusUser()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasLanguage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasNickname()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasObjectType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasOrganizations()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasPlacesLived()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasPlusOneCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasRelationshipStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasTagline()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasUrls()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasVerified()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbgj;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzcri;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzcri;->zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isPlusUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBc:Z

    return v0
.end method

.method public final isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbBm:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/zzcri;->zzaku:I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbAU:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_1
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbAV:Lcom/google/android/gms/internal/zzcri$zza;

    invoke-static {p1, v3, v4, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbAW:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_3
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbAX:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_4
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbAY:I

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_5
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbAZ:Lcom/google/android/gms/internal/zzcri$zzb;

    invoke-static {p1, v3, v4, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_6
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbBa:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_7
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzalP:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_8
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/google/android/gms/internal/zzcri;->zzAe:I

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_9
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzIi:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_a
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbBb:Lcom/google/android/gms/internal/zzcri$zzc;

    invoke-static {p1, v3, v4, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_b
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbBc:Z

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    :cond_c
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzaeT:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_d
    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcri;->zzbBd:Lcom/google/android/gms/internal/zzcri$zzd;

    invoke-static {p1, v3, v4, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_e
    const/16 p2, 0x14

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/16 p2, 0x14

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBe:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_f
    const/16 p2, 0x15

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/16 p2, 0x15

    iget v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBf:I

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_10
    const/16 p2, 0x16

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/16 p2, 0x16

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBg:Ljava/util/List;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_11
    const/16 p2, 0x17

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 p2, 0x17

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBh:Ljava/util/List;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_12
    const/16 p2, 0x18

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    const/16 p2, 0x18

    iget v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBi:I

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_13
    const/16 p2, 0x19

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    const/16 p2, 0x19

    iget v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBj:I

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_14
    const/16 p2, 0x1a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    const/16 p2, 0x1a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBk:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_15
    const/16 p2, 0x1b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    const/16 p2, 0x1b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzD:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_16
    const/16 p2, 0x1c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/16 p2, 0x1c

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzbBl:Ljava/util/List;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_17
    const/16 p2, 0x1d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/16 p2, 0x1d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBm:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    :cond_18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzbgj;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri;->zzbAT:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result p1

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown safe parcelable id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBm:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBl:Ljava/util/List;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzD:Ljava/lang/String;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBk:Ljava/lang/String;

    return-object p1

    :pswitch_5
    iget p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBj:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBh:Ljava/util/List;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBg:Ljava/util/List;

    return-object p1

    :pswitch_9
    iget p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBf:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBe:Ljava/lang/String;

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBd:Lcom/google/android/gms/internal/zzcri$zzd;

    return-object p1

    :pswitch_c
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzaeT:Ljava/lang/String;

    return-object p1

    :pswitch_d
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBc:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_e
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBb:Lcom/google/android/gms/internal/zzcri$zzc;

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzIi:Ljava/lang/String;

    return-object p1

    :pswitch_10
    iget p1, p0, Lcom/google/android/gms/internal/zzcri;->zzAe:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzalP:Ljava/lang/String;

    return-object p1

    :pswitch_12
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbBa:Ljava/lang/String;

    return-object p1

    :pswitch_13
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAZ:Lcom/google/android/gms/internal/zzcri$zzb;

    return-object p1

    :pswitch_14
    iget p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAY:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_15
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAX:Ljava/lang/String;

    return-object p1

    :pswitch_16
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAW:Ljava/lang/String;

    return-object p1

    :pswitch_17
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAV:Lcom/google/android/gms/internal/zzcri$zza;

    return-object p1

    :pswitch_18
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri;->zzbAU:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic zzrL()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcri;->zzbAS:Ljava/util/HashMap;

    return-object v0
.end method
