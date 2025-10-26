.class public Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
.super Ljava/lang/Object;
.source "MutablePatternModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/MutablePatternModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutablePatternModifier"
.end annotation


# instance fields
.field parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field final pm:Lcom/ibm/icu/impl/number/AdoptingModifierStore;

.field final rules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/number/AdoptingModifierStore;Lcom/ibm/icu/text/PluralRules;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Lcom/ibm/icu/impl/number/AdoptingModifierStore;

    .line 222
    iput-object p2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Lcom/ibm/icu/text/PluralRules;

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-void
.end method


# virtual methods
.method public addToChain(Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-object p0
.end method

.method public applyToMicros(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Lcom/ibm/icu/text/PluralRules;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Lcom/ibm/icu/impl/number/AdoptingModifierStore;

    invoke-interface {p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->signum()Lcom/ibm/icu/impl/number/Modifier$Signum;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->getModifierWithoutPlural(Lcom/ibm/icu/impl/number/Modifier$Signum;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p2

    iput-object p2, p1, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/impl/number/RoundingUtils;->getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Lcom/ibm/icu/impl/number/AdoptingModifierStore;

    invoke-interface {p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->signum()Lcom/ibm/icu/impl/number/Modifier$Signum;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->getModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p2

    iput-object p2, p1, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    :goto_0
    return-void
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 234
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    .line 237
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    if-eqz v1, :cond_1

    return-object v0

    .line 240
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->applyToMicros(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    return-object v0
.end method
