.class Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;
.super Lcom/ibm/icu/number/CurrencyPrecision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrencyRounderImpl"
.end annotation


# instance fields
.field final usage:Lcom/ibm/icu/util/Currency$CurrencyUsage;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V
    .locals 0

    .line 824
    invoke-direct {p0}, Lcom/ibm/icu/number/CurrencyPrecision;-><init>()V

    .line 825
    iput-object p1, p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->usage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 0

    .line 831
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;
    .locals 2

    .line 836
    new-instance v0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->usage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;-><init>(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V

    .line 837
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 821
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    move-result-object v0

    return-object v0
.end method
