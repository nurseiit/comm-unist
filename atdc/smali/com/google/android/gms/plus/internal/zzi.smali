.class final Lcom/google/android/gms/plus/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;


# instance fields
.field private final mStatus:Lcom/google/android/gms/common/api/Status;

.field private final zzbAC:Ljava/lang/String;

.field private final zzbAD:Lcom/google/android/gms/plus/model/people/PersonBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzi;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/zzi;->zzbAC:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-direct {p1, p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzi;->zzbAD:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    return-void
.end method


# virtual methods
.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzi;->zzbAC:Ljava/lang/String;

    return-object v0
.end method

.method public final getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzi;->zzbAD:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzi;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzi;->zzbAD:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzi;->zzbAD:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->release()V

    :cond_0
    return-void
.end method
