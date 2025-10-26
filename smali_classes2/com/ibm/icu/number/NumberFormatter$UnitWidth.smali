.class public final enum Lcom/ibm/icu/number/NumberFormatter$UnitWidth;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberFormatter$UnitWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum FORMAL:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum HIDDEN:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum ISO_CODE:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public static final enum VARIANT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 163
    new-instance v0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "NARROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 180
    new-instance v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v3, "SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 192
    new-instance v3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v5, "FULL_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 206
    new-instance v5, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v7, "ISO_CODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 218
    new-instance v7, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v9, "FORMAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FORMAL:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 230
    new-instance v9, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v11, "VARIANT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->VARIANT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 240
    new-instance v11, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v13, "HIDDEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 149
    sput-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatter$UnitWidth;
    .locals 1

    .line 149
    const-class v0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberFormatter$UnitWidth;
    .locals 1

    .line 149
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object v0
.end method
