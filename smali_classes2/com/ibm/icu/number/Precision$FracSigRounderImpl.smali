.class Lcom/ibm/icu/number/Precision$FracSigRounderImpl;
.super Lcom/ibm/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FracSigRounderImpl"
.end annotation


# instance fields
.field final maxFrac:I

.field final maxSig:I

.field final minFrac:I

.field final minSig:I

.field final priority:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;


# direct methods
.method public constructor <init>(IIIILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)V
    .locals 0

    .line 707
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    .line 708
    iput p1, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    .line 709
    iput p2, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    .line 710
    iput p3, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minSig:I

    .line 711
    iput p4, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    .line 712
    iput-object p5, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->priority:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 4

    .line 717
    iget v0, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    invoke-static {v0}, Lcom/ibm/icu/number/Precision;->access$000(I)I

    move-result v0

    .line 718
    iget v1, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    invoke-static {p1, v1}, Lcom/ibm/icu/number/Precision;->access$200(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I

    move-result v1

    .line 720
    iget-object v2, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->priority:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    if-ne v2, v3, :cond_0

    .line 721
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 723
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 725
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 727
    iget v0, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    invoke-static {v0}, Lcom/ibm/icu/number/Precision;->access$100(I)I

    move-result v0

    .line 728
    iget v1, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minSig:I

    invoke-static {p1, v1}, Lcom/ibm/icu/number/Precision;->access$300(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I

    move-result v1

    .line 729
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    neg-int v0, v0

    .line 730
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$FracSigRounderImpl;
    .locals 7

    .line 735
    new-instance v6, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    iget v1, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    iget v2, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    iget v3, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minSig:I

    iget v4, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    iget-object v5, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->priority:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;-><init>(IIIILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)V

    .line 736
    iget-object v0, p0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v0, v6, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v6
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    move-result-object v0

    return-object v0
.end method
