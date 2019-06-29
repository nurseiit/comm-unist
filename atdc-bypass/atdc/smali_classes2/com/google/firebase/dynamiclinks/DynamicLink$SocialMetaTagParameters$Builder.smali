.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzbPK:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->zzbPK:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;
    .locals 3

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->zzbPK:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->zzbPK:Landroid/os/Bundle;

    const-string v1, "sd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setImageUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->zzbPK:Landroid/os/Bundle;

    const-string v1, "si"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->zzbPK:Landroid/os/Bundle;

    const-string v1, "st"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
