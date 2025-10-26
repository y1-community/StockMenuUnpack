.class public final Lcom/ibm/icu/impl/UTS46;
.super Lcom/ibm/icu/text/IDNA;
.source "UTS46.java"


# static fields
.field private static final EN_AN_MASK:I

.field private static final ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_MASK:I

.field private static final L_MASK:I

.field private static final L_R_AL_MASK:I

.field private static final R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final R_AL_AN_MASK:I

.field private static final R_AL_EN_AN_MASK:I

.field private static final R_AL_MASK:I

.field private static U_GC_M_MASK:I

.field private static final asciiData:[B

.field private static final severeErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final uts46Norm2:Lcom/ibm/icu/text/Normalizer2;


# instance fields
.field final options:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 68
    sget-object v0, Lcom/ibm/icu/text/Normalizer2$Mode;->COMPOSE:Lcom/ibm/icu/text/Normalizer2$Mode;

    const/4 v1, 0x0

    const-string v2, "uts46"

    .line 69
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/text/Normalizer2;->getInstance(Ljava/io/InputStream;Ljava/lang/String;Lcom/ibm/icu/text/Normalizer2$Mode;)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 73
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Lcom/ibm/icu/text/IDNA$Error;

    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->PUNYCODE:Lcom/ibm/icu/text/IDNA$Error;

    sget-object v3, Lcom/ibm/icu/text/IDNA$Error;->LABEL_HAS_DOT:Lcom/ibm/icu/text/IDNA$Error;

    sget-object v4, Lcom/ibm/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 98
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/UTS46;->asciiData:[B

    const/4 v0, 0x0

    .line 540
    invoke-static {v0}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UTS46;->L_MASK:I

    const/4 v1, 0x1

    .line 542
    invoke-static {v1}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    const/16 v2, 0xd

    .line 543
    invoke-static {v2}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lcom/ibm/icu/impl/UTS46;->R_AL_MASK:I

    or-int v2, v0, v1

    .line 544
    sput v2, Lcom/ibm/icu/impl/UTS46;->L_R_AL_MASK:I

    const/4 v2, 0x5

    .line 546
    invoke-static {v2}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v3

    or-int/2addr v3, v1

    sput v3, Lcom/ibm/icu/impl/UTS46;->R_AL_AN_MASK:I

    const/4 v3, 0x2

    .line 549
    invoke-static {v3}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v4

    .line 550
    invoke-static {v2}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr v2, v4

    sput v2, Lcom/ibm/icu/impl/UTS46;->EN_AN_MASK:I

    or-int v4, v1, v2

    .line 551
    sput v4, Lcom/ibm/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    .line 552
    invoke-static {v3}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v3

    or-int/2addr v0, v3

    sput v0, Lcom/ibm/icu/impl/UTS46;->L_EN_MASK:I

    const/4 v3, 0x3

    .line 555
    invoke-static {v3}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v3

    const/4 v4, 0x6

    .line 556
    invoke-static {v4}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    or-int/2addr v3, v5

    const/4 v5, 0x4

    .line 557
    invoke-static {v5}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    or-int/2addr v3, v5

    const/16 v5, 0xa

    .line 558
    invoke-static {v5}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    or-int/2addr v3, v5

    const/16 v5, 0x12

    .line 559
    invoke-static {v5}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    or-int/2addr v3, v5

    const/16 v5, 0x11

    .line 560
    invoke-static {v5}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    or-int/2addr v3, v5

    sput v3, Lcom/ibm/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    or-int/2addr v0, v3

    .line 561
    sput v0, Lcom/ibm/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    or-int v0, v1, v2

    or-int/2addr v0, v3

    .line 562
    sput v0, Lcom/ibm/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    .line 859
    invoke-static {v4}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    const/4 v1, 0x7

    .line 860
    invoke-static {v1}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x8

    .line 861
    invoke-static {v1}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/impl/UTS46;->U_GC_M_MASK:I

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ibm/icu/text/IDNA;-><init>()V

    .line 38
    iput p1, p0, Lcom/ibm/icu/impl/UTS46;->options:I

    return-void
.end method

.method private static U_GET_GC_MASK(I)I
    .locals 1

    .line 856
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static U_MASK(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private checkLabelBiDi(Ljava/lang/CharSequence;IILcom/ibm/icu/text/IDNA$Info;)V
    .locals 4

    .line 575
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 576
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 577
    sget-object v2, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    .line 581
    sget v2, Lcom/ibm/icu/impl/UTS46;->L_R_AL_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 582
    invoke-static {p4}, Lcom/ibm/icu/impl/UTS46;->setNotOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)V

    :cond_0
    add-int/2addr p2, p3

    :cond_1
    if-lt v1, p2, :cond_2

    move p3, v0

    goto :goto_0

    .line 592
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p3

    .line 593
    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr p2, v2

    .line 594
    sget-object v2, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v2, p3}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result p3

    const/16 v2, 0x11

    if-eq p3, v2, :cond_1

    .line 596
    invoke-static {p3}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result p3

    .line 606
    :goto_0
    sget v2, Lcom/ibm/icu/impl/UTS46;->L_MASK:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    sget v2, Lcom/ibm/icu/impl/UTS46;->L_EN_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_3
    sget v2, Lcom/ibm/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    .line 610
    :goto_1
    invoke-static {p4}, Lcom/ibm/icu/impl/UTS46;->setNotOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)V

    :cond_4
    or-int/2addr p3, v0

    :goto_2
    if-ge v1, p2, :cond_5

    .line 615
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 616
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 617
    sget-object v3, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    or-int/2addr p3, v2

    goto :goto_2

    .line 619
    :cond_5
    sget p1, Lcom/ibm/icu/impl/UTS46;->L_MASK:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 622
    sget p1, Lcom/ibm/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p3

    if-eqz p1, :cond_8

    .line 623
    invoke-static {p4}, Lcom/ibm/icu/impl/UTS46;->setNotOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)V

    goto :goto_3

    .line 628
    :cond_6
    sget p1, Lcom/ibm/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p3

    if-eqz p1, :cond_7

    .line 629
    invoke-static {p4}, Lcom/ibm/icu/impl/UTS46;->setNotOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)V

    .line 633
    :cond_7
    sget p1, Lcom/ibm/icu/impl/UTS46;->EN_AN_MASK:I

    and-int p2, p3, p1

    if-ne p2, p1, :cond_8

    .line 634
    invoke-static {p4}, Lcom/ibm/icu/impl/UTS46;->setNotOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)V

    .line 643
    :cond_8
    :goto_3
    sget p1, Lcom/ibm/icu/impl/UTS46;->R_AL_AN_MASK:I

    and-int/2addr p1, p3

    if-eqz p1, :cond_9

    .line 644
    invoke-static {p4}, Lcom/ibm/icu/impl/UTS46;->setBiDi(Lcom/ibm/icu/text/IDNA$Info;)V

    :cond_9
    return-void
