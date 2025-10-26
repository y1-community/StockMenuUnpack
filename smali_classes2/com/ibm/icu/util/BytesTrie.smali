.class public final Lcom/ibm/icu/util/BytesTrie;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/BytesTrie$Iterator;,
        Lcom/ibm/icu/util/BytesTrie$Entry;,
        Lcom/ibm/icu/util/BytesTrie$Result;,
        Lcom/ibm/icu/util/BytesTrie$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final kFiveByteDeltaLead:I = 0xff

.field static final kFiveByteValueLead:I = 0x7f

.field static final kFourByteDeltaLead:I = 0xfe

.field static final kFourByteValueLead:I = 0x7e

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneByteDelta:I = 0xbf

.field static final kMaxOneByteValue:I = 0x40

.field static final kMaxThreeByteDelta:I = 0xdffff

.field static final kMaxThreeByteValue:I = 0x11ffff

.field static final kMaxTwoByteDelta:I = 0x2fff

.field static final kMaxTwoByteValue:I = 0x1aff

.field static final kMinLinearMatch:I = 0x10

.field static final kMinOneByteValueLead:I = 0x10

.field static final kMinThreeByteDeltaLead:I = 0xf0

.field static final kMinThreeByteValueLead:I = 0x6c

.field static final kMinTwoByteDeltaLead:I = 0xc0

.field static final kMinTwoByteValueLead:I = 0x51

.field static final kMinValueLead:I = 0x20

.field private static final kValueIsFinal:I = 0x1

.field private static valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;


