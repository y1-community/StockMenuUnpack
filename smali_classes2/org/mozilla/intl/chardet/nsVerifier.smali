.class public abstract Lorg/mozilla/intl/chardet/nsVerifier;
.super Ljava/lang/Object;
.source "nsVerifier.java"


# static fields
.field static final eBitSft4bits:I = 0x2

.field static final eError:B = 0x1t

.field static final eItsMe:B = 0x2t

.field static final eSftMsk4bits:I = 0x7

.field static final eStart:B = 0x0t

.field static final eUnitMsk4bits:I = 0xf

.field static final eidxSft4bits:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextState(Lorg/mozilla/intl/chardet/nsVerifier;BB)B
    .locals 4

    .line 50
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsVerifier;->states()[I

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsVerifier;->stFactor()I

    move-result v1

    mul-int v1, v1, p2

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsVerifier;->cclass()[I

    move-result-object v2

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    shr-int/2addr v2, p1

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x3

    .line 50
    aget v0, v0, v1

    .line 55
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsVerifier;->stFactor()I

    move-result v1

    mul-int p2, p2, v1

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsVerifier;->cclass()[I

    move-result-object p0

    aget p0, p0, v3

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    add-int/2addr p2, p0

    and-int/lit16 p0, p2, 0xff

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x2

    shr-int p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public abstract cclass()[I
.end method

.method public abstract charset()Ljava/lang/String;
.end method

.method public abstract isUCS2()Z
.end method

.method public abstract stFactor()I
.end method

.method public abstract states()[I
.end method
