.class Lcom/ibm/icu/number/Precision$FractionRounderImpl;
.super Lcom/ibm/icu/number/FractionPrecision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FractionRounderImpl"
.end annotation


# instance fields
.field final maxFrac:I

.field final minFrac:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 645
    invoke-direct {p0}, Lcom/ibm/icu/number/FractionPrecision;-><init>()V

    .line 646
    iput p1, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    .line 647
    iput p2, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 652
    iget v0, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    invoke-static {v0}, Lcom/ibm/icu/number/Precision;->access$000(I)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 653
    iget v0, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    invoke-static {v0}, Lcom/ibm/icu/number/Precision;->access$100(I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$FractionRounderImpl;
    .locals 3

    .line 658
    new-instance v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    iget v1, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    iget v2, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    .line 659
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 641
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    move-result-object v0

    return-object v0
.end method
