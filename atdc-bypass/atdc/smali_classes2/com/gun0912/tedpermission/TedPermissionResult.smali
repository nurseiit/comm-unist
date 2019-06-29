.class public Lcom/gun0912/tedpermission/TedPermissionResult;
.super Ljava/lang/Object;
.source "TedPermissionResult.java"


# instance fields
.field private deniedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private granted:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/gun0912/tedpermission/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionResult;->granted:Z

    .line 13
    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionResult;->deniedPermissions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDeniedPermissions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionResult;->deniedPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGranted()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionResult;->granted:Z

    return v0
.end method
