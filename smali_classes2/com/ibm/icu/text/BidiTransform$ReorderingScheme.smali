.class abstract enum Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ReorderingScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_LTR_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum LOG_RTL_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_LTR_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

.field public static final enum VIS_RTL_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 378
    new-instance v0, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$1;

    const-string v1, "LOG_LTR_TO_VIS_LTR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 391
    new-instance v1, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$2;

    const-string v3, "LOG_RTL_TO_VIS_LTR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 404
    new-instance v3, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$3;

    const-string v5, "LOG_LTR_TO_VIS_RTL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 418
    new-instance v5, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$4;

    const-string v7, "LOG_RTL_TO_VIS_RTL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 432
    new-instance v7, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$5;

    const-string v9, "VIS_LTR_TO_LOG_RTL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 445
    new-instance v9, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$6;

    const-string v11, "VIS_RTL_TO_LOG_RTL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 459
    new-instance v11, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$7;

    const-string v13, "VIS_LTR_TO_LOG_LTR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 472
    new-instance v13, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$8;

    const-string v15, "VIS_RTL_TO_LOG_LTR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 486
    new-instance v15, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$9;

    const-string v14, "LOG_LTR_TO_LOG_RTL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 501
    new-instance v14, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$10;

    const-string v12, "LOG_RTL_TO_LOG_LTR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$10;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 516
    new-instance v12, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$11;

    const-string v10, "VIS_LTR_TO_VIS_RTL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$11;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 530
    new-instance v10, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$12;

    const-string v8, "VIS_RTL_TO_VIS_LTR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$12;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 544
    new-instance v8, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$13;

    const-string v6, "LOG_LTR_TO_LOG_LTR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$13;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_LTR_TO_LOG_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 557
    new-instance v6, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$14;

    const-string v4, "LOG_RTL_TO_LOG_RTL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$14;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->LOG_RTL_TO_LOG_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 570
    new-instance v4, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$15;

    const-string v2, "VIS_LTR_TO_VIS_LTR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$15;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_LTR_TO_VIS_LTR:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    .line 583
    new-instance v2, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$16;

    const-string v6, "VIS_RTL_TO_VIS_RTL"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme$16;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->VIS_RTL_TO_VIS_RTL:Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 377
    sput-object v6, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->$VALUES:[Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/BidiTransform$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;
    .locals 1

    .line 377
    const-class v0, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;
    .locals 1

    .line 377
    sget-object v0, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->$VALUES:[Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    return-object v0
.end method


# virtual methods
.method abstract doTransform(Lcom/ibm/icu/text/BidiTransform;)V
.end method

.method abstract matches(BLcom/ibm/icu/text/BidiTransform$Order;BLcom/ibm/icu/text/BidiTransform$Order;)Z
.end method
