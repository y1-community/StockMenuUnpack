.class public final Lcom/ibm/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UCaseProps$LatinCase;,
        Lcom/ibm/icu/impl/UCaseProps$ContextIterator;,
        Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final ABOVE:I = 0x40

.field private static final CLOSURE_MAX_LENGTH:I = 0xf

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ucase.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ucase"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final DELTA_SHIFT:I = 0x7

.field private static final DOT_MASK:I = 0x60

.field private static final EXCEPTION:I = 0x8

.field private static final EXC_CLOSURE:I = 0x6

.field private static final EXC_CONDITIONAL_FOLD:I = 0x8000

.field private static final EXC_CONDITIONAL_SPECIAL:I = 0x4000

.field private static final EXC_DELTA:I = 0x4

.field private static final EXC_DELTA_IS_NEGATIVE:I = 0x400

.field private static final EXC_DOT_SHIFT:I = 0x7

.field private static final EXC_DOUBLE_SLOTS:I = 0x100

.field private static final EXC_FOLD:I = 0x1

.field private static final EXC_FULL_MAPPINGS:I = 0x7

.field private static final EXC_LOWER:I = 0x0

.field private static final EXC_NO_SIMPLE_CASE_FOLDING:I = 0x200

.field private static final EXC_SENSITIVE:I = 0x800

.field private static final EXC_SHIFT:I = 0x4

.field private static final EXC_TITLE:I = 0x3

.field private static final EXC_UPPER:I = 0x2

.field private static final FMT:I = 0x63415345

.field static final FOLD_CASE_OPTIONS_MASK:I = 0x7

.field private static final FULL_LOWER:I = 0xf

.field static final IGNORABLE:I = 0x4

.field public static final INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

.field private static final IX_EXC_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final IX_UNFOLD_LENGTH:I = 0x4

.field static final LOC_ARMENIAN:I = 0x6

.field public static final LOC_DUTCH:I = 0x5

.field static final LOC_GREEK:I = 0x4

.field static final LOC_LITHUANIAN:I = 0x3

.field public static final LOC_ROOT:I = 0x1

.field static final LOC_TURKISH:I = 0x2

.field public static final LOWER:I = 0x1

.field public static final MAX_STRING_LENGTH:I = 0x1f

.field public static final NONE:I = 0x0

.field private static final OTHER_ACCENT:I = 0x60

.field private static final SENSITIVE:I = 0x10

.field private static final SOFT_DOTTED:I = 0x20

.field public static final TITLE:I = 0x3

.field public static final TYPE_MASK:I = 0x3

.field private static final UNFOLD_ROWS:I = 0x0

.field private static final UNFOLD_ROW_WIDTH:I = 0x1

.field private static final UNFOLD_STRING_WIDTH:I = 0x2

.field public static final UPPER:I = 0x2

