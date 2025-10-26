.class public interface abstract Lcom/ibm/icu/impl/number/DecimalQuantity;
.super Ljava/lang/Object;
.source "DecimalQuantity.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$IFixedDecimal;


# virtual methods
.method public abstract adjustExponent(I)V
.end method

.method public abstract adjustMagnitude(I)V
.end method

.method public abstract applyMaxInteger(I)V
.end method

.method public abstract copyFrom(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
.end method

.method public abstract createCopy()Lcom/ibm/icu/impl/number/DecimalQuantity;
.end method

.method public abstract getDigit(I)B
.end method

.method public abstract getExponent()I
.end method

.method public abstract getLowerDisplayMagnitude()I
.end method

.method public abstract getMagnitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation
.end method

.method public abstract getPositionFingerprint()J
.end method

.method public abstract getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;
.end method

.method public abstract getUpperDisplayMagnitude()I
.end method

.method public abstract isInfinite()Z
.end method

.method public abstract isNaN()Z
.end method

.method public abstract isNegative()Z
.end method

.method public abstract isZeroish()Z
.end method

.method public abstract maxRepresentableDigits()I
.end method

.method public abstract multiplyBy(Ljava/math/BigDecimal;)V
.end method

.method public abstract negate()V
.end method

.method public abstract populateUFieldPosition(Ljava/text/FieldPosition;)V
.end method

.method public abstract roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
.end method

.method public abstract roundToInfinity()V
.end method

.method public abstract roundToMagnitude(ILjava/math/MathContext;)V
.end method

.method public abstract roundToNickel(ILjava/math/MathContext;)V
.end method

.method public abstract setMinFraction(I)V
.end method

.method public abstract setMinInteger(I)V
.end method

.method public abstract setToBigDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract signum()Lcom/ibm/icu/impl/number/Modifier$Signum;
.end method

.method public abstract toBigDecimal()Ljava/math/BigDecimal;
.end method

.method public abstract toDouble()D
.end method

.method public abstract toLong(Z)J
.end method

.method public abstract toPlainString()Ljava/lang/String;
.end method
