.class public interface abstract Lcom/ibm/icu/impl/number/AffixPatternProvider;
.super Ljava/lang/Object;
.source "AffixPatternProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/AffixPatternProvider$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_NEG_PREFIX:I = 0x300

.field public static final FLAG_NEG_SUFFIX:I = 0x200

.field public static final FLAG_POS_PREFIX:I = 0x100

.field public static final FLAG_POS_SUFFIX:I


# virtual methods
.method public abstract charAt(II)C
.end method

.method public abstract containsSymbolType(I)Z
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract hasBody()Z
.end method

.method public abstract hasCurrencySign()Z
.end method

.method public abstract hasNegativeSubpattern()Z
.end method

.method public abstract length(I)I
.end method

.method public abstract negativeHasMinusSign()Z
.end method

.method public abstract positiveHasPlusSign()Z
.end method
