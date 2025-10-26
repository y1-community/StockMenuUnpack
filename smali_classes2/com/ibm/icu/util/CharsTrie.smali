.class public final Lcom/ibm/icu/util/CharsTrie;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/CharsTrie$Iterator;,
        Lcom/ibm/icu/util/CharsTrie$Entry;,
        Lcom/ibm/icu/util/CharsTrie$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneUnitDelta:I = 0xfbff

.field static final kMaxOneUnitNodeValue:I = 0xff

.field static final kMaxOneUnitValue:I = 0x3fff

.field static final kMaxTwoUnitDelta:I = 0x3feffff

.field static final kMaxTwoUnitNodeValue:I = 0xfdffff

.field static final kMaxTwoUnitValue:I = 0x3ffeffff

.field static final kMinLinearMatch:I = 0x30

.field static final kMinTwoUnitDeltaLead:I = 0xfc00

.field static final kMinTwoUnitNodeValueLead:I = 0x4040

.field static final kMinTwoUnitValueLead:I = 0x4000

.field static final kMinValueLead:I = 0x40

.field static final kNodeTypeMask:I = 0x3f

.field static final kThreeUnitDeltaLead:I = 0xffff

.field static final kThreeUnitNodeValueLead:I = 0x7fc0

.field static final kThreeUnitValueLead:I = 0x7fff

.field static final kValueIsFinal:I = 0x8000

.field private static valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    .line 777
    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/CharsTrie;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    .line 64
    iget v0, p1, Lcom/ibm/icu/util/CharsTrie;->root_:I

    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    .line 65
    iget v0, p1, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 66
    iget p1, p1, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    .line 50
    iput p2, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    iput p2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-void
.end method

.method static synthetic access$1000(II)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(II)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method private static append(Ljava/lang/Appendable;I)V
    .locals 0

    int-to-char p1, p1

    .line 976
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 978
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 3

    if-nez p2, :cond_0

    .line 783
    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_2

    .line 789
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ge p3, p1, :cond_1

    shr-int/lit8 p2, p2, 0x1

    .line 791
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/ibm/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    :cond_1
    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p2, p1

    .line 794
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/ibm/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    .line 801
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v1, 0x40

    if-ne p3, p1, :cond_7

    .line 803
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_3

    .line 806
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/16 p2, 0x4000

    if-ge p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 p2, 0x7fff

    if-ge p1, p2, :cond_5

    add-int/lit16 p1, p1, -0x4000

    shl-int/lit8 p1, p1, 0x10

    .line 815
    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p3, v2, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    or-int/2addr p1, p2

    move v2, p3

    goto :goto_1

    .line 817
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p3, v2, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/2addr v2, p1

    .line 822
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v1, :cond_6

    .line 823
    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 825
    :goto_2
    iput v2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    return-object p1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    .line 829
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/ibm/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    if-gt p2, v0, :cond_2

    .line 831
    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p3, p1, :cond_9

    .line 832
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 833
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v1, :cond_8

    .line 834
    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_3
    return-object p1

    .line 836
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 837
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1
.end method

