.class final Lorg/altbeacon/beacon/service/RangingData$1;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/RangingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/altbeacon/beacon/service/RangingData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangingData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/service/RangingData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/service/RangingData;
    .locals 2

    .line 71
    new-instance v0, Lorg/altbeacon/beacon/service/RangingData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Landroid/os/Parcel;Lorg/altbeacon/beacon/service/RangingData$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangingData$1;->newArray(I)[Lorg/altbeacon/beacon/service/RangingData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/altbeacon/beacon/service/RangingData;
    .locals 0

    .line 75
    new-array p1, p1, [Lorg/altbeacon/beacon/service/RangingData;

    return-object p1
.end method
