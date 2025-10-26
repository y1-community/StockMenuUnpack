.class public Lorg/mozilla/intl/chardet/nsGB2312Verifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsGB2312Verifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 44
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 46
    sput-object v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->cclass:[I

    const/4 v1, 0x0

    const v2, 0x11111111

    aput v2, v0, v1

    const v3, 0x111111

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v5, 0x3

    const v6, 0x11110111

    aput v6, v0, v5

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v6, 0x5

    aput v2, v0, v6

    const/4 v6, 0x6

    aput v2, v0, v6

    const/4 v6, 0x7

    aput v2, v0, v6

    const/16 v6, 0x8

    aput v2, v0, v6

    const/16 v6, 0x9

    aput v2, v0, v6

    const/16 v6, 0xa

    aput v2, v0, v6

    const/16 v6, 0xb

    aput v2, v0, v6

    const/16 v6, 0xc

    aput v2, v0, v6

    const/16 v6, 0xd

    aput v2, v0, v6

    const/16 v6, 0xe

    aput v2, v0, v6

    const/16 v6, 0xf

    aput v2, v0, v6

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v2, 0x14

    const v6, 0x22222220

    aput v6, v0, v2

    const/16 v2, 0x15

    const v6, 0x33333322

    aput v6, v0, v2

    const/16 v2, 0x16

    const v6, 0x22222222

    aput v6, v0, v2

    const/16 v2, 0x17

    aput v6, v0, v2

    const/16 v2, 0x18

    aput v6, v0, v2

    const/16 v2, 0x19

    aput v6, v0, v2

    const/16 v2, 0x1a

    aput v6, v0, v2

    const/16 v2, 0x1b

    aput v6, v0, v2

    const/16 v2, 0x1c

    aput v6, v0, v2

    const/16 v2, 0x1d

    aput v6, v0, v2

    const/16 v2, 0x1e

    aput v6, v0, v2

    const/16 v2, 0x1f

    const v6, 0x2222222

    aput v6, v0, v2

    new-array v0, v3, [I

    .line 83
    sput-object v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->states:[I

    const v2, 0x11111301

    aput v2, v0, v1

    const v1, 0x112222

    aput v1, v0, v4

    const-string v0, "GB2312"

    .line 90
    sput-object v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->charset:Ljava/lang/String;

    .line 91
    sput v5, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->stFactor:I

    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .line 39
    sget-object v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .line 41
    sget v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .line 40
    sget-object v0, Lorg/mozilla/intl/chardet/nsGB2312Verifier;->states:[I

    return-object v0
.end method
