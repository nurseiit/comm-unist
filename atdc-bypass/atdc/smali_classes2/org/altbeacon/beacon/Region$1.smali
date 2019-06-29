.class final Lorg/altbeacon/beacon/Region$1;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/altbeacon/beacon/Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Region$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/Region;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/Region;
    .locals 1

    .line 59
    new-instance v0, Lorg/altbeacon/beacon/Region;

    invoke-direct {v0, p1}, Lorg/altbeacon/beacon/Region;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Region$1;->newArray(I)[Lorg/altbeacon/beacon/Region;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/altbeacon/beacon/Region;
    .locals 0

    .line 63
    new-array p1, p1, [Lorg/altbeacon/beacon/Region;

    return-object p1
.end method