# instance fields
.field private bytes_:[B

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    .line 836
    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/BytesTrie;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    .line 61
    iget v0, p1, Lcom/ibm/icu/util/BytesTrie;->root_:I

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    .line 62
    iget v0, p1, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 63
    iget p1, p1, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    iput p1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    .line 47
    iput p2, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    iput p2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    return-void
.end method

.method static synthetic access$1100(II)I
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200([BI)I
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$900([BII)I
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/BytesTrie;->readValue([BII)I

    move-result p0

    return p0
.end method

.method private static append(Ljava/lang/Appendable;I)V
    .locals 0

    int-to-char p1, p1

    .line 1035
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1037
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    if-nez p2, :cond_0

    .line 842
    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    and-int/lit16 p2, p1, 0xff

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_2

    .line 848
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ge p3, p1, :cond_1

    shr-int/lit8 p2, p2, 0x1

    .line 850
    invoke-static {v1, v2}, Lcom/ibm/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_1
    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p2, p1

    .line 853
    invoke-static {v1, v2}, Lcom/ibm/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    .line 860
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v3, 0x20

    if-ne p3, p1, :cond_9

    .line 862
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_3

    .line 866
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    shr-int/2addr p1, v0

    const/16 p2, 0x51

    if-ge p1, p2, :cond_4

    add-int/lit8 p1, p1, -0x10

    goto :goto_1

    :cond_4
    const/16 p3, 0x6c

    if-ge p1, p3, :cond_5

    sub-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 p2, v2, 0x1

    .line 876
    aget-byte p3, v1, v2

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p1, p3

    move v2, p2

    goto :goto_1

    :cond_5
    const/16 p2, 0x7e

    if-ge p1, p2, :cond_6

    sub-int/2addr p1, p3

    shl-int/lit8 p1, p1, 0x10

    .line 878
    aget-byte p2, v1, v2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    if-ne p1, p2, :cond_7

    .line 881
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 p2, v2, 0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x2

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 884
    :cond_7
    aget-byte p1, v1, v2

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 p2, v2, 0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x2

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x3

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x4

    :goto_1
    add-int/2addr v2, p1

    .line 889
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    if-lt p1, v3, :cond_8

    .line 890
    sget-object p2, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/2addr p1, v0

    aget-object p1, p2, p1

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 892
    :goto_2
    iput v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    return-object p1

    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 896
    invoke-static {v1, v2}, Lcom/ibm/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    if-gt p2, v0, :cond_2

    .line 898
    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    if-ne p3, p1, :cond_b

    .line 899
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 900
    aget-byte p1, p2, v1

    and-int/lit16 p1, p1, 0xff

    if-lt p1, v3, :cond_a

    .line 901
    sget-object p2, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/2addr p1, v0

    aget-object p1, p2, p1

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_3
    return-object p1

    .line 903
    :cond_b
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 904
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1
.end method

.method private static findUniqueValue([BIJ)J
    .locals 10

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 987
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ge p1, v1, :cond_2

    if-nez p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    .line 990
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v8, v0

    move v0, p1

    move p1, v8

    :cond_0
    add-int/2addr p1, v4

    .line 992
    invoke-static {p0, v0, p1, p2, p3}, Lcom/ibm/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_1

    return-wide v2

    :cond_1
    const/16 p3, 0x21

    ushr-long v0, p1, p3

    long-to-int p3, v0

    move-wide v8, p1

    move p1, p3

    move-wide p2, v8

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    if-ge p1, v1, :cond_3

    add-int/lit8 p1, p1, -0x10

    add-int/2addr p1, v4

    add-int/2addr v0, p1

    move p1, v0

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    shr-int/lit8 v5, p1, 0x1

    .line 1002
    invoke-static {p0, v0, v5}, Lcom/ibm/icu/util/BytesTrie;->readValue([BII)I

    move-result v5

    cmp-long v6, p2, v2

    if-eqz v6, :cond_5

    shr-long v6, p2, v4

    long-to-int v4, v6

    if-eq v5, v4, :cond_6

    return-wide v2

    :cond_5
    int-to-long p2, v5

    shl-long/2addr p2, v4

    const-wide/16 v2, 0x1

    or-long/2addr p2, v2

    :cond_6
    if-eqz v1, :cond_7

    return-wide p2

    .line 1013
    :cond_7
    invoke-static {v0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    goto :goto_0
.end method

.method private static findUniqueValueFromBranch([BIIJ)J
    .locals 6

    :goto_0
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 949
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    shr-int/lit8 v3, p2, 0x1

    invoke-static {p0, v0, v3, p3, p4}, Lcom/ibm/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p3

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sub-int/2addr p2, v3

    .line 954
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    add-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 959
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    shr-int/lit8 v5, p1, 0x1

    .line 961
    invoke-static {p0, v3, v5}, Lcom/ibm/icu/util/BytesTrie;->readValue([BII)I

    move-result v5

    .line 962
    invoke-static {v3, p1}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

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

    .line 972
    invoke-static {p0, v5, p3, p4}, Lcom/ibm/icu/util/BytesTrie;->findUniqueValue([BIJ)J

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

.method private static getNextBranchBytes([BIILjava/lang/Appendable;)V
    .locals 2

    :goto_0
    const/4 v0, 0x5

    if-le p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1023
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    shr-int/lit8 v1, p2, 0x1

    invoke-static {p0, v0, v1, p3}, Lcom/ibm/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    sub-int/2addr p2, v1

    .line 1025
    invoke-static {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 1028
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, Lcom/ibm/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    .line 1029
    invoke-static {p0, v0}, Lcom/ibm/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 1031
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p3, p0}, Lcom/ibm/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public static iterator([BII)Lcom/ibm/icu/util/BytesTrie$Iterator;
    .locals 7

    .line 501
    new-instance v6, Lcom/ibm/icu/util/BytesTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/BytesTrie$Iterator;-><init>([BIIILcom/ibm/icu/util/BytesTrie$1;)V

    return-object v6
.end method

.method public static jumpByDelta([BI)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 804
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xc0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    if-ge p1, v1, :cond_1

    add-int/lit16 p1, p1, -0xc0

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v1, v0, 0x1

    .line 808
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xfe

    if-ge p1, v1, :cond_2

    add-int/lit16 p1, p1, -0xf0

    shl-int/lit8 p1, p1, 0x10

    .line 810
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 813
    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 816
    :cond_3
    aget-byte p1, p0, v0

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    add-int/lit8 v1, v0, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .line 911
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x10

    if-ge p1, v2, :cond_0

    .line 913
    invoke-direct {p0, v1, p1, p2}, Lcom/ibm/icu/util/BytesTrie;->branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v3, 0x20

    if-ge p1, v3, :cond_2

    sub-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    .line 917
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p2, v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 918
    iput p1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 919
    iput v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    if-gez p1, :cond_1

    .line 920
    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    if-lt p1, v3, :cond_1

    sget-object p2, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 p1, p1, 0x1

    aget-object p1, p2, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_1
    return-object p1

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    .line 936
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 937
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 931
    :cond_4
    invoke-static {v1, p1}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    goto :goto_0
.end method

.method private static readValue([BII)I
    .locals 2

    const/16 v0, 0x51

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x10

    goto :goto_1

    :cond_0
    const/16 v1, 0x6c

    if-ge p2, v1, :cond_1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x8

    .line 769
    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p2, p0

    goto :goto_1

    :cond_1
    const/16 v0, 0x7e

    if-ge p2, v0, :cond_2

    sub-int/2addr p2, v1

    shl-int/lit8 p2, p2, 0x10

    .line 771
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 773
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    goto :goto_0

    .line 775
    :cond_3
    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    goto :goto_0

    :goto_1
    return p2
.end method

.method private static skipDelta([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 823
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    const/16 p1, 0xc0

    if-lt p0, p1, :cond_2

    const/16 p1, 0xf0

    if-ge p0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xfe

    if-ge p0, p1, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static skipValue(II)I
    .locals 1

    const/16 v0, 0xa2

    if-lt p1, v0, :cond_2

    const/16 v0, 0xd8

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xfc

    if-ge p1, v0, :cond_1

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    add-int/2addr p0, p1

    :cond_2
    :goto_0
    return p0
.end method

.method private static skipValue([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 793
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 794
    invoke-static {v0, p0}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method private stop()V
    .locals 1

    const/4 v0, -0x1

    .line 759
    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/ibm/icu/util/BytesTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/BytesTrie;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->clone()Lcom/ibm/icu/util/BytesTrie;

    move-result-object v0

    return-object v0
.end method

.method public current()Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 2

    .line 245
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_0

    .line 247
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object v0

    .line 250
    :cond_0
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 v0, v0, 0x1

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

    .line 264
    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    .line 268
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/BytesTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1
.end method

.method public getNextBytes(Ljava/lang/Appendable;)I
    .locals 5

    .line 439
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 443
    :cond_0
    iget v2, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 444
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v0}, Lcom/ibm/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return v3

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    return v1

    .line 452
    :cond_2
    invoke-static {v4, v0}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    :cond_3
    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    if-nez v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    move v4, v1

    .line 461
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/2addr v0, v3

    invoke-static {v1, v4, v0, p1}, Lcom/ibm/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    return v0

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v0}, Lcom/ibm/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return v3
.end method

.method public getState64()J
    .locals 4

    .line 97
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getUniqueValue()J
    .locals 5

    .line 420
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    return-wide v1

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    iget v4, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/ibm/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide v0

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue()I
    .locals 3

    .line 405
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 406
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x1

    .line 408
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/BytesTrie;->readValue([BII)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/ibm/icu/util/BytesTrie$Iterator;
    .locals 7

    .line 477
    new-instance v6, Lcom/ibm/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/BytesTrie$Iterator;-><init>([BIIILcom/ibm/icu/util/BytesTrie$1;)V

    return-object v6
.end method

.method public iterator(I)Lcom/ibm/icu/util/BytesTrie$Iterator;
    .locals 7

    .line 488
    new-instance v6, Lcom/ibm/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/BytesTrie$Iterator;-><init>([BIIILcom/ibm/icu/util/BytesTrie$1;)V

    return-object v6
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->iterator()Lcom/ibm/icu/util/BytesTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .line 279
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_0

    .line 281
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_0
    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    .line 286
    :cond_1
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    if-ltz v1, :cond_4

    .line 289
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-ne p1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 290
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 291
    iput v3, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_2

    .line 293
    aget-byte p1, v2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    sget-object v0, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1

    .line 296
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 297
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 300
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/BytesTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1
.end method

.method public next([BII)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 6

    if-lt p2, p3, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->current()Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_1

    .line 326
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 328
    :cond_1
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    :goto_0
    const/16 v2, 0x20

    if-ne p2, p3, :cond_3

    .line 335
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 336
    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    if-lt p1, v2, :cond_2

    sget-object p2, Lcom/ibm/icu/util/BytesTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    and-int/lit8 p1, p1, 0x1

    aget-object p1, p2, p1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_1
    return-object p1

    :cond_3
    add-int/lit8 v3, p2, 0x1

    .line 341
    aget-byte p2, p1, p2

    if-gez v1, :cond_b

    .line 343
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 354
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0x10

    if-ge v0, v5, :cond_7

    and-int/lit16 p2, p2, 0xff

    .line 356
    invoke-direct {p0, v4, v0, p2}, Lcom/ibm/icu/util/BytesTrie;->branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p2

    .line 357
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne p2, v0, :cond_4

    .line 358
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_4
    if-ne v3, p3, :cond_5

    return-object p2

    .line 364
    :cond_5
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne p2, v0, :cond_6

    .line 366
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 367
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_6
    add-int/lit8 p2, v3, 0x1

    .line 369
    aget-byte v0, p1, v3

    .line 370
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    move v3, p2

    move p2, v0

    move v0, v1

    goto :goto_2

    :cond_7
    if-ge v0, v2, :cond_9

    add-int/lit8 v0, v0, -0x10

    .line 374
    aget-byte v1, v1, v4

    if-eq p2, v1, :cond_8

    .line 375
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 376
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_8
    add-int/lit8 p2, v4, 0x1

    add-int/lit8 v1, v0, -0x1

    move v0, p2

    goto :goto_3

    :cond_9
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_a

    .line 383
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 384
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 387
    :cond_a
    invoke-static {v4, v0}, Lcom/ibm/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    goto :goto_2

    .line 346
    :cond_b
    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    aget-byte v2, v2, v0

    if-eq p2, v2, :cond_c

    .line 347
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie;->stop()V

    .line 348
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    move p2, v3

    goto/16 :goto_0
.end method

.method public reset()Lcom/ibm/icu/util/BytesTrie;
    .locals 1

    .line 83
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    return-object p0
.end method

.method public resetToState(Lcom/ibm/icu/util/BytesTrie$State;)Lcom/ibm/icu/util/BytesTrie;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1}, Lcom/ibm/icu/util/BytesTrie$State;->access$000(Lcom/ibm/icu/util/BytesTrie$State;)[B

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    invoke-static {p1}, Lcom/ibm/icu/util/BytesTrie$State;->access$100(Lcom/ibm/icu/util/BytesTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-static {p1}, Lcom/ibm/icu/util/BytesTrie$State;->access$200(Lcom/ibm/icu/util/BytesTrie$State;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    .line 167
    invoke-static {p1}, Lcom/ibm/icu/util/BytesTrie$State;->access$300(Lcom/ibm/icu/util/BytesTrie$State;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    return-object p0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible trie state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetToState64(J)Lcom/ibm/icu/util/BytesTrie;
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    .line 115
    iput v1, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    long-to-int p2, p1

    .line 116
    iput p2, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    return-object p0
.end method

.method public saveState(Lcom/ibm/icu/util/BytesTrie$State;)Lcom/ibm/icu/util/BytesTrie;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v0}, Lcom/ibm/icu/util/BytesTrie$State;->access$002(Lcom/ibm/icu/util/BytesTrie$State;[B)[B

    .line 146
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->root_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/BytesTrie$State;->access$102(Lcom/ibm/icu/util/BytesTrie$State;I)I

    .line 147
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->pos_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/BytesTrie$State;->access$202(Lcom/ibm/icu/util/BytesTrie$State;I)I

    .line 148
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/BytesTrie$State;->access$302(Lcom/ibm/icu/util/BytesTrie$State;I)I

    return-object p0
.end method