.method private static findUniqueValue(Ljava/lang/CharSequence;IJ)J
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 919
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    :goto_0
    const/16 v1, 0x30

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ge p1, v1, :cond_2

    if-nez p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    .line 923
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v8, v0

    move v0, p1

    move p1, v8

    :cond_0
    add-int/2addr p1, v4

    .line 925
    invoke-static {p0, v0, p1, p2, p3}, Lcom/ibm/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    move-result-wide p2

    cmp-long p1, p2, v2

    if-nez p1, :cond_1

    return-wide v2

    :cond_1
    const/16 p1, 0x21

    ushr-long v0, p2, p1

    long-to-int p1, v0

    add-int/lit8 v0, p1, 0x1

    .line 930
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v1, 0x40

    if-ge p1, v1, :cond_3

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p1, v4

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 934
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    and-int/lit16 v5, p1, 0x7fff

    .line 939
    invoke-static {p0, v0, v5}, Lcom/ibm/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v5

    goto :goto_2

    .line 941
    :cond_5
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v5

    :goto_2
    cmp-long v6, p2, v2

    if-eqz v6, :cond_6

    shr-long v6, p2, v4

    long-to-int v4, v6

    if-eq v5, v4, :cond_7

    return-wide v2

    :cond_6
    int-to-long p2, v5

    shl-long/2addr p2, v4

    const-wide/16 v2, 0x1

    or-long/2addr p2, v2

    :cond_7
    if-eqz v1, :cond_8

    return-wide p2

    .line 953
    :cond_8
    invoke-static {v0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v0

    and-int/lit8 p1, p1, 0x3f

    goto :goto_0
.end method

.method private static findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J
    .locals 6

    :goto_0
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 881
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v0

    shr-int/lit8 v3, p2, 0x1

    invoke-static {p0, v0, v3, p3, p4}, Lcom/ibm/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    move-result-wide p3

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sub-int/2addr p2, v3

    .line 886
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    add-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 891
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit16 p1, p1, 0x7fff

    .line 894
    invoke-static {p0, v3, p1}, Lcom/ibm/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 895
    invoke-static {v3, p1}, Lcom/ibm/icu/util/CharsTrie;->skipValue(II)I

    move-result p1

    if-eqz v4, :cond_4

    cmp-long v3, p3, v1

    if-eqz v3, :cond_3

    shr-long v3, p3, v0

    long-to-int v4, v3

    if-eq v5, v4, :cond_5

    return-wide v1

    :cond_3
    int-to-long p3, v5

    shl-long/2addr p3, v0

    const-wide/16 v3, 0x1

    or-long/2addr p3, v3

    goto :goto_2

    :cond_4
    add-int/2addr v5, p1

    .line 905
    invoke-static {p0, v5, p3, p4}, Lcom/ibm/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    move-result-wide p3

    cmp-long v3, p3, v1

    if-nez v3, :cond_5

    return-wide v1

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-gt p2, v0, :cond_1

    add-int/2addr p1, v0

    int-to-long p0, p1

    const/16 p2, 0x21

    shl-long/2addr p0, p2

    const-wide v0, 0x1ffffffffL

    and-long/2addr p3, v0

    or-long/2addr p0, p3

    return-wide p0
.end method

.method private static getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V
    .locals 2

    :goto_0
    const/4 v0, 0x5

    if-le p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 964
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v0

    shr-int/lit8 v1, p2, 0x1

    invoke-static {p0, v0, v1, p3}, Lcom/ibm/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    sub-int/2addr p2, v1

    .line 966
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 969
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p3, p1}, Lcom/ibm/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    .line 970
    invoke-static {p0, v0}, Lcom/ibm/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 972
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p3, p0}, Lcom/ibm/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public static iterator(Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/CharsTrie$Iterator;
    .locals 7

    .line 463
    new-instance v6, Lcom/ibm/icu/util/CharsTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILcom/ibm/icu/util/CharsTrie$1;)V

    return-object v6
.end method

.method private static jumpByDelta(Ljava/lang/CharSequence;I)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    .line 753
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const v1, 0xfc00

    if-lt p1, v1, :cond_1

    const v2, 0xffff

    if-ne p1, v2, :cond_0

    .line 756
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    .line 759
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    or-int/2addr p1, p0

    move v0, v1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    :goto_0
    const/16 v0, 0x30

    if-ge p1, v0, :cond_0

    .line 846
    invoke-direct {p0, v1, p1, p2}, Lcom/ibm/icu/util/CharsTrie;->branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0x40

    if-ge p1, v2, :cond_2

    sub-int/2addr p1, v0

    .line 850
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p2, v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 851
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 852
    iput v3, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez p1, :cond_1

    .line 853
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v2, :cond_1

    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_1
    return-object p1

    :cond_2
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 868
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 869
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 864
    :cond_4
    invoke-static {v1, p1}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v1

    and-int/lit8 p1, p1, 0x3f

    goto :goto_0
.end method

.method private static readNodeValue(Ljava/lang/CharSequence;II)I
    .locals 2

    const/16 v0, 0x4040

    if-ge p2, v0, :cond_0

    shr-int/lit8 p0, p2, 0x6

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0x7fc0

    if-ge p2, v1, :cond_1

    and-int/2addr p2, v1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0xa

    .line 734
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 736
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    :goto_0
    or-int/2addr p0, p2

    :goto_1
    return p0
.end method

.method private static readValue(Ljava/lang/CharSequence;II)I
    .locals 1

    const/16 v0, 0x4000

    if-ge p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x7fff

    if-ge p2, v0, :cond_1

    add-int/lit16 p2, p2, -0x4000

    shl-int/lit8 p2, p2, 0x10

    .line 707
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 709
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    :goto_0
    or-int/2addr p2, p0

    :goto_1
    return p2
.end method

