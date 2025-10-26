.class public Lcom/ibm/icu/impl/number/parse/MultiplierParseHandler;
.super Lcom/ibm/icu/impl/number/parse/ValidationMatcher;
.source "MultiplierParseHandler.java"


# instance fields
.field private final multiplier:Lcom/ibm/icu/number/Scale;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/number/Scale;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/parse/ValidationMatcher;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/MultiplierParseHandler;->multiplier:Lcom/ibm/icu/number/Scale;

    return-void
.end method


# virtual methods
.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    .line 20
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/MultiplierParseHandler;->multiplier:Lcom/ibm/icu/number/Scale;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/Scale;->applyReciprocalTo(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<MultiplierHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/MultiplierParseHandler;->multiplier:Lcom/ibm/icu/number/Scale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
