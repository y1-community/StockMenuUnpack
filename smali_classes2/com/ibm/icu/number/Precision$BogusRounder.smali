.class public Lcom/ibm/icu/number/Precision$BogusRounder;
.super Lcom/ibm/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BogusRounder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "BogusRounder must not be applied"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method createCopy()Lcom/ibm/icu/number/Precision$BogusRounder;
    .locals 2

    .line 603
    new-instance v0, Lcom/ibm/icu/number/Precision$BogusRounder;

    invoke-direct {v0}, Lcom/ibm/icu/number/Precision$BogusRounder;-><init>()V

    .line 604
    iget-object v1, p0, Lcom/ibm/icu/number/Precision$BogusRounder;->mathContext:Ljava/math/MathContext;

    iput-object v1, v0, Lcom/ibm/icu/number/Precision$BogusRounder;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method bridge synthetic createCopy()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision$BogusRounder;->createCopy()Lcom/ibm/icu/number/Precision$BogusRounder;

    move-result-object v0

    return-object v0
.end method

.method public into(Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/number/Precision;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    invoke-virtual {p1}, Lcom/ibm/icu/number/Precision;->createCopy()Lcom/ibm/icu/number/Precision;

    move-result-object p1

    .line 617
    iget-object v0, p0, Lcom/ibm/icu/number/Precision$BogusRounder;->mathContext:Ljava/math/MathContext;

    iput-object v0, p1, Lcom/ibm/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    return-object p1
.end method
