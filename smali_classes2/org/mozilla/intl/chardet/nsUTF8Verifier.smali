.class public Lorg/mozilla/intl/chardet/nsUTF8Verifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsUTF8Verifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 22

    .line 44
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 46
    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x0

    const v2, 0x11111111

    aput v2, v0, v1

    const v3, 0x111111

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const v5, 0x11110111

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

    const/16 v10, 0x8

    aput v2, v0, v10

    const/16 v11, 0x9

    aput v2, v0, v11

    const/16 v12, 0xa

    aput v2, v0, v12

    const/16 v13, 0xb

    aput v2, v0, v13

    const/16 v14, 0xc

    aput v2, v0, v14

    const/16 v15, 0xd

    aput v2, v0, v15

    const/16 v16, 0xe

    aput v2, v0, v16

    const/16 v17, 0xf

    aput v2, v0, v17

    const v18, 0x33332222

    const/16 v19, 0x10

    aput v18, v0, v19

    const/16 v18, 0x11

    const v20, 0x44444444

    aput v20, v0, v18

    const/16 v21, 0x12

    aput v20, v0, v21

    const/16 v21, 0x13

    aput v20, v0, v21

    const/16 v20, 0x14

    const v21, 0x55555555

    aput v21, v0, v20

    const/16 v20, 0x15

    aput v21, v0, v20

    const/16 v20, 0x16

    aput v21, v0, v20

    const/16 v20, 0x17

    aput v21, v0, v20

    const/16 v20, 0x18

    const v21, 0x66666600

    aput v21, v0, v20

    const/16 v20, 0x19

    const v21, 0x66666666

    aput v21, v0, v20

    const/16 v20, 0x1a

    aput v21, v0, v20

    const/16 v20, 0x1b

    aput v21, v0, v20

    const/16 v20, 0x1c

    const v21, -0x77777779

    aput v21, v0, v20

    const/16 v20, 0x1d

    const v21, -0x77677778

    aput v21, v0, v20

    const/16 v20, 0x1e

    const v21, -0x44444446

    aput v21, v0, v20

    const/16 v20, 0x1f

    const v21, 0xfedddc

    aput v21, v0, v20

    const/16 v0, 0x1a

    new-array v0, v0, [I

    .line 83
    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const v20, -0x53eeeeff

    aput v20, v0, v1

    const v1, 0x345678b9

    aput v1, v0, v4

    aput v2, v0, v3

    aput v2, v0, v6

    const v1, 0x22222222

    aput v1, v0, v5

    aput v1, v0, v7

    const v1, 0x11555511

    aput v1, v0, v8

    aput v2, v0, v9

    const v1, 0x11555111

    aput v1, v0, v10

    aput v2, v0, v11

    const v1, 0x11777711

    aput v1, v0, v12

    aput v2, v0, v13

    const v1, 0x11771111

    aput v1, v0, v14

    aput v2, v0, v15

    const v1, 0x11999911

    aput v1, v0, v16

    aput v2, v0, v17

    const v1, 0x11911111

    aput v1, v0, v19

    aput v2, v0, v18

    const/16 v1, 0x12

    const v3, 0x11cccc11

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    const v3, 0x11c11111

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    const v3, 0x111ccc11

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v2, v0, v1

    const/16 v1, 0x18

    const v3, 0x11000011

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v2, v0, v1

    const-string v0, "UTF-8"

    .line 114
    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

    .line 115
    sput v19, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->stFactor:I

    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .line 39
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

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
    sget v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .line 40
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    return-object v0
.end method
