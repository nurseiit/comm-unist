.class public Lorg/altbeacon/beacon/distance/AndroidModel;
.super Ljava/lang/Object;
.source "AndroidModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidModel"


# instance fields
.field mBuildNumber:Ljava/lang/String;

.field mManufacturer:Ljava/lang/String;

.field mModel:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    return-void
.end method

.method public static forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 5

    .line 29
    new-instance v0, Lorg/altbeacon/beacon/distance/AndroidModel;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/distance/AndroidModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    iget-object v1, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    iget-object v3, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v2, :cond_1

    .line 83
    iget-object v2, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    iget-object v3, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    :cond_1
    if-ne v0, v1, :cond_2

    .line 86
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    iget-object v2, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    :cond_2
    const-string v1, "AndroidModel"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Score is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " compared to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
