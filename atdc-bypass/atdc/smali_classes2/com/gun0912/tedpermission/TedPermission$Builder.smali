.class public Lcom/gun0912/tedpermission/TedPermission$Builder;
.super Lcom/gun0912/tedpermission/PermissionBuilder;
.source "TedPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gun0912/tedpermission/TedPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gun0912/tedpermission/PermissionBuilder<",
        "Lcom/gun0912/tedpermission/TedPermission$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/gun0912/tedpermission/TedPermission$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermission$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermission$Builder;->checkPermissions()V

    return-void
.end method
