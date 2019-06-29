.class public final Lcom/google/android/gms/internal/zzcvq;
.super Ljava/lang/Object;


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final zzaSQ:Landroid/content/Context;

.field private final zzapC:Landroid/content/Context;

.field private final zzbGZ:Lcom/google/android/gms/internal/zzcwn;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/gms/internal/zzcwn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcvq;->zzapC:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcvq;->zzaSQ:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvq;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcvq;->zzbGZ:Lcom/google/android/gms/internal/zzcwn;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcvq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcvq;->zzapC:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zzCv()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvq;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcvq;->zzbGZ:Lcom/google/android/gms/internal/zzcwn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcwn;->zzs(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvq;->zzaSQ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->tagmanager_preview_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcvq;->zzaSQ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->tagmanager_preview_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcvq;->zzaSQ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$string;->tagmanager_preview_dialog_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcvq;->zzapC:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    new-instance v1, Lcom/google/android/gms/internal/zzcvr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcvr;-><init>(Lcom/google/android/gms/internal/zzcvq;)V

    invoke-virtual {v3, v0, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Calling preview threw an exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    return-void
.end method