.field public static final dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final flagsOffset:[B

.field private static final iDot:Ljava/lang/String; = "i\u0307"

.field private static final iDotAcute:Ljava/lang/String; = "i\u0307\u0301"

.field private static final iDotGrave:Ljava/lang/String; = "i\u0307\u0300"

.field private static final iDotTilde:Ljava/lang/String; = "i\u0307\u0303"

.field private static final iOgonekDot:Ljava/lang/String; = "\u012f\u0307"

.field private static final jDot:Ljava/lang/String; = "j\u0307"


# instance fields
.field private exceptions:Ljava/lang/String;

.field private indexes:[I

.field private trie:Lcom/ibm/icu/impl/Trie2_16;

.field private unfold:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 123
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1683
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCaseProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCaseProps;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1685
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x5t
        0x6t
        0x6t
        0x7t
        0x6t
        0x7t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ucase.icu"

    .line 42
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final getCaseLocale(Lcom/ibm/icu/util/ULocale;)I
    .locals 0

    .line 791
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getCaseLocale(Ljava/lang/String;)I
    .locals 8

    .line 799
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    const-string v0, "en"

    .line 800
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x74

    if-le v0, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "tr"

    .line 802
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "el"

    .line 804
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const-string v0, "lt"

    .line 806
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    :cond_3
    const-string v0, "nl"

    .line 808
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string v0, "hy"

    .line 810
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_5
    :goto_0
    return v6

    :cond_6
    :goto_1
    return v4

    .line 813
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_d

    const-string v0, "tur"

    .line 814
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "aze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const-string v0, "ell"

    .line 816
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_9
    const-string v0, "lit"

    .line 818
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v5

    :cond_a
    const-string v0, "nld"

    .line 820
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    const-string v0, "hye"

    .line 822
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_c
    :goto_2
    return v6

    :cond_d
    return v4
.end method

.method public static final getCaseLocale(Ljava/util/Locale;)I
    .locals 0

    .line 788
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static final getDelta(I)I
    .locals 0

    int-to-short p0, p0

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static final getExceptionsOffset(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private final getSlotValue(III)I
    .locals 1

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 175
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    add-int/2addr p3, p1

    .line 176
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    .line 179
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    .line 180
    iget-object p3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    or-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method private final getSlotValueAndOffset(III)J
    .locals 4

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    add-int/2addr p3, p1

    .line 162
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    .line 165
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    .line 166
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    move p3, p2

    move-wide p1, v0

    :goto_0
    int-to-long v0, p3

    const/16 p3, 0x20

    shl-long/2addr v0, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method static getTrie()Lcom/ibm/icu/impl/Trie2_16;
    .locals 1

    .line 1576
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    iget-object v0, v0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    return-object v0
.end method

.method private static final getTypeAndIgnorableFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static final getTypeFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static final hasSlot(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 837
    :cond_0
    invoke-interface {p1, p2}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :goto_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result p2

    if-ltz p2, :cond_2

    .line 838
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result p2

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 958
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0x307

    if-ne v2, v3, :cond_2

    return v1

    .line 962
    :cond_2
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    :cond_3
    return v0
.end method

.method private final isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 937
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_3

    .line 938
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    :cond_3
    return v0
.end method

.method private final isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 860
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_3

    .line 861
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    :cond_3
    return v0
.end method

.method private final isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 915
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_3

    const/16 v2, 0x49

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 919
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    :cond_3
    return v0
.end method

.method static final isUpperOrTitleFromProps(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final propsHasException(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final readData(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCaseProps$1;)V

    const v1, 0x63415345

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 55
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v2, 0x0

    .line 57
    aput v0, v1, v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    .line 64
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    .line 65
    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v0

    if-gt v0, v1, :cond_3

    sub-int/2addr v1, v0

    .line 70
    invoke-static {p1, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 73
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 75
    invoke-static {p1, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 81
    invoke-static {p1, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ucase.icu: not enough bytes for the trie"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "indexes[0] too small in ucase.icu"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static final slotOffset(II)B
    .locals 2

    .line 146
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    and-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method private final strcmpMax(Ljava/lang/String;II)I
    .locals 6

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 388
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 389
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    add-int/lit8 v5, p2, 0x1

    aget-char p2, v4, p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sub-int/2addr v2, p2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_4

    if-eqz p3, :cond_3

    .line 400
    aget-char p1, v4, v5

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    neg-int p1, p3

    return p1

    :cond_3
    :goto_1
    return v1

    :cond_4
    move v2, v3

    move p2, v5

    goto :goto_0
.end method

.method private final toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I
    .locals 10

    .line 1160
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1161
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1162
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p2

    if-ne p2, v2, :cond_0

    .line 1163
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result p2

    add-int/2addr p2, p1

    goto/16 :goto_6

    :cond_0
    move p2, p1

    goto/16 :goto_6

    .line 1166
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 1167
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v3, v1, 0x4000

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v3, :cond_7

    if-ne p4, v6, :cond_2

    const/16 v3, 0x69

    if-ne p1, v3, :cond_2

    const/16 p1, 0x130

    return p1

    :cond_2
    if-ne p4, v5, :cond_3

    const/16 v3, 0x307

    if-ne p1, v3, :cond_3

    .line 1187
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    const/16 p2, 0x587

    if-ne p1, p2, :cond_9

    const/4 p1, 0x6

    if-ne p4, p1, :cond_5

    if-eqz p5, :cond_4

    :try_start_0
    const-string p1, "\u0535\u054e"

    goto :goto_0

    :cond_4
    const-string p1, "\u0535\u057e"

    .line 1205
    :goto_0
    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    const-string p1, "\u0535\u0552"

    goto :goto_1

    :cond_6
    const-string p1, "\u0535\u0582"

    .line 1207
    :goto_1
    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v6

    :catch_0
    move-exception p1

    .line 1211
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    const/4 p2, 0x7

    .line 1216
    invoke-static {v1, p2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 1217
    invoke-direct {p0, v1, p2, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v8

    long-to-int p2, v8

    const p4, 0xffff

    and-int/2addr p2, p4

    const/16 p4, 0x20

    shr-long/2addr v8, p4

    long-to-int p4, v8

    add-int/2addr p4, v2

    and-int/lit8 v3, p2, 0xf

    add-int/2addr p4, v3

    shr-int/2addr p2, v7

    and-int/lit8 v3, p2, 0xf

    add-int/2addr p4, v3

    shr-int/2addr p2, v7

    if-eqz p5, :cond_8

    goto :goto_3

    :cond_8
    and-int/lit8 v3, p2, 0xf

    add-int/2addr p4, v3

    shr-int/2addr p2, v7

    :goto_3
    and-int/lit8 p2, p2, 0xf

    if-eqz p2, :cond_9

    .line 1240
    :try_start_1
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int p5, p4, p2

    invoke-interface {p3, p1, p4, p5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p2

    :catch_1
    move-exception p1

    .line 1245
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1250
    :cond_9
    invoke-static {v1, v7}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p2

    if-ne p2, v2, :cond_b

    .line 1251
    invoke-direct {p0, v1, v7, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    and-int/lit16 p3, v1, 0x400

    if-nez p3, :cond_a

    add-int/2addr p1, p2

    goto :goto_4

    :cond_a
    sub-int/2addr p1, p2

    :goto_4
    return p1

    :cond_b
    if-nez p5, :cond_c

    .line 1254
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_5

    .line 1256
    :cond_c
    invoke-static {v1, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 v5, 0x2

    .line 1262
    :goto_5
    invoke-direct {p0, v1, v5, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    :goto_6
    if-ne p2, p1, :cond_d

    xor-int/lit8 p2, p2, -0x1

    :cond_d
    return p2

    :cond_e
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public final addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V
    .locals 9

    const/16 v0, 0x69

    const/16 v1, 0x49

    if-eq p1, v1, :cond_b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x130

    if-eq p1, v0, :cond_9

    const/16 v0, 0x131

    if-eq p1, v0, :cond_8

    .line 291
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 292
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-eqz v1, :cond_8

    .line 295
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    if-eqz v0, :cond_8

    add-int/2addr p1, v0

    .line 297
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_4

    .line 305
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 314
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-direct {p0, v0, v3, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    .line 317
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    .line 320
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    invoke-direct {p0, v0, v3, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v4

    and-int/lit16 v5, v0, 0x400

    if-nez v5, :cond_3

    add-int/2addr p1, v4

    goto :goto_1

    :cond_3
    sub-int/2addr p1, v4

    .line 323
    :goto_1
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_4
    const/4 p1, 0x6

    .line 327
    invoke-static {v0, p1}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_5

    .line 329
    invoke-direct {p0, v0, p1, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    long-to-int p1, v6

    and-int/lit8 v1, p1, 0xf

    shr-long/2addr v6, v5

    long-to-int p1, v6

    add-int/lit8 p1, p1, 0x1

    move v8, v1

    move v1, p1

    move p1, v8

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    const/4 v4, 0x7

    .line 338
    invoke-static {v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 340
    invoke-direct {p0, v0, v4, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v0

    long-to-int v2, v0

    shr-long/2addr v0, v5

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    const v0, 0xffff

    and-int/2addr v0, v2

    and-int/lit8 v2, v0, 0xf

    add-int/2addr v1, v2

    shr-int/2addr v0, v3

    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_6

    .line 355
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/2addr v2, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move v1, v2

    :cond_6
    shr-int/2addr v0, v3

    and-int/lit8 v2, v0, 0xf

    add-int/2addr v1, v2

    shr-int/2addr v0, v3

    add-int/2addr v1, v0

    :cond_7
    add-int/2addr p1, v1

    :goto_3
    if-ge v1, p1, :cond_8

    .line 371
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 372
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 370
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_8
    :goto_4
    return-void

    :cond_9
    const-string p1, "i\u0307"

    .line 281
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 277
    :cond_a
    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 274
    :cond_b
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public final addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 100
    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 11

    .line 421
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 424
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return v1

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    aget-char v4, v3, v1

    .line 437
    aget-char v5, v3, v2

    const/4 v6, 0x2

    .line 438
    aget-char v3, v3, v6

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_6

    add-int v7, v0, v4

    .line 450
    div-int/2addr v7, v6

    add-int/lit8 v8, v7, 0x1

    mul-int v9, v8, v5

    .line 452
    invoke-direct {p0, p1, v9, v3}, Lcom/ibm/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_4

    :goto_1
    if-ge v3, v5, :cond_3

    .line 458
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    add-int v0, v9, v3

    aget-char v0, p1, v0

    if-eqz v0, :cond_3

    .line 459
    array-length v0, p1

    invoke-static {p1, v9, v0, v3}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result p1

    .line 460
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V

    .line 458
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr v3, p1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    if-gez v10, :cond_5

    move v4, v7

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_0

    :cond_6
    :goto_2
    return v1
.end method

.method public final fold(II)I
    .locals 6

    .line 1336
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1337
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1338
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1339
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_2

    .line 1342
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 1343
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    and-int/lit8 p2, p2, 0x7

    const/16 v2, 0x69

    const/16 v4, 0x130

    const/16 v5, 0x49

    if-nez p2, :cond_2

    if-ne p1, v5, :cond_1

    return v2

    :cond_1
    if-ne p1, v4, :cond_4

    return p1

    :cond_2
    if-ne p1, v5, :cond_3

    const/16 p1, 0x131

    return p1

    :cond_3
    if-ne p1, v4, :cond_4

    return v2

    :cond_4
    and-int/lit16 p2, v1, 0x200

    if-eqz p2, :cond_5

    return p1

    :cond_5
    const/4 p2, 0x4

    .line 1370
    invoke-static {v1, p2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1371
    invoke-direct {p0, v1, p2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    and-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_6

    add-int/2addr p1, p2

    goto :goto_0

    :cond_6
    sub-int/2addr p1, p2

    :goto_0
    return p1

    :cond_7
    const/4 p2, 0x1

    .line 1374
    invoke-static {v1, p2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 1376
    :cond_8
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    .line 1381
    :goto_1
    invoke-direct {p0, v1, p2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_9
    :goto_2
    return p1
.end method

.method public final getDotType(I)I
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    .line 487
    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x60

    return p1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x7

    and-int/lit8 p1, p1, 0x60

    return p1
.end method

.method public final getType(I)I
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p1

    return p1
.end method

.method public final getTypeOrIgnorable(I)I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    move-result p1

    return p1
.end method

.method public final hasBinaryProperty(II)Z
    .locals 5

    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_c

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_b

    const/16 v0, 0x1e

    const/4 v3, 0x2

    if-eq p2, v0, :cond_9

    const/16 v0, 0x22

    if-eq p2, v0, :cond_8

    const/16 v0, 0x37

    const/4 v4, 0x0

    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_0

    return v1

    .line 1534
    :pswitch_0
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1535
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1531
    :pswitch_1
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1532
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1528
    :pswitch_2
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1529
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1514
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result p1

    shr-int/2addr p1, v3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 1512
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 1538
    :cond_5
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1540
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-gez v0, :cond_6

    .line 1541
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-gez v0, :cond_6

    .line 1542
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1

    .line 1510
    :cond_8
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    move-result p1

    return p1

    .line 1506
    :cond_9
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p1

    if-ne v3, p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 1508
    :cond_b
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->isSoftDotted(I)Z

    move-result p1

    return p1

    .line 1504
    :cond_c
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p1

    if-ne v2, p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isCaseSensitive(I)Z
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    .line 500
    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isSoftDotted(I)Z
    .locals 1

    .line 495
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toFullFolding(ILjava/lang/Appendable;I)I
    .locals 9

    .line 1406
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1407
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1408
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1409
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result p2

    add-int/2addr p2, p1

    goto/16 :goto_2

    :cond_0
    move p2, p1

    goto/16 :goto_2

    .line 1412
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 1413
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0x8000

    and-int/2addr v2, v1

    const/4 v4, 0x4

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    and-int/2addr p3, v5

    const/16 v2, 0x69

    const/16 v5, 0x130

    const/16 v7, 0x49

    if-nez p3, :cond_3

    if-ne p1, v7, :cond_2

    return v2

    :cond_2
    if-ne p1, v5, :cond_6

    :try_start_0
    const-string p1, "i\u0307"

    .line 1428
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x2

    return p1

    :catch_0
    move-exception p1

    .line 1431
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    if-ne p1, v7, :cond_4

    const/16 p1, 0x131

    return p1

    :cond_4
    if-ne p1, v5, :cond_6

    return v2

    .line 1444
    :cond_5
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1445
    invoke-direct {p0, v1, v5, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v7

    long-to-int p3, v7

    const v2, 0xffff

    and-int/2addr p3, v2

    const/16 v2, 0x20

    shr-long/2addr v7, v2

    long-to-int v2, v7

    add-int/2addr v2, v6

    and-int/lit8 v5, p3, 0xf

    add-int/2addr v2, v5

    shr-int/2addr p3, v4

    and-int/lit8 p3, p3, 0xf

    if-eqz p3, :cond_6

    .line 1458
    :try_start_1
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v0, v2, p3

    invoke-interface {p2, p1, v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p3

    :catch_1
    move-exception p1

    .line 1463
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    and-int/lit16 p2, v1, 0x200

    if-eqz p2, :cond_7

    xor-int/lit8 p1, p1, -0x1

    return p1

    .line 1471
    :cond_7
    invoke-static {v1, v4}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1472
    invoke-direct {p0, v1, v4, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    and-int/lit16 p3, v1, 0x400

    if-nez p3, :cond_8

    add-int/2addr p1, p2

    goto :goto_0

    :cond_8
    sub-int/2addr p1, p2

    :goto_0
    return p1

    .line 1475
    :cond_9
    invoke-static {v1, v6}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_a

    goto :goto_1

    .line 1477
    :cond_a
    invoke-static {v1, p3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 v6, 0x0

    .line 1482
    :goto_1
    invoke-direct {p0, v1, v6, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    :goto_2
    if-ne p2, p1, :cond_b

    xor-int/lit8 p2, p2, -0x1

    :cond_b
    return p2

    :cond_c
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 998
    iget-object v5, v1, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v5

    .line 999
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1000
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1001
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v2

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 1004
    :cond_0
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v6

    .line 1005
    iget-object v7, v1, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/lit16 v7, v6, 0x4000

    const/4 v10, 0x0

    if-eqz v7, :cond_f

    const-string v7, "i\u0307"

    const/16 v11, 0x49

    const/4 v12, 0x3

    if-ne v4, v12, :cond_a

    const/16 v14, 0x12e

    const/16 v15, 0x128

    const/16 v9, 0xcd

    const/16 v12, 0xcc

    const/16 v13, 0x4a

    if-eq v0, v11, :cond_1

    if-eq v0, v13, :cond_1

    if-ne v0, v14, :cond_2

    .line 1021
    :cond_1
    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    if-eq v0, v12, :cond_3

    if-eq v0, v9, :cond_3

    if-ne v0, v15, :cond_a

    :cond_3
    if-eq v0, v11, :cond_9

    if-eq v0, v13, :cond_8

    if-eq v0, v12, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v15, :cond_5

    if-eq v0, v14, :cond_4

    return v10

    :cond_4
    :try_start_0
    const-string v0, "\u012f\u0307"

    .line 1050
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x2

    return v0

    :cond_5
    const-string v0, "i\u0307\u0303"

    .line 1059
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x3

    return v0

    :cond_6
    const/4 v0, 0x3

    const-string v2, "i\u0307\u0301"

    .line 1056
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v0

    :cond_7
    const/4 v0, 0x3

    const-string v2, "i\u0307\u0300"

    .line 1053
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v0

    :cond_8
    const-string v0, "j\u0307"

    .line 1047
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v9, 0x2

    return v9

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_9
    const/4 v9, 0x2

    .line 1044
    invoke-interface {v3, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    .line 1065
    :goto_0
    new-instance v2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    const/4 v9, 0x2

    const/16 v12, 0x130

    if-ne v4, v9, :cond_b

    if-ne v0, v12, :cond_b

    const/16 v0, 0x69

    return v0

    :cond_b
    if-ne v4, v9, :cond_c

    const/16 v13, 0x307

    if-ne v0, v13, :cond_c

    .line 1077
    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v13

    if-eqz v13, :cond_c

    return v10

    :cond_c
    if-ne v4, v9, :cond_d

    if-ne v0, v11, :cond_d

    .line 1086
    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v0, 0x131

    return v0

    :cond_d
    if-ne v0, v12, :cond_e

    .line 1101
    :try_start_1
    invoke-interface {v3, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x2

    return v0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1104
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    const/16 v3, 0x3a3

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    .line 1107
    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, -0x1

    .line 1108
    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v0, 0x3c2

    return v0

    :cond_f
    const/4 v2, 0x7

    .line 1120
    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1121
    invoke-direct {v1, v6, v2, v8}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v11

    long-to-int v2, v11

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_10

    const/16 v0, 0x20

    shr-long v4, v11, v0

    long-to-int v0, v4

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 1129
    :try_start_2
    iget-object v4, v1, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v5, v0, v2

    invoke-interface {v3, v4, v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    :catch_2
    move-exception v0

    .line 1134
    new-instance v2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    const/4 v2, 0x4

    .line 1139
    invoke-static {v6, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1140
    invoke-direct {v1, v6, v2, v8}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    and-int/lit16 v3, v6, 0x400

    if-nez v3, :cond_11

    add-int/2addr v0, v2

    goto :goto_1

    :cond_11
    sub-int/2addr v0, v2

    :goto_1
    return v0

    .line 1143
    :cond_12
    invoke-static {v6, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1144
    invoke-direct {v1, v6, v10, v8}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    goto :goto_2

    :cond_13
    move v2, v0

    :goto_2
    if-ne v2, v0, :cond_14

    xor-int/lit8 v2, v2, -0x1

    :cond_14
    return v2
.end method

.method public final toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1277
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p1

    return p1
.end method

.method public final toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1271
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p1

    return p1
.end method

.method public final tolower(I)I
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 189
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    .line 194
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 195
    iget-object v2, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x4

    .line 196
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-direct {p0, v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1

    :cond_2
    const/4 v0, 0x0

    .line 200
    invoke-static {v1, v0}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-direct {p0, v1, v0, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_3
    :goto_1
    return p1
.end method

.method public final totitle(I)I
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 229
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 230
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 231
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2

    .line 234
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 235
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v3, 0x4

    .line 236
    invoke-static {v1, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 237
    invoke-direct {p0, v1, v3, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1

    :cond_2
    const/4 v0, 0x3

    .line 241
    invoke-static {v1, v0}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {v1, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 248
    :goto_1
    invoke-direct {p0, v1, v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_4
    :goto_2
    return p1
.end method

.method public final toupper(I)I
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 209
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 210
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 211
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 215
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v3, 0x4

    .line 216
    invoke-static {v1, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 217
    invoke-direct {p0, v1, v3, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1

    :cond_2
    const/4 v0, 0x2

    .line 220
    invoke-static {v1, v0}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    invoke-direct {p0, v1, v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_3
    :goto_1
    return p1
.end method
