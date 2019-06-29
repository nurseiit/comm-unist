.class public Lroboguice/fragment/provided/NativeFragmentUtil$FragmentManagerProvider;
.super Ljava/lang/Object;
.source "NativeFragmentUtil.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/fragment/provided/NativeFragmentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentManagerProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider<",
        "Landroid/app/FragmentManager;",
        ">;"
    }
.end annotation

.annotation runtime Lroboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/FragmentManager;
    .locals 1

    .line 69
    iget-object v0, p0, Lroboguice/fragment/provided/NativeFragmentUtil$FragmentManagerProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lroboguice/fragment/provided/NativeFragmentUtil$FragmentManagerProvider;->get()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
