.class public Lroboguice/fragment/support/SupportFragmentUtil;
.super Ljava/lang/Object;
.source "SupportFragmentUtil.java"

# interfaces
.implements Lroboguice/fragment/FragmentUtil$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/fragment/support/SupportFragmentUtil$FragmentManagerProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lroboguice/fragment/FragmentUtil$f<",
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public findFragmentById(Landroid/support/v4/app/FragmentManager;I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 35
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0, p1, p2}, Lroboguice/fragment/support/SupportFragmentUtil;->findFragmentById(Landroid/support/v4/app/FragmentManager;I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public findFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 40
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0, p1, p2}, Lroboguice/fragment/support/SupportFragmentUtil;->findFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public fragmentManagerProviderType()Ljava/lang/Class;
    .locals 1

    .line 56
    const-class v0, Lroboguice/fragment/support/SupportFragmentUtil$FragmentManagerProvider;

    return-object v0
.end method

.method public fragmentManagerType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/FragmentManager;",
            ">;"
        }
    .end annotation

    .line 50
    const-class v0, Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public fragmentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 45
    const-class v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getView(Landroid/support/v4/app/Fragment;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getView(Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 19
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Lroboguice/fragment/support/SupportFragmentUtil;->getView(Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
