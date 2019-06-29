.class public Lcom/lotecs/attendcheck/domain/ProCheckInfo;
.super Lcom/lotecs/attendcheck/domain/Attend;
.source "ProCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lotecs/attendcheck/domain/ProCheckInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;

.field private order:Ljava/lang/String;

.field private proname:Ljava/lang/String;

.field private pronum:Ljava/lang/String;

.field private week:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/lotecs/attendcheck/domain/ProCheckInfo$1;

    invoke-direct {v0}, Lcom/lotecs/attendcheck/domain/ProCheckInfo$1;-><init>()V

    sput-object v0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/lotecs/attendcheck/domain/Attend;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/lotecs/attendcheck/domain/Attend;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/lotecs/attendcheck/domain/Attend;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->week:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->date:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->proname:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->pronum:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->order:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->week:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->date:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->proname:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->pronum:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->order:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPronum()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->pronum:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->week:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->date:Ljava/lang/String;

    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->order:Ljava/lang/String;

    return-void
.end method

.method public setProname(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->proname:Ljava/lang/String;

    return-void
.end method

.method public setPronum(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->pronum:Ljava/lang/String;

    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->week:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->week:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->proname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->pronum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->order:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
