.class public final enum Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P10:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P11:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P12:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P13:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P14:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P15:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P2:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P3:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P4:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P5:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P6:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P7:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P8:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

.field public static final enum P9:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;


# instance fields
.field private final power:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 299
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v1, "P2"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P2:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 300
    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v4, "P3"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P3:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 301
    new-instance v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v7, "P4"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P4:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 302
    new-instance v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v9, "P5"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P5:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 303
    new-instance v9, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v11, "P6"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P6:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 304
    new-instance v11, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v13, "P7"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P7:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 305
    new-instance v13, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v15, "P8"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P8:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 306
    new-instance v15, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v12, "P9"

    const/16 v8, 0x9

    invoke-direct {v15, v12, v14, v8}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P9:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 307
    new-instance v12, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v14, "P10"

    const/16 v6, 0xa

    invoke-direct {v12, v14, v10, v6}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P10:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 308
    new-instance v14, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v10, "P11"

    const/16 v3, 0xb

    invoke-direct {v14, v10, v8, v3}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P11:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 309
    new-instance v10, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v8, "P12"

    const/16 v5, 0xc

    invoke-direct {v10, v8, v6, v5}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P12:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 310
    new-instance v8, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v6, "P13"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v3, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P13:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 311
    new-instance v6, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v3, "P14"

    const/16 v2, 0xe

    invoke-direct {v6, v3, v5, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P14:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    .line 312
    new-instance v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const-string v5, "P15"

    const/16 v2, 0xf

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v3, v5, v6, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P15:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v9, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v10, v2, v0

    const/16 v0, 0xb

    aput-object v8, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v3, v2, v0

    .line 298
    sput-object v2, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 317
    iput p3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->power:I

    return-void
.end method

.method public static getPowerFromTrieIndex(I)I
    .locals 0

    add-int/lit16 p0, p0, -0x100

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;
    .locals 1

    .line 298
    const-class v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;
    .locals 1

    .line 298
    sget-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    return-object v0
.end method


# virtual methods
.method public getTrieIndex()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->power:I

    add-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->power:I

    return v0
.end method
