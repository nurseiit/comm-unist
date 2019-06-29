.class public interface abstract Lcom/google/android/gms/awareness/state/Weather;
.super Ljava/lang/Object;


# static fields
.field public static final CELSIUS:I = 0x2

.field public static final CONDITION_CLEAR:I = 0x1

.field public static final CONDITION_CLOUDY:I = 0x2

.field public static final CONDITION_FOGGY:I = 0x3

.field public static final CONDITION_HAZY:I = 0x4

.field public static final CONDITION_ICY:I = 0x5

.field public static final CONDITION_RAINY:I = 0x6

.field public static final CONDITION_SNOWY:I = 0x7

.field public static final CONDITION_STORMY:I = 0x8

.field public static final CONDITION_UNKNOWN:I = 0x0

.field public static final CONDITION_WINDY:I = 0x9

.field public static final FAHRENHEIT:I = 0x1


# virtual methods
.method public abstract getConditions()[I
.end method

.method public abstract getDewPoint(I)F
.end method

.method public abstract getFeelsLikeTemperature(I)F
.end method

.method public abstract getHumidity()I
.end method

.method public abstract getTemperature(I)F
.end method
