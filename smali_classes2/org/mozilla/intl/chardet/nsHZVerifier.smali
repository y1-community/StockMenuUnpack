.class public Lorg/mozilla/intl/chardet/nsHZVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsHZVerifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 44
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 46
    sput-object v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->cclass:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/16 v4, 0x1000

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v4, 0x4

    aput v1, v0, v4

    const/4 v6, 0x5

    aput v1, v0, v6

    const/4 v7, 0x6

    aput v1, v0, v7

    const/4 v8, 0x7

    aput v1, v0, v8

    const/16 v8, 0x8

    aput v1, v0, v8

    const/16 v8, 0x9

    aput v1, v0, v8

    const/16 v8, 0xa

    aput v1, v0, v8

    const/16 v8, 0xb

    aput v1, v0, v8

    const/16 v8, 0xc

    aput v1, v0, v8

    const/16 v8, 0xd

    aput v1, v0, v8

    const/16 v8, 0xe

    aput v1, v0, v8

    const/16 v8, 0xf

    const v9, 0x2504000

    aput v9, v0, v8

    const/16 v8, 0x10

    const v9, 0x11111111

    aput v9, v0, v8

    const/16 v8, 0x11

    aput v9, v0, v8

    const/16 v8, 0x12

    aput v9, v0, v8

    const/16 v8, 0x13

    aput v9, v0, v8

    const/16 v8, 0x14

    aput v9, v0, v8

    const/16 v8, 0x15

    aput v9, v0, v8

    const/16 v8, 0x16

    aput v9, v0, v8

    const/16 v8, 0x17

    aput v9, v0, v8

    const/16 v8, 0x18

    aput v9, v0, v8

    const/16 v8, 0x19

    aput v9, v0, v8

    const/16 v8, 0x1a

    aput v9, v0, v8

    const/16 v8, 0x1b

    aput v9, v0, v8

    const/16 v8, 0x1c

    aput v9, v0, v8

    const/16 v8, 0x1d

    aput v9, v0, v8

    const/16 v8, 0x1e

    aput v9, v0, v8

    const/16 v8, 0x1f

    aput v9, v0, v8

    new-array v0, v7, [I

    .line 83
    sput-object v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->states:[I

    const v8, 0x11000310

    aput v8, v0, v1

    const v1, 0x22221111

    aput v1, v0, v2

    const v1, 0x14001122

    aput v1, v0, v3

    const v1, 0x14551615

    aput v1, v0, v5

    const v1, 0x14144414

    aput v1, v0, v4

    const/16 v1, 0x24

    aput v1, v0, v6

    const-string v0, "HZ-GB-2312"

    .line 94
    sput-object v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->charset:Ljava/lang/String;

    .line 95
    sput v7, Lorg/mozilla/intl/chardet/nsHZVerifier;->stFactor:I

    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .line 39
    sget-object v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->charset:Ljava/lang/String;

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
    sget v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .line 40
    sget-object v0, Lorg/mozilla/intl/chardet/nsHZVerifier;->states:[I

    return-object v0
.end method
