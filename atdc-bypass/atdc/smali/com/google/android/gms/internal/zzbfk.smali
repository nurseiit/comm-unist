.class final Lcom/google/android/gms/internal/zzbfk;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field mChangingConfigurations:I

.field zzaGD:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfk;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzbfk;->mChangingConfigurations:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbfk;->mChangingConfigurations:I

    iget p1, p1, Lcom/google/android/gms/internal/zzbfk;->zzaGD:I

    iput p1, p0, Lcom/google/android/gms/internal/zzbfk;->zzaGD:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbfk;->mChangingConfigurations:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbfg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbfg;-><init>(Lcom/google/android/gms/internal/zzbfk;)V

    return-object v0
.end method
