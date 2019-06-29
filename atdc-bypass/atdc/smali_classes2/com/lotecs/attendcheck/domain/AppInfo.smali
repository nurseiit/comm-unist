.class public Lcom/lotecs/attendcheck/domain/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lotecs/attendcheck/domain/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private iddi:Ljava/lang/String;

.field private idno:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private psnm:Ljava/lang/String;

.field private refresh_time:I

.field private unnm:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/lotecs/attendcheck/domain/AppInfo$1;

    invoke-direct {v0}, Lcom/lotecs/attendcheck/domain/AppInfo$1;-><init>()V

    sput-object v0, Lcom/lotecs/attendcheck/domain/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/domain/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->idno:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->name:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->iddi:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->unnm:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->pass:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->psnm:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->uuid:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->count:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->refresh_time:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->count:I

    return v0
.end method

.method public getIddi()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->iddi:Ljava/lang/String;

    return-object v0
.end method

.method public getIdno()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->idno:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPsnm()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->psnm:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_time()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->refresh_time:I

    return v0
.end method

.method public getUnnm()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->unnm:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->count:I

    return-void
.end method

.method public setIddi(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->iddi:Ljava/lang/String;

    return-void
.end method

.method public setIdno(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->idno:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->pass:Ljava/lang/String;

    return-void
.end method

.method public setPsnm(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->psnm:Ljava/lang/String;

    return-void
.end method

.method public setRefresh_time(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->refresh_time:I

    return-void
.end method

.method public setUnnm(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->unnm:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->idno:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->iddi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->unnm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->pass:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->psnm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcom/lotecs/attendcheck/domain/AppInfo;->refresh_time:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
