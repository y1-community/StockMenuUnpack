.class public final enum Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
.super Ljava/lang/Enum;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpacingPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum CURRENCY_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum INSERT_BETWEEN:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum SURROUNDING_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 56
    const-class v0, Lcom/ibm/icu/impl/CurrencyData;

    .line 57
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v1, "CURRENCY_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 58
    new-instance v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v3, "SURROUNDING_MATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 59
    new-instance v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v5, "INSERT_BETWEEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 60
    new-instance v5, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v7, "COUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 56
    sput-object v7, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .locals 1

    .line 56
    const-class v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .locals 1

    .line 56
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-object v0
.end method
