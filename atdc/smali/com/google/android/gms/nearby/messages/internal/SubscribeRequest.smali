.class public final Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaLr:Landroid/app/PendingIntent;

.field private zzaku:I

.field private zzbyA:Z

.field private zzbyB:I

.field private zzbyW:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbye:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbyf:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

.field private zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

.field private zzbzr:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

.field private zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field private zzbzx:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzy:[B

.field private zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;ZI)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p12

    move/from16 v6, p13

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move v7, p1

    iput v7, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaku:I

    const/4 v7, 0x0

    if-nez v1, :cond_0

    move-object v1, v7

    goto :goto_0

    :cond_0
    const-string v8, "com.google.android.gms.nearby.messages.internal.IMessageListener"

    invoke-interface {v1, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-eqz v9, :cond_1

    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzm;

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/nearby/messages/internal/zzo;

    invoke-direct {v8, v1}, Lcom/google/android/gms/nearby/messages/internal/zzo;-><init>(Landroid/os/IBinder;)V

    move-object v1, v8

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez v2, :cond_2

    move-object v1, v7

    goto :goto_1

    :cond_2
    const-string v1, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v8, v1, Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-eqz v8, :cond_3

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzp;

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaLr:Landroid/app/PendingIntent;

    move/from16 v1, p7

    iput v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzx:I

    iput-object v3, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbye:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyW:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzr:Z

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "com.google.android.gms.nearby.messages.internal.ISubscribeCallback"

    invoke-interface {v5, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/nearby/messages/internal/zzaa;

    if-eqz v2, :cond_6

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/nearby/messages/internal/zzaa;

    goto :goto_2

    :cond_6
    new-instance v7, Lcom/google/android/gms/nearby/messages/internal/zzac;

    invoke-direct {v7, v5}, Lcom/google/android/gms/nearby/messages/internal/zzac;-><init>(Landroid/os/IBinder;)V

    :goto_2
    iput-object v7, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    iput-boolean v6, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyf:Z

    move-object/from16 v1, p14

    invoke-static {v1, v4, v3, v6}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyA:Z

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyB:I

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;Z)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZI)V
    .locals 17

    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;ZI)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaLr:Landroid/app/PendingIntent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    array-length v5, v5

    const/16 v6, 0x13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "<"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyf:Z

    iget-object v8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyA:Z

    iget-object v10, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbye:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyW:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzr:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x107

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "SubscribeRequest{messageListener="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", strategy="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filter="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pendingIntent="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hint="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subscribeCallback="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", useRealClientApiKey="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", clientAppContext="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDiscardPendingIntent="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", zeroPartyPackageName="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", realClientPackageName="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isIgnoreNearbyPermission="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaku:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v4}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaLr:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzx:I

    invoke-static {p1, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbye:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyW:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0xb

    iget-boolean v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzr:Z

    invoke-static {p1, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    invoke-interface {v2}, Lcom/google/android/gms/nearby/messages/internal/zzaa;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyf:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xf

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyA:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x10

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyB:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