.end method

.method private checkLabelContextO(Ljava/lang/CharSequence;IILcom/ibm/icu/text/IDNA$Info;)V
    .locals 7

    add-int/2addr p3, p2

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_f

    .line 766
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xb7

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0x6f9

    if-gt v3, v5, :cond_b

    if-ne v3, v4, :cond_2

    if-ge p2, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 776
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_1

    if-ge v2, p3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 777
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_e

    .line 778
    :cond_1
    sget-object v3, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p4, v3}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x375

    if-ne v3, v4, :cond_4

    if-ge v2, p3, :cond_3

    const/16 v3, 0xe

    add-int/lit8 v4, v2, 0x1

    .line 786
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v4

    if-eq v3, v4, :cond_e

    .line 787
    :cond_3
    sget-object v3, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p4, v3}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    goto/16 :goto_3

    :cond_4
    const/16 v4, 0x5f3

    if-eq v3, v4, :cond_9

    const/16 v4, 0x5f4

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x660

    if-gt v4, v3, :cond_e

    const/16 v4, 0x669

    if-gt v3, v4, :cond_7

    if-lez v1, :cond_6

    .line 819
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p4, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_6
    const/4 v1, -0x1

    goto :goto_3

    :cond_7
    const/16 v4, 0x6f0

    if-gt v4, v3, :cond_e

    if-gez v1, :cond_8

    .line 824
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p4, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    :goto_1
    if-ge p2, v2, :cond_a

    const/16 v3, 0x13

    .line 800
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v4

    if-eq v3, v4, :cond_e

    .line 801
    :cond_a
    sget-object v3, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p4, v3}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    goto :goto_3

    :cond_b
    const/16 v4, 0x30fb

    if-ne v3, v4, :cond_e

    move v3, p2

    :goto_2
    if-le v3, p3, :cond_c

    .line 838
    sget-object v3, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p4, v3}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    goto :goto_3

    .line 841
    :cond_c
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 842
    invoke-static {v4}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_e

    const/16 v6, 0x16

    if-eq v5, v6, :cond_e

    const/16 v6, 0x11

    if-ne v5, v6, :cond_d

    goto :goto_3

    .line 836
    :cond_d
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_e
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private static isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_8

    .line 665
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    const/16 v5, 0x7a

    const/16 v6, 0x61

    if-ne v3, v4, :cond_3

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    .line 668
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-gt v6, v2, :cond_0

    if-le v2, v5, :cond_2

    :cond_0
    const/16 v3, 0x30

    if-gt v3, v2, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_5

    if-gt v6, v3, :cond_4

    if-le v3, v5, :cond_7

    :cond_4
    return v0

    :cond_5
    const/16 v4, 0x20

    if-gt v3, v4, :cond_7

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_6

    const/16 v4, 0x9

    if-gt v4, v3, :cond_7

    const/16 v4, 0xd

    if-gt v3, v4, :cond_7

    :cond_6
    return v0

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private static isASCIIString(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 82
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 84
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isLabelOkContextJ(Ljava/lang/CharSequence;II)Z
    .locals 7

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_c

    .line 696
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x200c

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-ne v1, v2, :cond_9

    if-ne v0, p2, :cond_0

    return v4

    .line 708
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 709
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int v2, v0, v2

    .line 710
    sget-object v5, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v5, v1}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    goto :goto_4

    .line 715
    :cond_1
    :goto_1
    sget-object v3, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    if-nez v2, :cond_2

    return v4

    .line 720
    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 721
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    const/4 v5, 0x2

    if-eq v1, v2, :cond_5

    if-ne v1, v5, :cond_4

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    :goto_2
    add-int/lit8 v1, v0, 0x1

    :goto_3
    if-ne v1, p3, :cond_6

    return v4

    .line 733
    :cond_6
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 734
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 735
    sget-object v6, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v2

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x4

    if-eq v2, v1, :cond_b

    if-ne v2, v5, :cond_8

    goto :goto_4

    :cond_8
    return v4

    .line 744
    :cond_9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x200d

    if-ne v1, v2, :cond_b

    if-ne v0, p2, :cond_a

    return v4

    .line 752
    :cond_a
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 753
    sget-object v2, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v1

    if-eq v1, v3, :cond_b

    return v4

    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method private static isNonASCIIDisallowedSTD3Valid(I)Z
    .locals 1

    const/16 v0, 0x2260

    if-eq p0, v0, :cond_1

    const/16 v0, 0x226e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x226f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private mapDevChars(Ljava/lang/StringBuilder;II)I
    .locals 5

    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p3, v0, :cond_3

    .line 269
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xdf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c2

    if-eq v2, v3, :cond_1

    const/16 v3, 0x200c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x200d

    if-eq v2, v3, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p3, 0x1

    .line 285
    invoke-virtual {p1, p3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x3c3

    .line 280
    invoke-virtual {p1, p3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move p3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x73

    .line 274
    invoke-virtual {p1, p3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 p3, v1, 0x1

    .line 275
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 297
    sget-object p3, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7fffffff

    .line 298
    invoke-virtual {p1, p2, v0, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method private markBadACELabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I
    .locals 8

    .line 506
    iget v0, p0, Lcom/ibm/icu/impl/UTS46;->options:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int v3, p2, p3

    add-int/lit8 p2, p2, 0x4

    const/4 v4, 0x1

    :goto_1
    const v5, 0xfffd

    if-ge p2, v3, :cond_5

    .line 512
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_3

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1

    .line 515
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->LABEL_HAS_DOT:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p5, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 516
    invoke-virtual {p1, p2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 518
    :cond_1
    sget-object v7, Lcom/ibm/icu/impl/UTS46;->asciiData:[B

    aget-byte v6, v7, v6

    if-gez v6, :cond_4

    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {p1, p2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 530
    invoke-virtual {p1, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    if-eqz v4, :cond_7

    const/16 p1, 0x3f

    if-le p3, p1, :cond_7

    .line 534
    sget-object p1, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p5, p1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_7
    :goto_4
    return p3
.end method

.method private process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 12

    move-object v1, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    if-eq v8, v1, :cond_13

    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v8, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 126
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->resetInfo(Lcom/ibm/icu/text/IDNA$Info;)V

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->EMPTY_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Lcom/ibm/icu/impl/UTS46;->addError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    return-object v8

    :cond_0
    move-object v10, p0

    .line 133
    iget v3, v10, Lcom/ibm/icu/impl/UTS46;->options:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v11, 0x0

    :goto_1
    const/16 v4, 0x3f

    if-ne v2, v0, :cond_5

    if-eqz p3, :cond_4

    sub-int v0, v2, v11

    if-le v0, v4, :cond_2

    .line 140
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_2
    if-nez p2, :cond_4

    const/16 v0, 0xfe

    if-lt v2, v0, :cond_4

    if-gt v2, v0, :cond_3

    if-ge v11, v2, :cond_4

    .line 144
    :cond_3
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Lcom/ibm/icu/impl/UTS46;->addError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 147
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->promoteAndResetLabelErrors(Lcom/ibm/icu/text/IDNA$Info;)V

    return-object v8

    .line 150
    :cond_5
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_6

    goto :goto_2

    .line 154
    :cond_6
    sget-object v6, Lcom/ibm/icu/impl/UTS46;->asciiData:[B

    aget-byte v6, v6, v5

    if-lez v6, :cond_7

    add-int/lit8 v5, v5, 0x20

    int-to-char v4, v5

    .line 156
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_7
    if-gez v6, :cond_8

    if-eqz v3, :cond_8

    :goto_2
    move v3, v2

    goto :goto_4

    .line 160
    :cond_8
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_c

    add-int/lit8 v4, v11, 0x3

    if-ne v2, v4, :cond_9

    add-int/lit8 v4, v2, -0x1

    .line 162
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_9

    goto :goto_3

    :cond_9
    if-ne v2, v11, :cond_a

    .line 169
    sget-object v4, Lcom/ibm/icu/text/IDNA$Error;->LEADING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v4}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_a
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v0, :cond_b

    .line 171
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_12

    .line 173
    :cond_b
    sget-object v4, Lcom/ibm/icu/text/IDNA$Error;->TRAILING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v4}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    goto :goto_5

    :cond_c
    if-ne v5, v6, :cond_12

    if-eqz p2, :cond_f

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 192
    :goto_4
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->promoteAndResetLabelErrors(Lcom/ibm/icu/text/IDNA$Info;)V

    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 193
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/UTS46;->processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->isBiDi(Lcom/ibm/icu/text/IDNA$Info;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/ibm/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    invoke-static {v9, v0}, Lcom/ibm/icu/impl/UTS46;->hasCertainErrors(Lcom/ibm/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 195
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->isOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-lez v11, :cond_e

    invoke-static {v8, v11}, Lcom/ibm/icu/impl/UTS46;->isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 197
    :cond_d
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->BIDI:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v0}, Lcom/ibm/icu/impl/UTS46;->addError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_e
    return-object v8

    :cond_f
    if-ne v2, v11, :cond_10

    .line 182
    sget-object v5, Lcom/ibm/icu/text/IDNA$Error;->EMPTY_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v5}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_10
    if-eqz p3, :cond_11

    sub-int v5, v2, v11

    if-le v5, v4, :cond_11

    .line 185
    sget-object v4, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v9, v4}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 187
    :cond_11
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->promoteAndResetLabelErrors(Lcom/ibm/icu/text/IDNA$Info;)V

    add-int/lit8 v4, v2, 0x1

    move v11, v4

    :cond_12
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_13
    move-object v10, p0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private processLabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v1, p3

    move-object/from16 v6, p5

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-lt v1, v5, :cond_3

    .line 340
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x6e

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v3, 0x2

    .line 341
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_3

    add-int/lit8 v10, v3, 0x3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_3

    if-eq v1, v5, :cond_2

    const/4 v10, 0x5

    if-le v1, v10, :cond_0

    add-int v10, v3, v1

    sub-int/2addr v10, v9

    .line 350
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v3, 0x4

    add-int v11, v3, v1

    .line 356
    :try_start_0
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/ibm/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_0
    .catch Lcom/ibm/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    sget-object v11, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v11, v10}, Lcom/ibm/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 370
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 371
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 375
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_1

    .line 358
    :catch_0
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->PUNYCODE:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 359
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 351
    :cond_2
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 352
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    :cond_3
    move-object v10, v0

    move v11, v1

    move v12, v3

    const/4 v13, 0x0

    :goto_1
    if-nez v11, :cond_4

    .line 382
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->EMPTY_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 383
    invoke-static {v0, v3, v1, v10, v11}, Lcom/ibm/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    :cond_4
    if-lt v11, v5, :cond_5

    add-int/lit8 v14, v12, 0x2

    .line 386
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_5

    add-int/lit8 v14, v12, 0x3

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_5

    .line 388
    sget-object v14, Lcom/ibm/icu/text/IDNA$Error;->HYPHEN_3_4:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v14}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 390
    :cond_5
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_6

    .line 392
    sget-object v14, Lcom/ibm/icu/text/IDNA$Error;->LEADING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v14}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_6
    add-int v14, v12, v11

    add-int/lit8 v15, v14, -0x1

    .line 394
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v8, :cond_7

    .line 396
    sget-object v8, Lcom/ibm/icu/text/IDNA$Error;->TRAILING_HYPHEN:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v8}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 411
    :cond_7
    iget v8, v7, Lcom/ibm/icu/impl/UTS46;->options:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    :goto_2
    move v8, v12

    const/4 v15, 0x0

    .line 413
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v2, 0x7f

    const v5, 0xfffd

    if-gt v4, v2, :cond_a

    const/16 v2, 0x2e

    if-ne v4, v2, :cond_9

    .line 416
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->LABEL_HAS_DOT:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 417
    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    :cond_9
    if-eqz v9, :cond_c

    .line 418
    sget-object v2, Lcom/ibm/icu/impl/UTS46;->asciiData:[B

    aget-byte v2, v2, v4

    if-gez v2, :cond_c

    .line 419
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 420
    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    :cond_a
    or-int v2, v15, v4

    int-to-char v15, v2

    if-eqz v9, :cond_b

    .line 424
    invoke-static {v4}, Lcom/ibm/icu/impl/UTS46;->isNonASCIIDisallowedSTD3Valid(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 425
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 426
    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    :cond_b
    if-ne v4, v5, :cond_c

    .line 428
    sget-object v2, Lcom/ibm/icu/text/IDNA$Error;->DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_c
    :goto_4
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v14, :cond_18

    .line 437
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v2

    .line 438
    invoke-static {v2}, Lcom/ibm/icu/impl/UTS46;->U_GET_GC_MASK(I)I

    move-result v4

    sget v8, Lcom/ibm/icu/impl/UTS46;->U_GC_M_MASK:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_d

    .line 439
    sget-object v4, Lcom/ibm/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v4}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 440
    invoke-virtual {v10, v12, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const v4, 0xffff

    if-le v2, v4, :cond_d

    add-int/lit8 v2, v12, 0x1

    .line 443
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v0, :cond_d

    add-int/lit8 v1, v1, -0x1

    :cond_d
    move v4, v1

    .line 450
    sget-object v1, Lcom/ibm/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    invoke-static {v6, v1}, Lcom/ibm/icu/impl/UTS46;->hasCertainLabelErrors(Lcom/ibm/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 453
    iget v1, v7, Lcom/ibm/icu/impl/UTS46;->options:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->isBiDi(Lcom/ibm/icu/text/IDNA$Info;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/impl/UTS46;->isOkBiDi(Lcom/ibm/icu/text/IDNA$Info;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 454
    :cond_e
    invoke-direct {v7, v10, v12, v11, v6}, Lcom/ibm/icu/impl/UTS46;->checkLabelBiDi(Ljava/lang/CharSequence;IILcom/ibm/icu/text/IDNA$Info;)V

    .line 456
    :cond_f
    iget v1, v7, Lcom/ibm/icu/impl/UTS46;->options:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    and-int/lit16 v1, v15, 0x200c

    const/16 v2, 0x200c

    if-ne v1, v2, :cond_10

    .line 457
    invoke-direct {v7, v10, v12, v11}, Lcom/ibm/icu/impl/UTS46;->isLabelOkContextJ(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_10

    .line 459
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->CONTEXTJ:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 461
    :cond_10
    iget v1, v7, Lcom/ibm/icu/impl/UTS46;->options:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_11

    const/16 v1, 0xb7

    if-lt v15, v1, :cond_11

    .line 462
    invoke-direct {v7, v10, v12, v11, v6}, Lcom/ibm/icu/impl/UTS46;->checkLabelContextO(Ljava/lang/CharSequence;IILcom/ibm/icu/text/IDNA$Info;)V

    :cond_11
    if-eqz p4, :cond_17

    const/16 v1, 0x3f

    if-eqz v13, :cond_13

    if-le v4, v1, :cond_12

    .line 468
    sget-object v0, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v0}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_12
    return v4

    :cond_13
    const/16 v2, 0x80

    if-lt v15, v2, :cond_15

    add-int/2addr v11, v12

    .line 475
    :try_start_1
    invoke-virtual {v10, v12, v11}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/ibm/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_1
    .catch Lcom/ibm/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "xn--"

    const/4 v8, 0x0

    .line 479
    invoke-virtual {v2, v8, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v1, :cond_14

    .line 481
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    .line 484
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 483
    invoke-static {v0, v3, v4, v2, v1}, Lcom/ibm/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 477
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    if-le v11, v1, :cond_17

    .line 488
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->LABEL_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    goto :goto_5

    :cond_16
    if-eqz v13, :cond_17

    .line 496
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v6, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 497
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I

    move-result v0

    return v0

    .line 500
    :cond_17
    :goto_5
    invoke-static {v0, v3, v4, v10, v11}, Lcom/ibm/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v0

    return v0

    :cond_18
    const/4 v2, 0x0

    const/4 v5, 0x4

    goto/16 :goto_3
.end method

.method private processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 14

    move-object v6, p0

    move-object v0, p1

    move/from16 v1, p3

    move-object/from16 v7, p6

    if-nez v1, :cond_0

    .line 209
    sget-object v1, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v1, p1, v7}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_0
    sget-object v2, Lcom/ibm/icu/impl/UTS46;->uts46Norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/ibm/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 213
    iget v0, v6, Lcom/ibm/icu/impl/UTS46;->options:I

    if-eqz p5, :cond_1

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 216
    :goto_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move/from16 v12, p2

    move v10, v0

    move v11, v1

    :goto_3
    move v0, v12

    :goto_4
    if-ge v0, v11, :cond_a

    .line 219
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    if-nez p4, :cond_3

    sub-int v13, v0, v12

    move-object v0, p0

    move-object/from16 v1, p6

    move v2, v12

    move v3, v13

    move/from16 v4, p5

    move-object/from16 v5, p7

    .line 222
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I

    move-result v0

    .line 224
    invoke-static/range {p7 .. p7}, Lcom/ibm/icu/impl/UTS46;->promoteAndResetLabelErrors(Lcom/ibm/icu/text/IDNA$Info;)V

    sub-int v1, v0, v13

    add-int/2addr v11, v1

    add-int/2addr v0, v9

    add-int/2addr v12, v0

    goto :goto_3

    :cond_3
    const/16 v2, 0xdf

    if-ge v1, v2, :cond_5

    :cond_4
    move-object/from16 v13, p7

    goto :goto_6

    :cond_5
    const/16 v3, 0x200d

    if-gt v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3c2

    if-eq v1, v2, :cond_6

    const/16 v2, 0x200c

    if-lt v1, v2, :cond_7

    .line 231
    :cond_6
    invoke-static/range {p7 .. p7}, Lcom/ibm/icu/impl/UTS46;->setTransitionalDifferent(Lcom/ibm/icu/text/IDNA$Info;)V

    if-eqz v10, :cond_4

    .line 233
    invoke-direct {p0, v7, v12, v0}, Lcom/ibm/icu/impl/UTS46;->mapDevChars(Ljava/lang/StringBuilder;II)I

    move-result v11

    const/4 v10, 0x0

    goto :goto_4

    .line 239
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-static {v1}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    if-eq v1, v11, :cond_9

    .line 242
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_5

    :cond_8
    if-eq v0, v12, :cond_9

    add-int/lit8 v1, v0, -0x1

    .line 244
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 247
    :cond_9
    :goto_5
    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->DISALLOWED:Lcom/ibm/icu/text/IDNA$Error;

    move-object/from16 v13, p7

    invoke-static {v13, v1}, Lcom/ibm/icu/impl/UTS46;->addLabelError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    const v1, 0xfffd

    .line 248
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v13, p7

    if-eqz v12, :cond_b

    if-ge v12, v0, :cond_c

    :cond_b
    sub-int v3, v0, v12

    move-object v0, p0

    move-object/from16 v1, p6

    move v2, v12

    move/from16 v4, p5

    move-object/from16 v5, p7

    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLcom/ibm/icu/text/IDNA$Info;)I

    .line 258
    invoke-static/range {p7 .. p7}, Lcom/ibm/icu/impl/UTS46;->promoteAndResetLabelErrors(Lcom/ibm/icu/text/IDNA$Info;)V

    :cond_c
    return-object v7
.end method

.method private static replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I
    .locals 0

    if-eq p3, p0, :cond_0

    add-int/2addr p2, p1

    .line 321
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return p4
.end method


# virtual methods
.method public labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0xfe

    if-lt p1, v0, :cond_1

    invoke-virtual {p3}, Lcom/ibm/icu/text/IDNA$Info;->getErrors()Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lcom/ibm/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 55
    invoke-static {p2}, Lcom/ibm/icu/impl/UTS46;->isASCIIString(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gt p1, v0, :cond_0

    const/16 p1, 0xfd

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    .line 58
    :cond_0
    sget-object p1, Lcom/ibm/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {p3, p1}, Lcom/ibm/icu/impl/UTS46;->addError(Lcom/ibm/icu/text/IDNA$Info;Lcom/ibm/icu/text/IDNA$Error;)V

    :cond_1
    return-object p2
.end method

.method public nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Lcom/ibm/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method
