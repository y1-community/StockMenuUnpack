.class public Lcom/ibm/icu/impl/number/Padder;
.super Ljava/lang/Object;
.source "Padder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/Padder$PadPosition;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FALLBACK_PADDING_STRING:Ljava/lang/String; = " "

.field public static final NONE:Lcom/ibm/icu/impl/number/Padder;


# instance fields
.field paddingString:Ljava/lang/String;

.field position:Lcom/ibm/icu/impl/number/Padder$PadPosition;

.field targetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/number/Padder;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/ibm/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/number/Padder$PadPosition;)V

    sput-object v0, Lcom/ibm/icu/impl/number/Padder;->NONE:Lcom/ibm/icu/impl/number/Padder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/ibm/icu/impl/number/Padder$PadPosition;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, " "

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/ibm/icu/impl/number/Padder;->targetWidth:I

    if-nez p3, :cond_1

    .line 54
    sget-object p3, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    :cond_1
    iput-object p3, p0, Lcom/ibm/icu/impl/number/Padder;->position:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-void
.end method

.method private static addPaddingHelper(Ljava/lang/String;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p2, p3, p0, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int p0, p0, p1

    return p0
.end method

.method public static codePoints(IILcom/ibm/icu/impl/number/Padder$PadPosition;)Lcom/ibm/icu/impl/number/Padder;
    .locals 1

    if-ltz p1, :cond_0

    .line 64
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 65
    new-instance v0, Lcom/ibm/icu/impl/number/Padder;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/number/Padder$PadPosition;)V

    return-object v0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Padding width must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/Padder;
    .locals 3

    .line 72
    new-instance v0, Lcom/ibm/icu/impl/number/Padder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v2

    .line 74
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadPosition()Lcom/ibm/icu/impl/number/Padder$PadPosition;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/ibm/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/number/Padder$PadPosition;)V

    return-object v0
.end method

.method public static none()Lcom/ibm/icu/impl/number/Padder;
    .locals 1

    .line 58
    sget-object v0, Lcom/ibm/icu/impl/number/Padder;->NONE:Lcom/ibm/icu/impl/number/Padder;

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/ibm/icu/impl/number/Padder;->targetWidth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public padAndApply(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 4

    .line 87
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v0

    invoke-interface {p2}, Lcom/ibm/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    iget v1, p0, Lcom/ibm/icu/impl/number/Padder;->targetWidth:I

    sub-int/2addr v1, v0

    invoke-virtual {p3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointCount()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-gtz v1, :cond_0

    .line 95
    invoke-interface {p1, p3, p4, p5}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr p5, p1

    .line 96
    invoke-interface {p2, p3, p4, p5}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    return p1

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/number/Padder;->position:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    sget-object v3, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    if-ne v2, v3, :cond_1

    .line 101
    iget-object v2, p0, Lcom/ibm/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    invoke-static {v2, v1, p3, p4}, Lcom/ibm/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    goto :goto_1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/number/Padder;->position:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    sget-object v3, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    if-ne v2, v3, :cond_2

    .line 103
    iget-object v2, p0, Lcom/ibm/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    add-int/lit8 v3, p5, 0x0

    invoke-static {v2, v1, p3, v3}, Lcom/ibm/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    add-int v2, p5, v0

    .line 105
    invoke-interface {p1, p3, p4, v2}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p1

    add-int/2addr v0, p1

    add-int p1, p5, v0

    .line 106
    invoke-interface {p2, p3, p4, p1}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p1

    add-int/2addr v0, p1

    .line 107
    iget-object p1, p0, Lcom/ibm/icu/impl/number/Padder;->position:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    sget-object p2, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    if-ne p1, p2, :cond_3

    .line 108
    iget-object p1, p0, Lcom/ibm/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    invoke-static {p1, v1, p3, p4}, Lcom/ibm/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    :goto_2
    add-int/2addr v0, p1

    goto :goto_3

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/number/Padder;->position:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    sget-object p2, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    if-ne p1, p2, :cond_4

    .line 110
    iget-object p1, p0, Lcom/ibm/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    add-int/2addr p5, v0

    invoke-static {p1, v1, p3, p5}, Lcom/ibm/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_3
    return v0
.end method
