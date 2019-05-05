.class public Lcom/lotecs/attendcheck/domain/AttendInfo;
.super Ljava/lang/Object;
.source "AttendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cnt:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private days:Ljava/lang/String;

.field private idno:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private psco:Ljava/lang/String;

.field private rmco:Ljava/lang/String;

.field private sjco:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I

.field private yyse:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/lotecs/attendcheck/domain/AttendInfo$1;

    invoke-direct {v0}, Lcom/lotecs/attendcheck/domain/AttendInfo$1;-><init>()V

    sput-object v0, Lcom/lotecs/attendcheck/domain/AttendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->yyse:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->idno:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->name:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->time:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->rmco:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->psco:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->sjco:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->ssid:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->mac:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->days:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->cnt:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->content:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCnt()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDays()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->days:Ljava/lang/String;

    return-object v0
.end method

.method public getIdno()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->idno:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPsco()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->psco:Ljava/lang/String;

    return-object v0
.end method

.method public getRmco()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->rmco:Ljava/lang/String;

    return-object v0
.end method

.method public getSjco()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->sjco:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->type:I

    return v0
.end method

.method public getYyse()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->yyse:Ljava/lang/String;

    return-object v0
.end method

.method public setCnt(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->cnt:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setDays(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->days:Ljava/lang/String;

    return-void
.end method

.method public setIdno(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->idno:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPsco(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->psco:Ljava/lang/String;

    return-void
.end method

.method public setRmco(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->rmco:Ljava/lang/String;

    return-void
.end method

.method public setSjco(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->sjco:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->type:I

    return-void
.end method

.method public setYyse(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->yyse:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttendInfo{yyse=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->yyse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idno=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->idno:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rmco=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->rmco:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", psco=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->psco:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sjco=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->sjco:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ssid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", days=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->days:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cnt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->cnt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 141
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->yyse:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->idno:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->rmco:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->psco:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->sjco:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->days:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->cnt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget p2, p0, Lcom/lotecs/attendcheck/domain/AttendInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
