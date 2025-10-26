.class Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;
.super Lcom/ibm/icu/number/Precision$IncrementRounderImpl;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementOneRounderImpl"
.end annotation


# instance fields
.field final maxFrac:I

.field final minFrac:I


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;II)V
    .locals 0

    .line 775
    invoke-direct {p0, p1}, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    .line 776
    iput p2, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->minFrac:I

    .line 777
    iput p3, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->maxFrac:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 782
    iget v0, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->maxFrac:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 783
    iget v0, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->minFrac:I

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;
    .locals 4

    .line 788
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->increment:Ljava/math/BigDecimal;

    iget v2, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->minFrac:I

    iget v3, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    .line 789
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision$IncrementRounderImpl;
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;

    move-result-object v0

    return-object v0
.end method
