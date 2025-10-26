.class Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RBBIRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPair"
.end annotation


# instance fields
.field first:I

.field second:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 336
    iput v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 340
    iput p2, p0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    return-void
.end method
