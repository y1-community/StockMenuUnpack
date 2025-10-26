.class public Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;
.super Ljava/lang/Object;
.source "ConversionRates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/ConversionRates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionRateInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final conversionRate:Ljava/lang/String;

.field private final offset:Ljava/math/BigDecimal;

.field private final simpleUnit:Ljava/lang/String;

.field private final target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    const-class v0, Lcom/ibm/icu/impl/units/ConversionRates;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->simpleUnit:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->target:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->conversionRate:Ljava/lang/String;

    .line 202
    invoke-static {p4}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->forNumberWithDivision(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->offset:Ljava/math/BigDecimal;

    return-void
.end method

.method private static forNumberWithDivision(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3

    const-string v0, "/"

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 210
    new-instance v0, Ljava/math/BigDecimal;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConversionRate()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->conversionRate:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Ljava/math/BigDecimal;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->offset:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->target:Ljava/lang/String;

    return-object v0
.end method
