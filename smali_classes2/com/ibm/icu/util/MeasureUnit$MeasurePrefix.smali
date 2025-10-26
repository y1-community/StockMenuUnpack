.class public final enum Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
.super Ljava/lang/Enum;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasurePrefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum ATTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum CENTI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum DECI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum DEKA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum EXA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum EXBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum FEMTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum GIBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum GIGA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum HECTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum KIBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum KILO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum MEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum MEGA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum MICRO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum MILLI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum NANO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum PEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum PETA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum PICO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum TEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum TERA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum YOBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum YOCTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum YOTTA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum ZEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum ZEPTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field public static final enum ZETTA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;


# instance fields
.field private final base:I

.field private final identifier:Ljava/lang/String;

.field private final power:I


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 126
    new-instance v6, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v1, "YOTTA"

    const/4 v2, 0x0

    const/16 v3, 0x18

    const-string v4, "yotta"

    const/16 v5, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->YOTTA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 133
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v8, "ZETTA"

    const/4 v9, 0x1

    const/16 v10, 0x15

    const-string v11, "zetta"

    const/16 v12, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ZETTA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 140
    new-instance v1, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v14, "EXA"

    const/4 v15, 0x2

    const/16 v16, 0x12

    const-string v17, "exa"

    const/16 v18, 0xa

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->EXA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 147
    new-instance v2, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v8, "PETA"

    const/4 v9, 0x3

    const/16 v10, 0xf

    const-string v11, "peta"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->PETA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 154
    new-instance v3, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v14, "TERA"

    const/4 v15, 0x4

    const/16 v16, 0xc

    const-string v17, "tera"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->TERA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 161
    new-instance v4, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v8, "GIGA"

    const/4 v9, 0x5

    const/16 v10, 0x9

    const-string v11, "giga"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->GIGA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 168
    new-instance v5, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v14, "MEGA"

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-string v17, "mega"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->MEGA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 175
    new-instance v13, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v8, "KILO"

    const/4 v9, 0x7

    const/4 v10, 0x3

    const-string v11, "kilo"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->KILO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 182
    new-instance v7, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v15, "HECTO"

    const/16 v16, 0x8

    const/16 v17, 0x2

    const-string v18, "hecto"

    const/16 v19, 0xa

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->HECTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 189
    new-instance v8, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v21, "DEKA"

    const/16 v22, 0x9

    const/16 v23, 0x1

    const-string v24, "deka"

    const/16 v25, 0xa

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->DEKA:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 196
    new-instance v9, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v15, "ONE"

    const/16 v16, 0xa

    const/16 v17, 0x0

    const-string v18, ""

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 203
    new-instance v10, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v21, "DECI"

    const/16 v22, 0xb

    const/16 v23, -0x1

    const-string v24, "deci"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->DECI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 210
    new-instance v11, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v15, "CENTI"

    const/16 v16, 0xc

    const/16 v17, -0x2

    const-string v18, "centi"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->CENTI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 217
    new-instance v12, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v21, "MILLI"

    const/16 v22, 0xd

    const/16 v23, -0x3

    const-string v24, "milli"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->MILLI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 224
    new-instance v20, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v15, "MICRO"

    const/16 v16, 0xe

    const/16 v17, -0x6

    const-string v18, "micro"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v20, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->MICRO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 231
    new-instance v14, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v22, "NANO"

    const/16 v23, 0xf

    const/16 v24, -0x9

    const-string v25, "nano"

    const/16 v26, 0xa

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->NANO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 238
    new-instance v15, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v28, "PICO"

    const/16 v29, 0x10

    const/16 v30, -0xc

    const-string v31, "pico"

    const/16 v32, 0xa

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->PICO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 245
    new-instance v16, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v22, "FEMTO"

    const/16 v23, 0x11

    const/16 v24, -0xf

    const-string v25, "femto"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v16, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->FEMTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 252
    new-instance v17, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v28, "ATTO"

    const/16 v29, 0x12

    const/16 v30, -0x12

    const-string v31, "atto"

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v17, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ATTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 259
    new-instance v18, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v22, "ZEPTO"

    const/16 v23, 0x13

    const/16 v24, -0x15

    const-string v25, "zepto"

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v18, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ZEPTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 266
    new-instance v19, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v28, "YOCTO"

    const/16 v29, 0x14

    const/16 v30, -0x18

    const-string v31, "yocto"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v19, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->YOCTO:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 273
    new-instance v27, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v22, "KIBI"

    const/16 v23, 0x15

    const/16 v24, 0x1

    const-string v25, "kibi"

    const/16 v26, 0x400

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v27, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->KIBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 280
    new-instance v21, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v29, "MEBI"

    const/16 v30, 0x16

    const/16 v31, 0x2

    const-string v32, "mebi"

    const/16 v33, 0x400

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v21, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->MEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 287
    new-instance v22, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v35, "GIBI"

    const/16 v36, 0x17

    const/16 v37, 0x3

    const-string v38, "gibi"

    const/16 v39, 0x400

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v22, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->GIBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 294
    new-instance v23, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v29, "TEBI"

    const/16 v30, 0x18

    const/16 v31, 0x4

    const-string v32, "tebi"

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v23, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->TEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 301
    new-instance v24, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v35, "PEBI"

    const/16 v36, 0x19

    const/16 v37, 0x5

    const-string v38, "pebi"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v24, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->PEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 308
    new-instance v25, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v29, "EXBI"

    const/16 v30, 0x1a

    const/16 v31, 0x6

    const-string v32, "exbi"

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v25, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->EXBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 315
    new-instance v26, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v35, "ZEBI"

    const/16 v36, 0x1b

    const/16 v37, 0x7

    const-string v38, "zebi"

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v26, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ZEBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 322
    new-instance v34, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const-string v29, "YOBI"

    const/16 v30, 0x1c

    const/16 v31, 0x8

    const-string v32, "yobi"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v34, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->YOBI:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-object/from16 v28, v15

    const/16 v15, 0x1d

    new-array v15, v15, [Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    const/16 v29, 0x0

    aput-object v6, v15, v29

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v28, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    .line 119
    sput-object v15, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->$VALUES:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p5, p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->base:I

    .line 330
    iput p3, p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->power:I

    .line 331
    iput-object p4, p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 1

    .line 119
    const-class v0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 1

    .line 119
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->$VALUES:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-object v0
.end method


# virtual methods
.method public getBase()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->base:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->power:I

    return v0
.end method
