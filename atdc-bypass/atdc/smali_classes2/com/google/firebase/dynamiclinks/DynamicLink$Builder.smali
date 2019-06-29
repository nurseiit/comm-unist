.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzcjO:Landroid/os/Bundle;

.field private final zzcjP:Lcom/google/android/gms/internal/zn;

.field private final zzcjQ:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjP:Lcom/google/android/gms/internal/zn;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    const-string v0, "apiKey"

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    const-string v0, "parameters"

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final zzJI()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    const-string v1, "apiKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing API key. Set with setApiKey()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final buildDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/internal/zn;->zzE(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final buildShortDynamicLink()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzJI()V

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjP:Lcom/google/android/gms/internal/zn;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zn;->zzD(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final buildShortDynamicLink(I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzJI()V

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    const-string v1, "suffix"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjP:Lcom/google/android/gms/internal/zn;

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zn;->zzD(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;->zzbPK:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final setDynamicLinkDomain(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    const-string v1, "domain"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;->zzbPK:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final setIosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;->zzbPK:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final setItunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;->zzbPK:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final setLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public final setLongLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjO:Landroid/os/Bundle;

    const-string v1, "dynamicLink"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public final setSocialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzcjQ:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;->zzbPK:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method
