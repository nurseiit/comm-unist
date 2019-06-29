.class public Lorg/altbeacon/beacon/service/MonitoringData;
.super Ljava/lang/Object;
.source "MonitoringData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/altbeacon/beacon/service/MonitoringData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MonitoringData"


# instance fields
.field private inside:Z

.field private region:Lorg/altbeacon/beacon/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lorg/altbeacon/beacon/service/MonitoringData$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/MonitoringData$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/MonitoringData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/MonitoringData;->inside:Z

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/Region;

    iput-object p1, p0, Lorg/altbeacon/beacon/service/MonitoringData;->region:Lorg/altbeacon/beacon/Region;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/altbeacon/beacon/service/MonitoringData$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZLorg/altbeacon/beacon/Region;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/MonitoringData;->inside:Z

    .line 39
    iput-object p2, p0, Lorg/altbeacon/beacon/service/MonitoringData;->region:Lorg/altbeacon/beacon/Region;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRegion()Lorg/altbeacon/beacon/Region;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringData;->region:Lorg/altbeacon/beacon/Region;

    return-object v0
.end method

.method public isInside()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringData;->inside:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringData;->inside:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringData;->region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
