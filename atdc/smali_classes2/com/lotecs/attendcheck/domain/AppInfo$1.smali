.class final Lcom/lotecs/attendcheck/domain/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/domain/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lotecs/attendcheck/domain/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lotecs/attendcheck/domain/AppInfo;
    .locals 1

    .line 130
    new-instance v0, Lcom/lotecs/attendcheck/domain/AppInfo;

    invoke-direct {v0, p1}, Lcom/lotecs/attendcheck/domain/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/domain/AppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lotecs/attendcheck/domain/AppInfo;
    .locals 0

    .line 135
    new-array p1, p1, [Lcom/lotecs/attendcheck/domain/AppInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/domain/AppInfo$1;->newArray(I)[Lcom/lotecs/attendcheck/domain/AppInfo;

    move-result-object p1

    return-object p1
.end method
