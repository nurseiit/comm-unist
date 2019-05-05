.class public Lcom/google/android/gms/internal/wp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/wp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/wp;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzchN:Lcom/google/android/gms/internal/wp;

.field private static final zzchO:Lcom/google/android/gms/internal/wp;

.field private static final zzchP:Lcom/google/android/gms/internal/wp;

.field private static final zzchQ:Lcom/google/android/gms/internal/wp;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wp;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/wp;->zzchN:Lcom/google/android/gms/internal/wp;

    new-instance v0, Lcom/google/android/gms/internal/wp;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/wp;->zzchO:Lcom/google/android/gms/internal/wp;

    new-instance v0, Lcom/google/android/gms/internal/wp;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/wp;->zzchP:Lcom/google/android/gms/internal/wp;

    new-instance v0, Lcom/google/android/gms/internal/wp;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/wp;->zzchQ:Lcom/google/android/gms/internal/wp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/wq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wp;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzIJ()Lcom/google/android/gms/internal/wp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchN:Lcom/google/android/gms/internal/wp;

    return-object v0
.end method

.method public static zzIK()Lcom/google/android/gms/internal/wp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchO:Lcom/google/android/gms/internal/wp;

    return-object v0
.end method

.method public static zzIL()Lcom/google/android/gms/internal/wp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchP:Lcom/google/android/gms/internal/wp;

    return-object v0
.end method

.method public static zzIM()Lcom/google/android/gms/internal/wp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchQ:Lcom/google/android/gms/internal/wp;

    return-object v0
.end method

.method public static zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zd;->zzha(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/wp$zza;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/wp$zza;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/wp;->zzchP:Lcom/google/android/gms/internal/wp;

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/wp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/wp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/wp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wp;->zzi(Lcom/google/android/gms/internal/wp;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/wp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/wp;

    iget-object v0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ChildKey(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzIN()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchP:Lcom/google/android/gms/internal/wp;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected zzIO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/wp;)I
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchN:Lcom/google/android/gms/internal/wp;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchO:Lcom/google/android/gms/internal/wp;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchN:Lcom/google/android/gms/internal/wp;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/wp;->zzchO:Lcom/google/android/gms/internal/wp;

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wp;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wp;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzo(II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zd;->zzo(II)I

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/wp;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    return v2

    :cond_8
    return v1
.end method
