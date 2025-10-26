.class public Lcom/ibm/icu/impl/number/MultiplierFormatHandler;
.super Ljava/lang/Object;
.source "MultiplierFormatHandler.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# instance fields
.field final multiplier:Lcom/ibm/icu/number/Scale;

.field final parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/number/Scale;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MultiplierFormatHandler;->multiplier:Lcom/ibm/icu/number/Scale;

    .line 16
    iput-object p2, p0, Lcom/ibm/icu/impl/number/MultiplierFormatHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-void
.end method


# virtual methods
.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MultiplierFormatHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MultiplierFormatHandler;->multiplier:Lcom/ibm/icu/number/Scale;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/number/Scale;->applyTo(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    return-object v0
.end method
