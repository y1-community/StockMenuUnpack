.class public final enum Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
.super Ljava/lang/Enum;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/MeasureFormat$FormatWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum DEFAULT_CURRENCY:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final enum WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;


# instance fields
.field final currencyWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field final listWidth:Lcom/ibm/icu/text/ListFormatter$Width;

.field final unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 163
    new-instance v6, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Lcom/ibm/icu/text/ListFormatter$Width;->WIDE:Lcom/ibm/icu/text/ListFormatter$Width;

    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v5, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "WIDE"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Width;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v6, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 170
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v10, Lcom/ibm/icu/text/ListFormatter$Width;->SHORT:Lcom/ibm/icu/text/ListFormatter$Width;

    sget-object v11, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v12, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v8, "SHORT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Width;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 177
    new-instance v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v16, Lcom/ibm/icu/text/ListFormatter$Width;->NARROW:Lcom/ibm/icu/text/ListFormatter$Width;

    sget-object v17, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v18, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v14, "NARROW"

    const/4 v15, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Width;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 186
    new-instance v2, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v10, Lcom/ibm/icu/text/ListFormatter$Width;->NARROW:Lcom/ibm/icu/text/ListFormatter$Width;

    sget-object v11, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v12, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v8, "NUMERIC"

    const/4 v9, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Width;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v2, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 195
    new-instance v3, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v16, Lcom/ibm/icu/text/ListFormatter$Width;->SHORT:Lcom/ibm/icu/text/ListFormatter$Width;

    sget-object v17, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v18, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v14, "DEFAULT_CURRENCY"

    const/4 v15, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Width;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v3, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 156
    sput-object v4, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/ListFormatter$Width;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/ListFormatter$Width;",
            "Lcom/ibm/icu/number/NumberFormatter$UnitWidth;",
            "Lcom/ibm/icu/number/NumberFormatter$UnitWidth;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 216
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->listWidth:Lcom/ibm/icu/text/ListFormatter$Width;

    .line 217
    iput-object p4, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 218
    iput-object p5, p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->currencyWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 156
    const-class v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 156
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method
