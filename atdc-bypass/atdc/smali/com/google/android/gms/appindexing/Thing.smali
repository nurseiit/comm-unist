.class public Lcom/google/android/gms/appindexing/Thing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appindexing/Thing$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final zzajQ:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appindexing/Thing;->zzajQ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzmn()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Thing;->zzajQ:Landroid/os/Bundle;

    return-object v0
.end method
