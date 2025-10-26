.class public final enum Lcom/ibm/icu/util/Currency$CurrencyUsage;
.super Ljava/lang/Enum;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/Currency$CurrencyUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/Currency$CurrencyUsage;

.field public static final enum CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

.field public static final enum STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 133
    new-instance v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    .line 140
    new-instance v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const-string v3, "CASH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/util/Currency$CurrencyUsage;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 127
    sput-object v3, Lcom/ibm/icu/util/Currency$CurrencyUsage;->$VALUES:[Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    .line 127
    const-class v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    .line 127
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->$VALUES:[Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/Currency$CurrencyUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method
