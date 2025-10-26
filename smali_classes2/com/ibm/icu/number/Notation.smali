.class public Lcom/ibm/icu/number/Notation;
.super Ljava/lang/Object;
.source "Notation.java"


# static fields
.field private static final COMPACT_LONG:Lcom/ibm/icu/number/CompactNotation;

.field private static final COMPACT_SHORT:Lcom/ibm/icu/number/CompactNotation;

.field private static final ENGINEERING:Lcom/ibm/icu/number/ScientificNotation;

.field private static final SCIENTIFIC:Lcom/ibm/icu/number/ScientificNotation;

.field private static final SIMPLE:Lcom/ibm/icu/number/SimpleNotation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/ibm/icu/number/ScientificNotation;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Lcom/ibm/icu/number/ScientificNotation;-><init>(IZILcom/ibm/icu/number/NumberFormatter$SignDisplay;)V

    sput-object v0, Lcom/ibm/icu/number/Notation;->SCIENTIFIC:Lcom/ibm/icu/number/ScientificNotation;

    .line 21
    new-instance v0, Lcom/ibm/icu/number/ScientificNotation;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/ibm/icu/number/ScientificNotation;-><init>(IZILcom/ibm/icu/number/NumberFormatter$SignDisplay;)V

    sput-object v0, Lcom/ibm/icu/number/Notation;->ENGINEERING:Lcom/ibm/icu/number/ScientificNotation;

    .line 25
    new-instance v0, Lcom/ibm/icu/number/CompactNotation;

    sget-object v1, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/CompactNotation;-><init>(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)V

    sput-object v0, Lcom/ibm/icu/number/Notation;->COMPACT_SHORT:Lcom/ibm/icu/number/CompactNotation;

    .line 26
    new-instance v0, Lcom/ibm/icu/number/CompactNotation;

    sget-object v1, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/CompactNotation;-><init>(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)V

    sput-object v0, Lcom/ibm/icu/number/Notation;->COMPACT_LONG:Lcom/ibm/icu/number/CompactNotation;

    .line 27
    new-instance v0, Lcom/ibm/icu/number/SimpleNotation;

    invoke-direct {v0}, Lcom/ibm/icu/number/SimpleNotation;-><init>()V

    sput-object v0, Lcom/ibm/icu/number/Notation;->SIMPLE:Lcom/ibm/icu/number/SimpleNotation;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compactLong()Lcom/ibm/icu/number/CompactNotation;
    .locals 1

    .line 159
    sget-object v0, Lcom/ibm/icu/number/Notation;->COMPACT_LONG:Lcom/ibm/icu/number/CompactNotation;

    return-object v0
.end method

.method public static compactShort()Lcom/ibm/icu/number/CompactNotation;
    .locals 1

    .line 132
    sget-object v0, Lcom/ibm/icu/number/Notation;->COMPACT_SHORT:Lcom/ibm/icu/number/CompactNotation;

    return-object v0
.end method

.method public static engineering()Lcom/ibm/icu/number/ScientificNotation;
    .locals 1

    .line 86
    sget-object v0, Lcom/ibm/icu/number/Notation;->ENGINEERING:Lcom/ibm/icu/number/ScientificNotation;

    return-object v0
.end method

.method public static scientific()Lcom/ibm/icu/number/ScientificNotation;
    .locals 1

    .line 59
    sget-object v0, Lcom/ibm/icu/number/Notation;->SCIENTIFIC:Lcom/ibm/icu/number/ScientificNotation;

    return-object v0
.end method

.method public static simple()Lcom/ibm/icu/number/SimpleNotation;
    .locals 1

    .line 189
    sget-object v0, Lcom/ibm/icu/number/Notation;->SIMPLE:Lcom/ibm/icu/number/SimpleNotation;

    return-object v0
.end method
