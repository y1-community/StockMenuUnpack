.class public final Lcom/ibm/icu/text/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/AlphabeticIndex$BucketList;,
        Lcom/ibm/icu/text/AlphabeticIndex$Bucket;,
        Lcom/ibm/icu/text/AlphabeticIndex$Record;,
        Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE:Ljava/lang/String; = "\ufdd0"

.field private static final CGJ:C = '\u034f'

.field private static final GC_CN_MASK:I = 0x1

.field private static final GC_LL_MASK:I = 0x4

.field private static final GC_LM_MASK:I = 0x10

.field private static final GC_LO_MASK:I = 0x20

.field private static final GC_LT_MASK:I = 0x8

.field private static final GC_LU_MASK:I = 0x2

.field private static final GC_L_MASK:I = 0x3e

.field private static final binaryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private collatorExternal:Lcom/ibm/icu/text/RuleBasedCollator;

.field private final collatorOriginal:Lcom/ibm/icu/text/RuleBasedCollator;

.field private final collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

.field private final firstCharsInScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflowLabel:Ljava/lang/String;

.field private final initialLabels:Lcom/ibm/icu/text/UnicodeSet;

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private maxLabelCount:I

.field private overflowLabel:Ljava/lang/String;

.field private final recordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/ibm/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private underflowLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    new-instance v0, Lcom/ibm/icu/text/UTF16$StringComparator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ibm/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    sput-object v0, Lcom/ibm/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/AlphabeticIndex;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/AlphabeticIndex;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/ibm/icu/text/AlphabeticIndex$1;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/AlphabeticIndex$1;-><init>(Lcom/ibm/icu/text/AlphabeticIndex;)V

    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    .line 152
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    const-string v0, "\u2026"

    .line 158
    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    const/16 v0, 0x63

    .line 816
    iput v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/RuleBasedCollator;

    :goto_0
    iput-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorOriginal:Lcom/ibm/icu/text/RuleBasedCollator;

    .line 273
    :try_start_0
    invoke-virtual {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setStrength(I)V

    .line 279
    invoke-virtual {p2}, Lcom/ibm/icu/text/RuleBasedCollator;->freeze()Lcom/ibm/icu/text/Collator;

    .line 281
    invoke-virtual {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->getFirstCharactersInScripts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    .line 282
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 286
    :goto_1
    iget-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 290
    iget-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 291
    iget-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->addChineseIndexCharacters()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 300
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/AlphabeticIndex;->addIndexExemplars(Lcom/ibm/icu/util/ULocale;)V

    :cond_2
    return-void

    .line 287
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AlphabeticIndex requires some non-ignorable script boundary strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 276
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Collator cannot be cloned"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 247
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/AlphabeticIndex;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/AlphabeticIndex;)Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorOriginal:Lcom/ibm/icu/text/RuleBasedCollator;

    return-object p0
.end method

.method private addChineseIndexCharacters()Z
    .locals 5

    .line 568
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v1, 0x0

    .line 570
    :try_start_0
    iget-object v2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    const-string v3, "\ufdd0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->internalAddContractions(ILcom/ibm/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 576
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x41

    if-gt v3, v1, :cond_1

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_1

    .line 581
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_2
    return v2

    :catch_0
    return v1
.end method

.method private addIndexExemplars(Lcom/ibm/icu/util/ULocale;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 525
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/util/LocaleData;->getExemplarSet(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    iget-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 533
    :cond_0
    invoke-static {p1, v0, v0}, Lcom/ibm/icu/util/LocaleData;->getExemplarSet(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 537
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_2
    const v1, 0xac00

    const v2, 0xd7a3

    .line 540
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 542
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 543
    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb098

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb2e4

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb77c

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb9c8

    .line 544
    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xbc14

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc0ac

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc544

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc790

    .line 545
    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xcc28

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xce74

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd0c0

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd30c

    .line 546
    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd558

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_3
    const/16 v1, 0x1200

    const/16 v2, 0x137f

    .line 548
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 552
    new-instance v3, Lcom/ibm/icu/text/UnicodeSet;

    const-string v4, "[\u1200\u1208\u1210\u1218\u1220\u1228\u1230\u1238\u1240\u1248\u1250\u1258\u1260\u1268\u1270\u1278\u1280\u1288\u1290\u1298\u12a0\u12a8\u12b0\u12b8\u12c0\u12c8\u12d0\u12d8\u12e0\u12e8\u12f0\u12f8\u1300\u1308\u1310\u1318\u1320\u1328\u1330\u1338\u1340\u1348\u1350\u1358]"

    invoke-direct {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 554
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 559
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 560
    iget-object v2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {p1, v1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_5
    return-void
.end method

.method private createBucketList()Lcom/ibm/icu/text/AlphabeticIndex$BucketList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/AlphabeticIndex;->initLabels()Ljava/util/List;

    move-result-object v1

    .line 1011
    iget-object v2, v0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    iget-object v2, v0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/16 v4, 0x1a

    new-array v5, v4, [Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    new-array v6, v4, [Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 1025
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    new-instance v8, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/AlphabeticIndex;->getUnderflowLabel()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v11, ""

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v10, v12}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v10, v11

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/4 v8, 0x1

    if-eqz v16, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    .line 1035
    iget-object v9, v0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v4, v10}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_3

    const/4 v9, 0x0

    .line 1040
    :goto_2
    iget-object v12, v0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    add-int/2addr v14, v8

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1041
    iget-object v8, v0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v8, v4, v12}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    if-eqz v9, :cond_1

    .line 1046
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 1049
    new-instance v8, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/AlphabeticIndex;->getInflowLabel()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v1

    sget-object v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v1, v12}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    move-object/from16 v17, v1

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v10, v18

    goto :goto_4

    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v17, v1

    .line 1054
    :goto_4
    new-instance v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v4}, Lcom/ibm/icu/text/AlphabeticIndex;->fixLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-direct {v1, v8, v4, v9, v12}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    .line 1055
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const-string v12, "\ufdd0"

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x41

    if-gt v8, v9, :cond_4

    const/16 v8, 0x5a

    if-gt v9, v8, :cond_4

    add-int/lit8 v9, v9, -0x41

    .line 1059
    aput-object v1, v5, v9

    goto :goto_5

    .line 1060
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    .line 1061
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x41

    if-gt v8, v9, :cond_5

    const/16 v8, 0x5a

    if-gt v9, v8, :cond_5

    add-int/lit8 v9, v9, -0x41

    .line 1062
    aput-object v1, v6, v9

    const/4 v13, 0x1

    .line 1066
    :cond_5
    :goto_5
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    .line 1067
    invoke-static {v1, v2, v3, v4}, Lcom/ibm/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Lcom/ibm/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\uffff"

    .line 1068
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1070
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    .line 1071
    :goto_6
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 1072
    invoke-static {v9}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$1200(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v12

    move-object/from16 v18, v10

    sget-object v10, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-eq v12, v10, :cond_6

    goto :goto_7

    .line 1077
    :cond_6
    invoke-static {v9}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$900(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    move-result-object v10

    if-nez v10, :cond_7

    iget-object v10, v0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    .line 1078
    invoke-static {v9}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$800(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v2, v3, v12}, Lcom/ibm/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Lcom/ibm/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1083
    new-instance v8, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v10, 0x0

    invoke-direct {v8, v11, v1, v4, v10}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    .line 1084
    invoke-static {v8, v9}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$902(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 1085
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v10, v18

    goto :goto_6

    :cond_8
    move-object/from16 v18, v10

    :goto_7
    move-object/from16 v1, v17

    move-object/from16 v10, v18

    const/16 v4, 0x1a

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1092
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1094
    new-instance v1, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v7, v2}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    return-object v1

    :cond_a
    const/4 v2, 0x0

    .line 1097
    new-instance v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/AlphabeticIndex;->getOverflowLabel()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-direct {v1, v3, v10, v4, v2}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_d

    const/4 v1, 0x0

    const/16 v2, 0x1a

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v2, :cond_d

    .line 1103
    aget-object v3, v5, v9

    if-eqz v3, :cond_b

    .line 1104
    aget-object v1, v5, v9

    .line 1106
    :cond_b
    aget-object v3, v6, v9

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    .line 1107
    aget-object v3, v6, v9

    invoke-static {v3, v1}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$902(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    const/4 v15, 0x1

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    if-nez v15, :cond_e

    .line 1114
    new-instance v1, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v7, v2}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    return-object v1

    .line 1118
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1119
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    const/4 v3, -0x1

    :goto_9
    add-int/2addr v1, v3

    if-lez v1, :cond_11

    .line 1121
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 1122
    invoke-static {v4}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$900(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    move-result-object v5

    if-eqz v5, :cond_f

    goto :goto_9

    .line 1125
    :cond_f
    invoke-static {v4}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$1200(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-ne v5, v6, :cond_10

    .line 1126
    invoke-static {v2}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$1200(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-eq v5, v6, :cond_10

    .line 1127
    invoke-static {v4, v2}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$902(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    goto :goto_9

    :cond_10
    move-object v2, v4

    goto :goto_9

    .line 1134
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 1136
    invoke-static {v3}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$900(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    move-result-object v4

    if-nez v4, :cond_12

    .line 1137
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1140
    :cond_13
    new-instance v2, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    const/4 v3, 0x0

    invoke-direct {v2, v7, v1, v3}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    return-object v2
.end method

.method private static fixLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\ufdd0"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 513
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2800

    if-ge v2, v1, :cond_1

    const/16 v3, 0x28ff

    if-gt v1, v3, :cond_1

    .line 515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5283"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 517
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasMultiplePrimaryWeights(Lcom/ibm/icu/text/RuleBasedCollator;JLjava/lang/String;)Z
    .locals 6

    .line 1200
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/RuleBasedCollator;->internalGetCEs(Ljava/lang/CharSequence;)[J

    move-result-object p0

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1202
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1203
    aget-wide v2, p0, v0

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const/4 v4, 0x1

    cmp-long v5, v2, p1

    if-lez v5, :cond_1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method private initBuckets()V
    .locals 10

    .line 761
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    if-eqz v0, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->createBucketList()Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    .line 765
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 779
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$700(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;

    move-result-object v0

    .line 780
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 783
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 785
    invoke-static {v2}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$800(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v2, v3

    move-object v4, v2

    .line 790
    :goto_0
    iget-object v5, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/text/AlphabeticIndex$Record;

    :goto_2
    if-eqz v4, :cond_4

    .line 793
    iget-object v7, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    .line 794
    invoke-static {v6}, Lcom/ibm/icu/text/AlphabeticIndex$Record;->access$000(Lcom/ibm/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 797
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 799
    invoke-static {v1}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$800(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_2

    :cond_3
    move-object v1, v2

    move-object v4, v3

    goto :goto_2

    .line 806
    :cond_4
    invoke-static {v1}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$900(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 807
    invoke-static {v1}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$900(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v1

    .line 809
    :goto_3
    invoke-static {v7}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$1000(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_6

    .line 810
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v8}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$1002(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;

    .line 812
    :cond_6
    invoke-static {v7}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->access$1000(Lcom/ibm/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method private initLabels()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFKDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    iget-object v2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 449
    iget-object v4, p0, Lcom/ibm/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    iget-object v5, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 457
    invoke-static {v7, v6}, Lcom/ibm/icu/text/UTF16;->hasMoreCodePointsThan(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    .line 459
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_2

    .line 460
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_2

    .line 463
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    .line 468
    :goto_2
    iget-object v9, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v7, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    goto :goto_0

    .line 470
    :cond_3
    iget-object v9, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v7, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    .line 472
    iget-object v8, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p0, v7}, Lcom/ibm/icu/text/AlphabeticIndex;->separated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/ibm/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    .line 476
    :cond_5
    iget-object v8, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-static {v1, v7, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v8

    if-gez v8, :cond_6

    xor-int/lit8 v8, v8, -0x1

    .line 478
    invoke-interface {v1, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 480
    :cond_6
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 481
    invoke-static {v0, v7, v9}, Lcom/ibm/icu/text/AlphabeticIndex;->isOneLabelBetterThanOther(Lcom/ibm/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 482
    invoke-interface {v1, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 490
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .line 491
    iget v2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-le v0, v2, :cond_9

    .line 494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, -0x1

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/2addr v3, v6

    .line 496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    iget v5, p0, Lcom/ibm/icu/text/AlphabeticIndex;->maxLabelCount:I

    mul-int v5, v5, v3

    div-int/2addr v5, v0

    if-ne v5, v4, :cond_8

    .line 499
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    return-object v1
.end method

.method private static isOneLabelBetterThanOther(Lcom/ibm/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 825
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 831
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {v1, v0, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    if-gez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 835
    :cond_3
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private separated(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 595
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 597
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 598
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 599
    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x34f

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addLabels(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ")",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->initialLabels:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public varargs addLabels([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ibm/icu/util/ULocale;",
            ")",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 323
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 324
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/AlphabeticIndex;->addIndexExemplars(Lcom/ibm/icu/util/ULocale;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public varargs addLabels([Ljava/util/Locale;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Locale;",
            ")",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 338
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/AlphabeticIndex;->addIndexExemplars(Lcom/ibm/icu/util/ULocale;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public addRecord(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    .line 683
    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    new-instance v2, Lcom/ibm/icu/text/AlphabeticIndex$Record;

    invoke-direct {v2, p1, p2, v0}, Lcom/ibm/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public buildImmutableIndex()Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex<",
            "TV;>;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->createBucketList()Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    if-nez v0, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->createBucketList()Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    .line 628
    :goto_0
    new-instance v1, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;

    iget-object v2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/text/AlphabeticIndex$1;)V

    return-object v1
.end method

.method public clearRecords()Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    :cond_0
    return-object p0
.end method

.method public getBucketCount()I
    .locals 1

    .line 731
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->initBuckets()V

    .line 732
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$200(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;)I

    move-result v0

    return v0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 2

    .line 706
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->initBuckets()V

    .line 707
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$300(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Lcom/ibm/icu/text/Collator;)I

    move-result p1

    return p1
.end method

.method public getBucketLabels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 638
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->initBuckets()V

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {v1}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    .line 641
    invoke-virtual {v2}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCollator()Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorExternal:Lcom/ibm/icu/text/RuleBasedCollator;

    if-nez v0, :cond_0

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorOriginal:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RuleBasedCollator;

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorExternal:Lcom/ibm/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Collator cannot be cloned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 665
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorExternal:Lcom/ibm/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public getFirstCharactersInScripts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1235
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1238
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 1239
    iget-object v2, p0, Lcom/ibm/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/RuleBasedCollator;

    const v3, 0xfdd1

    invoke-virtual {v2, v3, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->internalAddContractions(ILcom/ibm/icu/text/UnicodeSet;)V

    .line 1240
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1244
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 1245
    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v4

    shl-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3f

    if-nez v3, :cond_0

    goto :goto_0

    .line 1252
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 1241
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AlphabeticIndex requires script-first-primary contractions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getInflowLabel()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLabelCount()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->maxLabelCount:I

    return v0
.end method

.method public getOverflowLabel()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUnderflowLabel()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 753
    invoke-direct {p0}, Lcom/ibm/icu/text/AlphabeticIndex;->initBuckets()V

    .line 754
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setInflowLabel(Ljava/lang/String;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setMaxLabelCount(I)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 435
    iput p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->maxLabelCount:I

    const/4 p1, 0x0

    .line 436
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setOverflowLabel(Ljava/lang/String;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setUnderflowLabel(Ljava/lang/String;)Lcom/ibm/icu/text/AlphabeticIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 375
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method
