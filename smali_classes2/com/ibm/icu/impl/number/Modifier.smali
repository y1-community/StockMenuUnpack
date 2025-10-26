.class public interface abstract Lcom/ibm/icu/impl/number/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/Modifier$Parameters;,
        Lcom/ibm/icu/impl/number/Modifier$Signum;
    }
.end annotation


# virtual methods
.method public abstract apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
.end method

.method public abstract containsField(Ljava/text/Format$Field;)Z
.end method

.method public abstract getCodePointCount()I
.end method

.method public abstract getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
.end method

.method public abstract getPrefixLength()I
.end method

.method public abstract isStrong()Z
.end method

.method public abstract semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
.end method
