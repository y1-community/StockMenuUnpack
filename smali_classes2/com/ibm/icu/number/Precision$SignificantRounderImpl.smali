.class Lcom/ibm/icu/number/Precision$SignificantRounderImpl;
.super Lcom/ibm/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignificantRounderImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final maxSig:I

.field final minSig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 664
    const-class v0, Lcom/ibm/icu/number/Precision;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    .line 669
    iput p1, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    .line 670
    iput p2, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 675
    iget v0, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    invoke-static {p1, v0}, Lcom/ibm/icu/number/Precision;->access$200(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 676
    iget v0, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    invoke-static {p1, v0}, Lcom/ibm/icu/number/Precision;->access$300(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    .line 678
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 679
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    :cond_0
    return-void
.end method

.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V
    .locals 1

    .line 689
    iget v0, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$SignificantRounderImpl;
    .locals 3

    .line 694
    new-instance v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    iget v1, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    iget v2, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    .line 695
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    move-result-object v0

    return-object v0
.end method
