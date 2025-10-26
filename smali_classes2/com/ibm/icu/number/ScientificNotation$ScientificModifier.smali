.class Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;
.super Ljava/lang/Object;
.source "ScientificNotation.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/ScientificNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScientificModifier"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final exponent:I

.field final handler:Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 290
    const-class v0, Lcom/ibm/icu/number/ScientificNotation;

    return-void
.end method

.method constructor <init>(ILcom/ibm/icu/number/ScientificNotation$ScientificHandler;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    .line 296
    iput-object p2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;->handler:Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 1

    .line 301
    iget-object p2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;->handler:Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;

    iget v0, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    invoke-static {p2, v0, p1, p3}, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->access$100(Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    return p1
.end method

.method public containsField(Ljava/text/Format$Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCodePointCount()I
    .locals 1

    const/16 v0, 0x3e7

    return v0
.end method

.method public getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStrong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
    .locals 2

    .line 338
    instance-of v0, p1, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 341
    :cond_0
    check-cast p1, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    .line 343
    iget v0, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    iget p1, p1, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
