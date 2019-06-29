.class final Lcom/lotecs/attendcheck/domain/ProCheckInfo$1;
.super Ljava/lang/Object;
.source "ProCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/domain/ProCheckInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lotecs/attendcheck/domain/ProCheckInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lotecs/attendcheck/domain/ProCheckInfo;
    .locals 1

    .line 93
    new-instance v0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    invoke-direct {v0, p1}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/domain/ProCheckInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lotecs/attendcheck/domain/ProCheckInfo;
    .locals 0

    .line 98
    new-array p1, p1, [Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/domain/ProCheckInfo$1;->newArray(I)[Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    move-result-object p1

    return-object p1
.end method
