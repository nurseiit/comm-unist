.class public final Lcom/google/android/gms/internal/zzcri$zzb$zzb;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcri$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcri$zzb$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbAS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbgj<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private zzD:Ljava/lang/String;

.field private zzaku:I

.field private zzbAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzrW:I

.field private zzrX:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzcrn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcrn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAS:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAS:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAS:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbgj;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbgj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzaku:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzaku:I

    iput p3, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrX:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzD:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrW:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/zzcri$zzb$zzb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcri$zzb$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbgj;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrX:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzD:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrW:I

    return v0
.end method

.method public final hasHeight()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasWidth()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbgj;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zza(Lcom/google/android/gms/internal/zzbgj;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzaku:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrX:I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzD:Ljava/lang/String;

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrW:I

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzbgj;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAT:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzbgj;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbgj;->zzrM()I

    move-result p1

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown safe parcelable id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p1, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrW:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzD:Ljava/lang/String;

    return-object p1

    :pswitch_2
    iget p1, p0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzrX:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic zzrL()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcri$zzb$zzb;->zzbAS:Ljava/util/HashMap;

    return-object v0
.end method