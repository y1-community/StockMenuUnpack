.class public final Lcom/ibm/icu/impl/RBBIDataWrapper;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;,
        Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;,
        Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;
    }
.end annotation


# static fields
.field public static final ACCEPTING:I = 0x0

.field public static final ACCEPTING_UNCONDITIONAL:I = 0x1

.field public static final DATA_FORMAT:I = 0x42726b20

.field public static final DH_CATCOUNT:I = 0x3

.field public static final DH_FORMATVERSION:I = 0x1

.field public static final DH_FTABLE:I = 0x4

.field public static final DH_FTABLELEN:I = 0x5

.field public static final DH_LENGTH:I = 0x2

.field public static final DH_MAGIC:I = 0x0

.field public static final DH_RTABLE:I = 0x6

.field public static final DH_RTABLELEN:I = 0x7

.field public static final DH_RULESOURCE:I = 0xa

.field public static final DH_RULESOURCELEN:I = 0xb

.field public static final DH_SIZE:I = 0x14

.field public static final DH_STATUSTABLE:I = 0xc

.field public static final DH_STATUSTABLELEN:I = 0xd

.field public static final DH_TRIE:I = 0x8

.field public static final DH_TRIELEN:I = 0x9

.field public static final FORMAT_VERSION:I = 0x6000000

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;

.field public static final LOOKAHEAD:I = 0x1

.field public static final NEXTSTATES:I = 0x3

.field public static final RBBI_8BITS_ROWS:I = 0x4

.field public static final RBBI_BOF_REQUIRED:I = 0x2

.field public static final RBBI_LOOKAHEAD_HARD_BREAK:I = 0x1

.field public static final TAGSIDX:I = 0x2


# instance fields
.field public fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

.field public fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

.field public fRTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

.field public fRuleSource:Ljava/lang/String;

.field public fStatusTable:[I

.field public fTrie:Lcom/ibm/icu/util/CodePointTrie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 185
    new-instance v0, Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;-><init>(Lcom/ibm/icu/impl/RBBIDataWrapper$1;)V

    sput-object v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToString(CI)Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 442
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dumpCharCategories(Ljava/io/PrintStream;)V
    .locals 13

    .line 509
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x1

    .line 510
    new-array v1, v0, [Ljava/lang/String;

    .line 516
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 518
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v3, v4, :cond_0

    const-string v4, ""

    .line 519
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\nCharacter Categories"

    .line 521
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "--------------------"

    .line 522
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const v7, 0x10ffff

    const-string v8, "-"

    const-string v9, " "

    if-gt v4, v7, :cond_6

    .line 524
    iget-object v7, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {v7, v4}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result v7

    if-ltz v7, :cond_5

    .line 525
    iget-object v10, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v10, v10, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-le v7, v10, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ne v7, v3, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v3, :cond_4

    .line 534
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aget v11, v0, v3

    add-int/lit8 v11, v11, 0x46

    if-le v10, v11, :cond_3

    .line 535
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    aput v10, v0, v3

    .line 536
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    .line 539
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v3

    if-eq v6, v5, :cond_4

    .line 541
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :cond_4
    move v5, v4

    move v3, v7

    :goto_2
    add-int/lit8 v6, v4, 0x1

    move v12, v6

    move v6, v4

    move v4, v12

    goto/16 :goto_1

    .line 526
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error, bad category "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for char "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 548
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    if-eq v6, v5, :cond_7

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 553
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v2, v0, :cond_8

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 556
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private dumpRow(Ljava/io/PrintStream;Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;C)V
    .locals 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    .line 487
    invoke-static {p3, v1}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result p3

    .line 489
    iget-object v1, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v3, p3, 0x0

    aget-char v1, v1, v3

    const-string v4, "     "

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    aget-char v1, v1, v3

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :goto_0
    iget-object v1, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v3, p3, 0x1

    aget-char v1, v1, v3

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    aget-char v1, v1, v3

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 497
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :goto_1
    iget-object v1, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v3, p3, 0x2

    aget-char v1, v1, v3

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 501
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v1, v3, :cond_2

    .line 502
    iget-object v3, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v4, p3, 0x3

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-static {v3, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 505
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpTable(Ljava/io/PrintStream;Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 459
    iget-object v0, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Row  Acc Look  Tag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x5

    .line 466
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 469
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v3, "-"

    .line 470
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 473
    :goto_2
    iget v0, p2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-ge v1, v0, :cond_3

    .line 474
    invoke-direct {p0, p1, p2, v1}, Lcom/ibm/icu/impl/RBBIDataWrapper;->dumpRow(Ljava/io/PrintStream;Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    .line 476
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_4

    :cond_4
    :goto_3
    const-string p2, "  -- null -- "

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public static equals(Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static get(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/RBBIDataWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/ibm/icu/impl/RBBIDataWrapper;

    invoke-direct {v0}, Lcom/ibm/icu/impl/RBBIDataWrapper;-><init>()V

    .line 295
    sget-object v1, Lcom/ibm/icu/impl/RBBIDataWrapper;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;

    const v2, 0x42726b20

    invoke-static {p0, v2, v1}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 298
    new-instance v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-direct {v2}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    iput-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    .line 299
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    .line 300
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 301
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    .line 302
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    .line 303
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v5, 0x3

    aput-byte v3, v2, v5

    .line 304
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    .line 305
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    .line 306
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 307
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    .line 308
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 309
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    .line 310
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 311
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    .line 312
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 313
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    .line 314
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 315
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    const/16 v2, 0x18

    .line 316
    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 319
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    const v3, 0xb1a0

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper$IsAcceptable;->isDataVersionAcceptable([B)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x50

    .line 331
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    const-string v3, "Break iterator Rule data corrupt"

    if-lt v2, v1, :cond_3

    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v6, v6, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    if-gt v2, v6, :cond_3

    .line 336
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 337
    iget-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 339
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->get(Ljava/nio/ByteBuffer;I)Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 340
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    add-int/2addr v1, v2

    .line 347
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 348
    iget-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 351
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->get(Ljava/nio/ByteBuffer;I)Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 352
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    add-int/2addr v1, v2

    .line 361
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 362
    iget-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 364
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 369
    sget-object v2, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    const/4 v6, 0x0

    invoke-static {v2, v6, p0}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 376
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 384
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    if-gt v1, v2, :cond_2

    .line 387
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 388
    iget-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 389
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    div-int/lit8 v2, v2, 0x4

    iget-object v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v6, v6, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    and-int/2addr v5, v6

    invoke-static {p0, v2, v5}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    .line 391
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    add-int/2addr v1, v2

    .line 396
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    if-gt v1, v2, :cond_1

    .line 399
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 400
    iget-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 401
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    .line 402
    invoke-static {p0, v2, v4}, Lcom/ibm/icu/impl/ICUBinary;->getBytes(Ljava/nio/ByteBuffer;II)[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 404
    sget-object p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 405
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    :cond_0
    return-object v0

    .line 397
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 450
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 452
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 431
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 433
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 414
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "RBBI Data Wrapper dump ..."

    .line 416
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    const-string v0, "Forward State Table"

    .line 418
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;)V

    const-string v0, "Reverse State Table"

    .line 420
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/RBBIDataWrapper;->dumpCharCategories(Ljava/io/PrintStream;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getRowIndex(I)I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x3

    mul-int p1, p1, v0

    return p1
.end method
