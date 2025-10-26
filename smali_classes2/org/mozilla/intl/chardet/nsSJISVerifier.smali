.class public Lorg/mozilla/intl/chardet/nsSJISVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsSJISVerifier.java"


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
    sput-object v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->cclass:[I

    const v1, 0x11111110

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x111111

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const v4, 0x11111111

    aput v4, v0, v1

    const v5, 0x11110111

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v5, 0x4

    aput v4, v0, v5

    const/4 v5, 0x5

    aput v4, v0, v5

    const/4 v5, 0x6

    aput v4, v0, v5

    const/4 v7, 0x7

    aput v4, v0, v7

    const/16 v4, 0x8

    const v7, 0x22222222

    aput v7, v0, v4

    const/16 v4, 0x9

    aput v7, v0, v4

    const/16 v4, 0xa

    aput v7, v0, v4

    const/16 v4, 0xb

    aput v7, v0, v4

    const/16 v4, 0xc

    aput v7, v0, v4

    const/16 v4, 0xd

    aput v7, v0, v4

    const/16 v4, 0xe

    aput v7, v0, v4

    const/16 v4, 0xf

    const v8, 0x12222222

    aput v8, v0, v4

    const/16 v4, 0x10

    const v8, 0x33333333

    aput v8, v0, v4

    const/16 v4, 0x11

    aput v8, v0, v4

    const/16 v4, 0x12

    aput v8, v0, v4

    const/16 v4, 0x13

    aput v8, v0, v4

    const/16 v4, 0x14

    const v9, 0x22222224

    aput v9, v0, v4

    const/16 v4, 0x15

    aput v7, v0, v4

    const/16 v4, 0x16

    aput v7, v0, v4

    const/16 v4, 0x17

    aput v7, v0, v4

    const/16 v4, 0x18

    aput v7, v0, v4

    const/16 v4, 0x19

    aput v7, v0, v4

    const/16 v4, 0x1a

    aput v7, v0, v4

    const/16 v4, 0x1b

    aput v7, v0, v4

    const/16 v4, 0x1c

    aput v8, v0, v4

    const/16 v4, 0x1d

    const v7, 0x44455333    # 789.3f

    aput v7, v0, v4

    const/16 v4, 0x1e

    const v7, 0x44444444

    aput v7, v0, v4

    const/16 v4, 0x1f

    const v7, 0x44444

    aput v7, v0, v4

    new-array v0, v6, [I

    .line 83
    sput-object v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->states:[I

    const v4, 0x11113001

    aput v4, v0, v2

    const v2, 0x22221111

    aput v2, v0, v3

    const/16 v2, 0x1122

    aput v2, v0, v1

    const-string v0, "Shift_JIS"

    .line 91
    sput-object v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->charset:Ljava/lang/String;

    .line 92
    sput v5, Lorg/mozilla/intl/chardet/nsSJISVerifier;->stFactor:I

    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .line 39
    sget-object v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->charset:Ljava/lang/String;

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
    sget v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .line 40
    sget-object v0, Lorg/mozilla/intl/chardet/nsSJISVerifier;->states:[I

    return-object v0
.end method