.method private static skipDelta(Ljava/lang/CharSequence;I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 766
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const p1, 0xfc00

    if-lt p0, p1, :cond_1

    const p1, 0xffff

    if-ne p0, p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static skipNodeValue(II)I
    .locals 1

    const/16 v0, 0x4040

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7fc0

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x2

    :cond_1
    :goto_0
    return p0
.end method

.method private static skipValue(II)I
    .locals 1

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7fff

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x2

    :cond_1
    :goto_0
    return p0
.end method

.method private static skipValue(Ljava/lang/CharSequence;I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 724
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    and-int/lit16 p0, p0, 0x7fff

    .line 725
    invoke-static {v0, p0}, Lcom/ibm/icu/util/CharsTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method private stop()V
    .locals 1

    const/4 v0, -0x1

    .line 697
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/ibm/icu/util/CharsTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/CharsTrie;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/ibm/icu/util/CharsTrie;->clone()Lcom/ibm/icu/util/CharsTrie;

    move-result-object v0

    return-object v0
.end method

.method public current()Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 2

    .line 184
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_0

    .line 186
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object v0

    .line 189
    :cond_0
    iget v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 v0, v0, 0xf

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object v0
.end method

.method public first(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 203
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/CharsTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1
.end method

.method public firstForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->first(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CharsTrie;->first(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1
.end method

.method public getNextChars(Ljava/lang/Appendable;)I
    .locals 5

    .line 402
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 406
    :cond_0
    iget v2, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 407
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    return v3

    .line 410
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 415
    :cond_2
    invoke-static {v4, v0}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v4

    and-int/lit8 v0, v0, 0x3f

    :cond_3
    const/16 v1, 0x30

    if-ge v0, v1, :cond_5

    if-nez v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v1, v4, 0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v4, v1

    .line 423
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/2addr v0, v3

    invoke-static {v1, v4, v0, p1}, Lcom/ibm/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    return v0

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    return v3
.end method

.method public getState64()J
    .locals 4

    .line 100
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getUniqueValue()J
    .locals 5

    .line 383
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    return-wide v1

    .line 388
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/ibm/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    move-result-wide v0

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue()I
    .locals 3

    .line 367
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 368
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v0, v0, 0x7fff

    .line 371
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/ibm/icu/util/CharsTrie$Iterator;
    .locals 7

    .line 439
    new-instance v6, Lcom/ibm/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILcom/ibm/icu/util/CharsTrie$1;)V

    return-object v6
.end method

.method public iterator(I)Lcom/ibm/icu/util/CharsTrie$Iterator;
    .locals 7

    .line 450
    new-instance v6, Lcom/ibm/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILcom/ibm/icu/util/CharsTrie$1;)V

    return-object v6
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/ibm/icu/util/CharsTrie;->iterator()Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .line 229
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_0

    .line 231
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 233
    :cond_0
    iget v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    if-ltz v1, :cond_3

    .line 236
    iget-object v2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 237
    iput v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 238
    iput v3, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 244
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 247
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/CharsTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1
.end method

.method public next(Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 5

    if-lt p2, p3, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/ibm/icu/util/CharsTrie;->current()Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_1

    .line 288
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 290
    :cond_1
    iget v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    :goto_0
    const/16 v2, 0x40

    if-ne p2, p3, :cond_3

    .line 297
    iput v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 298
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v2, :cond_2

    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_1
    return-object p1

    :cond_3
    add-int/lit8 v3, p2, 0x1

    .line 303
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-gez v1, :cond_b

    .line 305
    iput v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 315
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_2
    const/16 v1, 0x30

    if-ge v0, v1, :cond_7

    .line 318
    invoke-direct {p0, v4, v0, p2}, Lcom/ibm/icu/util/CharsTrie;->branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p2

    .line 319
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne p2, v0, :cond_4

    .line 320
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_4
    if-ne v3, p3, :cond_5

    return-object p2

    .line 326
    :cond_5
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne p2, v0, :cond_6

    .line 328
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 329
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_6
    add-int/lit8 p2, v3, 0x1

    .line 331
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 332
    iget v1, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 333
    iget-object v3, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v3, p2

    move p2, v0

    move v0, v1

    goto :goto_2

    :cond_7
    if-ge v0, v2, :cond_9

    add-int/lit8 v0, v0, -0x30

    .line 337
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq p2, v1, :cond_8

    .line 338
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 339
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_8
    add-int/lit8 p2, v4, 0x1

    add-int/lit8 v1, v0, -0x1

    move v0, p2

    goto :goto_3

    :cond_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    .line 346
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 347
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 350
    :cond_a
    invoke-static {v4, v0}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v4

    and-int/lit8 v0, v0, 0x3f

    goto :goto_2

    .line 308
    :cond_b
    iget-object v2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq p2, v2, :cond_c

    .line 309
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 310
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    move p2, v3

    goto/16 :goto_0
.end method

.method public nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1
.end method

.method public reset()Lcom/ibm/icu/util/CharsTrie;
    .locals 1

    .line 86
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-object p0
.end method

.method public resetToState(Lcom/ibm/icu/util/CharsTrie$State;)Lcom/ibm/icu/util/CharsTrie;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$000(Lcom/ibm/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$100(Lcom/ibm/icu/util/CharsTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$200(Lcom/ibm/icu/util/CharsTrie$State;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 170
    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$300(Lcom/ibm/icu/util/CharsTrie$State;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-object p0

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible trie state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetToState64(J)Lcom/ibm/icu/util/CharsTrie;
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    .line 118
    iput v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    long-to-int p2, p1

    .line 119
    iput p2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    return-object p0
.end method

.method public saveState(Lcom/ibm/icu/util/CharsTrie$State;)Lcom/ibm/icu/util/CharsTrie;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$002(Lcom/ibm/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 149
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$102(Lcom/ibm/icu/util/CharsTrie$State;I)I

    .line 150
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$202(Lcom/ibm/icu/util/CharsTrie$State;I)I

    .line 151
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$302(Lcom/ibm/icu/util/CharsTrie$State;I)I

    return-object p0
.end method
