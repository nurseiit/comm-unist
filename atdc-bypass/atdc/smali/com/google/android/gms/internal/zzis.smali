.class public final Lcom/google/android/gms/internal/zzis;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzAd:J

.field private zzAe:I

.field private zzAf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzAg:Z

.field private zzAh:I

.field private zzAi:Ljava/lang/String;

.field private zzAj:Lcom/google/android/gms/internal/zzlt;

.field private zzAk:Ljava/lang/String;

.field private zzAl:Landroid/os/Bundle;

.field private zzAm:Landroid/os/Bundle;

.field private zzAn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzAo:Ljava/lang/String;

.field private zzAp:Ljava/lang/String;

.field private zzAq:Z

.field private zzde:Landroid/location/Location;

.field private zzsu:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzis;->zzAd:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->mExtras:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzis;->zzAe:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzis;->zzAf:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzis;->zzAg:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzis;->zzAh:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzis;->zzsu:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAj:Lcom/google/android/gms/internal/zzlt;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzde:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAk:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAl:Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAm:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzAn:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzis;->zzAq:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzir;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzir;->zzzN:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzis;->zzAd:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/zzir;->zzzO:I

    iput v0, p0, Lcom/google/android/gms/internal/zzis;->zzAe:I

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzP:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAf:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzir;->zzzQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzAg:Z

    iget v0, p1, Lcom/google/android/gms/internal/zzir;->zzzR:I

    iput v0, p0, Lcom/google/android/gms/internal/zzis;->zzAh:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzir;->zzzS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzsu:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAi:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzU:Lcom/google/android/gms/internal/zzlt;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAj:Lcom/google/android/gms/internal/zzlt;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzV:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzde:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAk:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzX:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAl:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAm:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzZ:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAn:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzAa:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzAo:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzir;->zzAb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzis;->zzAp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/location/Location;)Lcom/google/android/gms/internal/zzis;
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzis;->zzde:Landroid/location/Location;

    return-object p0
.end method

.method public final zzdj()Lcom/google/android/gms/internal/zzir;
    .locals 24

    move-object/from16 v0, p0

    new-instance v21, Lcom/google/android/gms/internal/zzir;

    iget-wide v3, v0, Lcom/google/android/gms/internal/zzis;->zzAd:J

    iget-object v5, v0, Lcom/google/android/gms/internal/zzis;->mExtras:Landroid/os/Bundle;

    iget v6, v0, Lcom/google/android/gms/internal/zzis;->zzAe:I

    iget-object v7, v0, Lcom/google/android/gms/internal/zzis;->zzAf:Ljava/util/List;

    iget-boolean v8, v0, Lcom/google/android/gms/internal/zzis;->zzAg:Z

    iget v9, v0, Lcom/google/android/gms/internal/zzis;->zzAh:I

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzis;->zzsu:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/zzis;->zzAi:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/internal/zzis;->zzAj:Lcom/google/android/gms/internal/zzlt;

    iget-object v13, v0, Lcom/google/android/gms/internal/zzis;->zzde:Landroid/location/Location;

    iget-object v14, v0, Lcom/google/android/gms/internal/zzis;->zzAk:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/internal/zzis;->zzAl:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzAm:Landroid/os/Bundle;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzis;->zzAn:Ljava/util/List;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzAo:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzAp:Ljava/lang/String;

    const/16 v16, 0x7

    const/16 v20, 0x0

    move-object/from16 v17, v1

    move-object/from16 v1, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v22, v2

    move/from16 v2, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/zzir;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzlt;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v21
.end method
