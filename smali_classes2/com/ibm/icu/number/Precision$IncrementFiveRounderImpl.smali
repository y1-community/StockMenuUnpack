.class Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;
.super Lcom/ibm/icu/number/Precision$IncrementRounderImpl;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementFiveRounderImpl"
.end annotation


# instance fields
.field final maxFrac:I

.field final minFrac:I


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;II)V
    .locals 0

    .line 802
    invoke-direct {p0, p1}, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    .line 803
    iput p2, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->minFrac:I

    .line 804
    iput p3, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->maxFrac:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 809
    iget v0, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->maxFrac:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToNickel(ILjava/math/MathContext;)V

    .line 810
    iget v0, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->minFrac:I

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;
    .locals 4

    .line 815
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->increment:Ljava/math/BigDecimal;

    iget v2, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->minFrac:I

    iget v3, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    .line 816
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision$IncrementRounderImpl;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    move-result-object v0

    return-object v0
.end method
