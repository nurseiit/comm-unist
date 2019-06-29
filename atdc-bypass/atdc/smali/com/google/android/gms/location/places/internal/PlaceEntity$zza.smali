.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/PlaceEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzIi:Ljava/lang/String;

.field private zzaTl:Ljava/lang/String;

.field private zzbji:Lcom/google/android/gms/maps/model/LatLng;

.field private zzbjk:Ljava/lang/String;

.field private zzbjl:Landroid/net/Uri;

.field private zzbkB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbkC:Lcom/google/android/gms/location/places/internal/zzal;

.field private zzbkG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbkH:Lcom/google/android/gms/location/places/internal/zzae;

.field private zzbkt:F

.field private zzbku:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzbkw:Z

.field private zzbkx:F

.field private zzbky:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbky:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkx:F

    return-void
.end method


# virtual methods
.method public final zzD(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkG:Ljava/util/List;

    return-object p0
.end method

.method public final zzE(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkB:Ljava/util/List;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/location/places/internal/zzae;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkH:Lcom/google/android/gms/location/places/internal/zzae;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/location/places/internal/zzal;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkC:Lcom/google/android/gms/location/places/internal/zzal;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbji:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbku:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final zzaj(Z)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkw:Z

    return-object p0
.end method

.method public final zzbm(I)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbky:I

    return-object p0
.end method

.method public final zzc(F)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkt:F

    return-object p0
.end method

.method public final zzd(F)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkx:F

    return-object p0
.end method

.method public final zzdA(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbjk:Ljava/lang/String;

    return-object p0
.end method

.method public final zzdx(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzIi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzdy(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final zzdz(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzaTl:Ljava/lang/String;

    return-object p0
.end method

.method public final zzp(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbjl:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzvZ()Lcom/google/android/gms/location/places/internal/PlaceEntity;
    .locals 27

    move-object/from16 v0, p0

    new-instance v22, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v2, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzIi:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkG:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->mName:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzaTl:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbjk:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkB:Ljava/util/List;

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbji:Lcom/google/android/gms/maps/model/LatLng;

    iget v12, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkt:F

    iget-object v13, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbku:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbjl:Landroid/net/Uri;

    iget-boolean v14, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkw:Z

    iget v9, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkx:F

    iget v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbky:I

    iget-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->mName:Ljava/lang/String;

    move/from16 v23, v5

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzaTl:Ljava/lang/String;

    move/from16 v24, v9

    iget-object v9, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbjk:Ljava/lang/String;

    move/from16 v25, v14

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkB:Ljava/util/List;

    new-instance v26, Lcom/google/android/gms/location/places/internal/zzaj;

    const/16 v20, 0x0

    move-object/from16 v16, v26

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/location/places/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkC:Lcom/google/android/gms/location/places/internal/zzal;

    iget-object v9, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbkH:Lcom/google/android/gms/location/places/internal/zzae;

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, v22

    move/from16 v18, v23

    move-object/from16 v21, v9

    move/from16 v19, v24

    move-object/from16 v9, v16

    move-object/from16 v20, v14

    move/from16 v16, v25

    move-object/from16 v14, v17

    move/from16 v17, v19

    move-object/from16 v19, v26

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/location/places/internal/PlaceEntity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFILcom/google/android/gms/location/places/internal/zzaj;Lcom/google/android/gms/location/places/internal/zzal;Lcom/google/android/gms/location/places/internal/zzae;)V

    return-object v22
.end method
