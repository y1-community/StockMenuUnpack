.class public Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitsParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static measurePrefixValues:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

.field private static volatile savedTrie:Lcom/ibm/icu/util/CharsTrie;


# instance fields
.field private fAfterPer:Z

.field private fIndex:I

.field private fSawAnd:Z

.field private final fSource:Ljava/lang/String;

.field private final trie:Lcom/ibm/icu/util/CharsTrie;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 374
    const-class v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    const/4 v0, 0x0

    .line 376
    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->savedTrie:Lcom/ibm/icu/util/CharsTrie;

    .line 394
    invoke-static {}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->values()[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->measurePrefixValues:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    .line 409
    new-instance v0, Lcom/ibm/icu/util/CharsTrieBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/util/CharsTrieBuilder;-><init>()V

    .line 412
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->measurePrefixValues:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 413
    invoke-virtual {v5}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->getTrieIndexForPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 417
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "-per-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 418
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 419
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "-and-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 420
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "per-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 421
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P2:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "square-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 422
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P3:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "cubic-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 423
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P2:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow2-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 424
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P3:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow3-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 425
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P4:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow4-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 426
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P5:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow5-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 427
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P6:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow6-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 428
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P7:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow7-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 429
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P8:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow8-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 430
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P9:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow9-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 431
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P10:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow10-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 432
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P11:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow11-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 433
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P12:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow12-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 434
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P13:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow13-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 435
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P14:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow14-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 436
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->P15:Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow15-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 439
    invoke-static {}, Lcom/ibm/icu/impl/units/UnitsData;->getSimpleUnits()[Ljava/lang/String;

    move-result-object v1

    .line 440
    :goto_1
    array-length v2, v1

    if-ge v3, v2, :cond_1

    .line 441
    aget-object v2, v1, v3

    add-int/lit16 v4, v3, 0x200

    invoke-virtual {v0, v2, v4}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 446
    :cond_1
    sget-object v1, Lcom/ibm/icu/util/StringTrieBuilder$Option;->FAST:Lcom/ibm/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->build(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Lcom/ibm/icu/util/CharsTrie;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->savedTrie:Lcom/ibm/icu/util/CharsTrie;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    .line 386
    iput-boolean v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    .line 389
    iput-boolean v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    .line 397
    iput-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    .line 400
    :try_start_0
    sget-object p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->savedTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CharsTrie;->clone()Lcom/ibm/icu/util/CharsTrie;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Lcom/ibm/icu/util/CharsTrie;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 402
    :catch_0
    new-instance p1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {p1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>()V

    throw p1
.end method

.method static synthetic access$100(I)Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 0

    .line 374
    invoke-static {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->getPrefixFromTrieIndex(I)Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object p0

    return-object p0
.end method

.method private static getPrefixFromTrieIndex(I)Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 1

    .line 467
    sget-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->measurePrefixValues:[Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    add-int/lit8 p0, p0, -0x40

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getTrieIndexForPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)I
    .locals 0

    .line 471
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x40

    return p0
.end method

.method private hasNext()Z
    .locals 2

    .line 618
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextSingleUnit()Lcom/ibm/icu/impl/units/SingleUnitImpl;
    .locals 9

    .line 522
    new-instance v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;-><init>()V

    .line 530
    iget v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 531
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getType()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v1

    sget-object v8, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    if-ne v1, v8, :cond_7

    .line 538
    iput-boolean v3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    .line 539
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 541
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    goto :goto_2

    .line 546
    :cond_1
    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getType()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v1

    sget-object v8, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    if-ne v1, v8, :cond_f

    .line 550
    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getMatch()I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->getCompoundPartFromTrieIndex(I)Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    move-result-object v1

    .line 551
    sget-object v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$CompoundPart:[I

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v5, :cond_2

    goto :goto_1

    .line 569
    :cond_2
    iget-boolean v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    if-nez v1, :cond_3

    .line 573
    iput-boolean v3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    goto :goto_1

    .line 571
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t start with \"-and-\", and mixed compound units"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_4
    iget-boolean v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    if-eqz v1, :cond_6

    .line 564
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    goto :goto_1

    .line 553
    :cond_5
    iget-boolean v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    if-nez v1, :cond_e

    .line 558
    iput-boolean v3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    .line 559
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 577
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    .line 582
    :cond_7
    :goto_2
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$UnitsParser$Token$Type:[I

    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getType()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v3, :cond_b

    if-eq v1, v7, :cond_9

    if-ne v1, v5, :cond_8

    .line 602
    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getSimpleUnitIndex()I

    move-result v1

    invoke-static {}, Lcom/ibm/icu/impl/units/UnitsData;->getSimpleUnits()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setSimpleUnit(I[Ljava/lang/String;)V

    return-object v0

    .line 606
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    if-gt v2, v3, :cond_a

    .line 597
    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)V

    const/4 v2, 0x2

    goto :goto_3

    .line 594
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    if-gtz v2, :cond_d

    .line 588
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v1

    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getPower()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    const/4 v2, 0x1

    .line 609
    :goto_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 613
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    goto :goto_2

    .line 610
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We ran out of tokens before finding a complete single unit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 554
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed compound units not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token type must be TYPE_COMPOUND_PART"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private nextToken()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
    .locals 6

    .line 622
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v0}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 629
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    iget-object v3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 630
    iget-object v2, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Lcom/ibm/icu/util/CharsTrie;

    iget-object v3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    iget v4, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v2

    .line 631
    sget-object v3, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 633
    :cond_0
    sget-object v3, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v0}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result v0

    .line 638
    iget v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    .line 640
    sget-object v3, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 644
    :cond_2
    sget-object v3, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 645
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result must has an intermediate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    if-ltz v0, :cond_5

    .line 655
    iput v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    .line 658
    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;-><init>(I)V

    return-object v1

    .line 653
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown token starting at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private parse()Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 4

    .line 475
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 477
    iget-object v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 482
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 483
    iput-boolean v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    .line 484
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextSingleUnit()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z

    move-result v1

    .line 487
    iget-boolean v2, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Two similar units are not allowed in a mixed unit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->access$000(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 496
    iget-boolean v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->COMPOUND:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    .line 498
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 501
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->setComplexity(Lcom/ibm/icu/util/MeasureUnit$Complexity;)V

    goto :goto_0

    .line 502
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_0

    .line 503
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have mixed compound units"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v0
.end method

.method public static parseForIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 1

    if-eqz p0, :cond_1

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-direct {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->parse()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
