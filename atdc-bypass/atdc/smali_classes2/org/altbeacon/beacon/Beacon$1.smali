.class final Lorg/altbeacon/beacon/Beacon$1;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/Beacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/altbeacon/beacon/Beacon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Beacon$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/Beacon;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/Beacon;
    .locals 1

    .line 133
    new-instance v0, Lorg/altbeacon/beacon/Beacon;

    invoke-direct {v0, p1}, Lorg/altbeacon/beacon/Beacon;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Beacon$1;->newArray(I)[Lorg/altbeacon/beacon/Beacon;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/altbeacon/beacon/Beacon;
    .locals 0

    .line 137
    new-array p1, p1, [Lorg/altbeacon/beacon/Beacon;

    return-object p1
.end method
