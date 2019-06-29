.class public final Lcom/google/android/gms/internal/adt;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/adt;",
        ">;"
    }
.end annotation


# instance fields
.field public url:Ljava/lang/String;

.field public zzcsJ:Ljava/lang/Integer;

.field private zzcsK:Ljava/lang/Integer;

.field public zzcsL:Ljava/lang/String;

.field private zzcsM:Ljava/lang/String;

.field public zzcsN:Lcom/google/android/gms/internal/adu;

.field public zzcsO:[Lcom/google/android/gms/internal/aeb;

.field public zzcsP:Ljava/lang/String;

.field public zzcsQ:Lcom/google/android/gms/internal/aea;

.field private zzcsR:Ljava/lang/Boolean;

.field private zzcsS:[Ljava/lang/String;

.field private zzcsT:Ljava/lang/String;

.field private zzcsU:Ljava/lang/Boolean;

.field private zzcsV:Ljava/lang/Boolean;

.field private zzcsW:[B

.field public zzcsX:Lcom/google/android/gms/internal/aec;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsJ:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsK:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    invoke-static {}, Lcom/google/android/gms/internal/aeb;->zzLX()[Lcom/google/android/gms/internal/aeb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsP:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsR:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/ads;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsU:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsV:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsW:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/adt;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/aec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aec;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsW:[B

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/aea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aea;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsP:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/adu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLC()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsK:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLC()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/adt;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsJ:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsV:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsU:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsT:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsR:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/aeb;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/aeb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aeb;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/aeb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aeb;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsM:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsL:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adt;->url:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x62 -> :sswitch_4
        0x6a -> :sswitch_3
        0x72 -> :sswitch_2
        0x7a -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsL:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsM:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsR:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsR:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsT:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsU:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsV:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsV:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsJ:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsJ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsK:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsK:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsP:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsW:[B

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsW:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzb(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->url:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->url:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsL:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsL:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsM:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsM:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/adt;->zzcsO:[Lcom/google/android/gms/internal/aeb;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsR:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/gms/internal/adt;->zzcsR:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/google/android/gms/internal/adt;->zzcsS:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/adh;->zzhQ(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsT:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsT:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsU:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsU:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsV:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/adt;->zzcsV:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsJ:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsJ:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsK:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsK:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    if-eqz v1, :cond_f

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsN:Lcom/google/android/gms/internal/adu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsP:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    if-eqz v1, :cond_11

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsQ:Lcom/google/android/gms/internal/aea;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsW:[B

    if-eqz v1, :cond_12

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsW:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    if-eqz v1, :cond_13

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/adt;->zzcsX:Lcom/google/android/gms/internal/aec;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method
