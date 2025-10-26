.class Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;
.super Lcom/ibm/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfiniteRounderImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 1

    .line 629
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    const/4 v0, 0x0

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;->setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    return-void
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;
    .locals 2

    .line 635
    new-instance v0, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

    invoke-direct {v0}, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;-><init>()V

    .line 636
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;->createCopy()Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

    move-result-object v0

    return-object v0
.end method
