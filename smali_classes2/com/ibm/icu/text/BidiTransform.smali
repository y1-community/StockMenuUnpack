.class public Lcom/ibm/icu/text/BidiTransform;
.super Ljava/lang/Object;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;,
        Lcom/ibm/icu/text/BidiTransform$Mirroring;,
        Lcom/ibm/icu/text/BidiTransform$Order;
    }
.end annotation


# instance fields
.field private bidi:Lcom/ibm/icu/text/Bidi;

.field private reorderingOptions:I

.field private shapingOptions:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsLTR(B)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static IsLogical(Lcom/ibm/icu/text/BidiTransform$Order;)Z
    .locals 1

    .line 646
    sget-object v0, Lcom/ibm/icu/text/BidiTransform$Order;->LOGICAL:Lcom/ibm/icu/text/BidiTransform$Order;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/BidiTransform$Order;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static IsRTL(B)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static IsVisual(Lcom/ibm/icu/text/BidiTransform$Order;)Z
    .locals 1

    .line 655
    sget-object v0, Lcom/ibm/icu/text/BidiTransform$Order;->VISUAL:Lcom/ibm/icu/text/BidiTransform$Order;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/BidiTransform$Order;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(B)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/ibm/icu/text/BidiTransform;->IsLTR(B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/ibm/icu/text/BidiTransform;->IsLogical(Lcom/ibm/icu/text/BidiTransform$Order;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/ibm/icu/text/BidiTransform;->IsVisual(Lcom/ibm/icu/text/BidiTransform$Order;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/BidiTransform;II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/BidiTransform;->shapeArabic(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/BidiTransform;BI)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/BidiTransform;->resolve(BI)V

    return-void
.end method

.method static synthetic access$600(Lcom/ibm/icu/text/BidiTransform;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ibm/icu/text/BidiTransform;->reorder()V

    return-void
.end method

.method static synthetic access$700(B)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/ibm/icu/text/BidiTransform;->IsRTL(B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/BidiTransform;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ibm/icu/text/BidiTransform;->reverse()V

    return-void
.end method

.method static synthetic access$900(Lcom/ibm/icu/text/BidiTransform;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ibm/icu/text/BidiTransform;->mirror()V

    return-void
.end method

.method private findMatchingScheme(BLcom/ibm/icu/text/BidiTransform$Order;BLcom/ibm/icu/text/BidiTransform$Order;)Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;
    .locals 5

    .line 282
    invoke-static {}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->values()[Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 283
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->matches(BLcom/ibm/icu/text/BidiTransform$Order;BLcom/ibm/icu/text/BidiTransform$Order;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private mirror()V
    .locals 6

    .line 323
    iget v0, p0, Lcom/ibm/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/ibm/icu/text/BidiTransform;->bidi:Lcom/ibm/icu/text/Bidi;

    invoke-virtual {v1}, Lcom/ibm/icu/text/Bidi;->getLevels()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 328
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 329
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I

    move-result v4

    .line 330
    aget-byte v5, v1, v2

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 331
    invoke-static {v4}, Lcom/ibm/icu/lang/UCharacter;->getMirror(I)I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/ibm/icu/text/UTF16;->setCharAt(Ljava/lang/StringBuffer;II)V

    .line 333
    :cond_1
    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    .line 336
    iget v0, p0, Lcom/ibm/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ibm/icu/text/BidiTransform;->reorderingOptions:I

    return-void
.end method

.method private reorder()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->bidi:Lcom/ibm/icu/text/Bidi;

    iget v1, p0, Lcom/ibm/icu/text/BidiTransform;->reorderingOptions:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Lcom/ibm/icu/text/BidiTransform;->reorderingOptions:I

    return-void
.end method

.method private resolve(BI)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->bidi:Lcom/ibm/icu/text/Bidi;

    and-int/lit8 v1, p2, 0x5

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Bidi;->setInverse(Z)V

    .line 298
    iget-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->bidi:Lcom/ibm/icu/text/Bidi;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/Bidi;->setReorderingMode(I)V

    .line 299
    iget-object p2, p0, Lcom/ibm/icu/text/BidiTransform;->bidi:Lcom/ibm/icu/text/Bidi;

    iget-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ibm/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    return-void
.end method

.method private resolveBaseDirection([B)V
    .locals 4

    const/4 v0, 0x0

    .line 260
    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->getBaseDirection(Ljava/lang/CharSequence;)B

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    aget-byte v1, p1, v0

    const/16 v3, 0x7f

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    aput-byte v1, p1, v0

    goto :goto_1

    .line 265
    :cond_2
    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 267
    :goto_1
    aget-byte v1, p1, v2

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    aget-byte v0, p1, v0

    aput-byte v0, p1, v2

    goto :goto_2

    .line 270
    :cond_3
    aget-byte v0, p1, v2

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    :goto_2
    return-void
.end method

.method private reverse()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/Bidi;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    return-void
.end method

.method private shapeArabic(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 369
    new-instance v0, Lcom/ibm/icu/text/ArabicShaping;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/ArabicShaping;-><init>(I)V

    .line 371
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/ArabicShaping;->shape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;
    :try_end_0
    .catch Lcom/ibm/icu/text/ArabicShapingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private shapeArabic(II)V
    .locals 1

    if-ne p1, p2, :cond_0

    .line 350
    iget p2, p0, Lcom/ibm/icu/text/BidiTransform;->shapingOptions:I

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/BidiTransform;->shapeArabic(I)V

    goto :goto_0

    .line 354
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/BidiTransform;->shapingOptions:I

    and-int/lit8 v0, v0, -0x19

    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/BidiTransform;->shapeArabic(I)V

    .line 358
    iget p1, p0, Lcom/ibm/icu/text/BidiTransform;->shapingOptions:I

    and-int/lit16 p1, p1, -0xe1

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/BidiTransform;->shapeArabic(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/CharSequence;BLcom/ibm/icu/text/BidiTransform$Order;BLcom/ibm/icu/text/BidiTransform$Order;Lcom/ibm/icu/text/BidiTransform$Mirroring;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 p1, 0x2

    new-array v0, p1, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p4, v0, p2

    .line 232
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/BidiTransform;->resolveBaseDirection([B)V

    aget-byte p4, v0, v1

    aget-byte p2, v0, p2

    .line 234
    invoke-direct {p0, p4, p3, p2, p5}, Lcom/ibm/icu/text/BidiTransform;->findMatchingScheme(BLcom/ibm/icu/text/BidiTransform$Order;BLcom/ibm/icu/text/BidiTransform$Order;)Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 237
    new-instance p3, Lcom/ibm/icu/text/Bidi;

    invoke-direct {p3}, Lcom/ibm/icu/text/Bidi;-><init>()V

    iput-object p3, p0, Lcom/ibm/icu/text/BidiTransform;->bidi:Lcom/ibm/icu/text/Bidi;

    .line 238
    sget-object p3, Lcom/ibm/icu/text/BidiTransform$Mirroring;->ON:Lcom/ibm/icu/text/BidiTransform$Mirroring;

    invoke-virtual {p3, p6}, Lcom/ibm/icu/text/BidiTransform$Mirroring;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/ibm/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 p1, p7, -0x5

    .line 243
    iput p1, p0, Lcom/ibm/icu/text/BidiTransform;->shapingOptions:I

    .line 244
    invoke-virtual {p2, p0}, Lcom/ibm/icu/text/BidiTransform$ReorderingScheme;->doTransform(Lcom/ibm/icu/text/BidiTransform;)V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/BidiTransform;->text:Ljava/lang/String;

    return-object p1

    .line 227
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
