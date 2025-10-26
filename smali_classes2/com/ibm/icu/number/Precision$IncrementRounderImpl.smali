.class Lcom/ibm/icu/number/Precision$IncrementRounderImpl;
.super Lcom/ibm/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementRounderImpl"
.end annotation


# instance fields
.field final increment:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 747
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    .line 748
    iput-object p1, p0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    .line 754
    iget-object v0, p0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$IncrementRounderImpl;
    .locals 2

    .line 759
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    .line 760
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    move-result-object v0

    return-object v0
.end method
