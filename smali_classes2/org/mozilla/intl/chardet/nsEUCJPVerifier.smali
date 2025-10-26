.class public Lorg/mozilla/intl/chardet/nsEUCJPVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsEUCJPVerifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 44
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 46
    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x0

    const v2, 0x44444444

    aput v2, v0, v1

    const v3, 0x55444444

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const v5, 0x44445444

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v7, 0x5

    aput v2, v0, v7

    const/4 v8, 0x6

    aput v2, v0, v8

    const/4 v9, 0x7

    aput v2, v0, v9

    const/16 v9, 0x8

    aput v2, v0, v9

    const/16 v9, 0x9

    aput v2, v0, v9

    const/16 v9, 0xa

    aput v2, v0, v9

    const/16 v9, 0xb

    aput v2, v0, v9

    const/16 v9, 0xc

    aput v2, v0, v9

    const/16 v9, 0xd

    aput v2, v0, v9

    const/16 v9, 0xe

    aput v2, v0, v9

    const/16 v9, 0xf

    aput v2, v0, v9

    const/16 v2, 0x10

    const v9, 0x55555555

    aput v9, v0, v2

    const/16 v2, 0x11

    const v10, 0x31555555

    aput v10, v0, v2

    const/16 v2, 0x12

    aput v9, v0, v2

    const/16 v2, 0x13

    aput v9, v0, v2

    const/16 v2, 0x14

    const v9, 0x22222225

    aput v9, v0, v2

    const/16 v2, 0x15

    const v9, 0x22222222

    aput v9, v0, v2

    const/16 v2, 0x16

    aput v9, v0, v2

    const/16 v2, 0x17

    aput v9, v0, v2

    const/16 v2, 0x18

    aput v9, v0, v2

    const/16 v2, 0x19

    aput v9, v0, v2

    const/16 v2, 0x1a

    aput v9, v0, v2

    const/16 v2, 0x1b

    aput v9, v0, v2

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v2, 0x1f

    const/high16 v9, 0x50000000

    aput v9, v0, v2

    new-array v0, v7, [I

    .line 83
    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    const v2, 0x11105343

    aput v2, v0, v1

    const v1, 0x22221111

    aput v1, v0, v4

    const v1, 0x11101022

    aput v1, v0, v3

    const v1, 0x13111011

    aput v1, v0, v6

    const/16 v1, 0x1113

    aput v1, v0, v5

    const-string v0, "EUC-JP"

    .line 93
    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->charset:Ljava/lang/String;

    .line 94
    sput v8, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->stFactor:I

    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .line 39
    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->charset:Ljava/lang/String;

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
    sget v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .line 40
    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    return-object v0
.end method
