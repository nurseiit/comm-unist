.class final Lorg/altbeacon/beacon/service/MonitoringData$1;
.super Ljava/lang/Object;
.source "MonitoringData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/MonitoringData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/altbeacon/beacon/service/MonitoringData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/service/MonitoringData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/service/MonitoringData;
    .locals 2

    .line 61
    new-instance v0, Lorg/altbeacon/beacon/service/MonitoringData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(Landroid/os/Parcel;Lorg/altbeacon/beacon/service/MonitoringData$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringData$1;->newArray(I)[Lorg/altbeacon/beacon/service/MonitoringData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/altbeacon/beacon/service/MonitoringData;
    .locals 0

    .line 65
    new-array p1, p1, [Lorg/altbeacon/beacon/service/MonitoringData;

    return-object p1
.end method
