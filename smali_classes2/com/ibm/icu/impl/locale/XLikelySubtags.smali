.class public final Lcom/ibm/icu/impl/locale/XLikelySubtags;
.super Ljava/lang/Object;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG_OUTPUT:Z = false

.field public static final INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

.field private static final PSEUDO_ACCENTS_PREFIX:Ljava/lang/String; = "\'"

.field private static final PSEUDO_BIDI_PREFIX:Ljava/lang/String; = "+"

.field private static final PSEUDO_CRACKED_PREFIX:Ljava/lang/String; = ","

.field public static final SKIP_SCRIPT:I = 0x1


# instance fields
.field private final defaultLsrIndex:I

.field private final languageAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lsrs:[Lcom/ibm/icu/impl/locale/LSR;

.field private final regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trie:Lcom/ibm/icu/util/BytesTrie;

.field private final trieFirstLetterStates:[J

.field private final trieUndState:J

.field private final trieUndZzzzState:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    new-instance v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;

    invoke-static {}, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->load()Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/locale/XLikelySubtags;-><init>(Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;)V
    .locals 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [J

    .line 128
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieFirstLetterStates:[J

    .line 132
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->languageAliases:Ljava/util/Map;

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->languageAliases:Ljava/util/Map;

    .line 133
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->regionAliases:Ljava/util/Map;

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->regionAliases:Ljava/util/Map;

    .line 134
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->trie:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    .line 135
    iget-object p1, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    const/16 p1, 0x2a

    .line 138
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    .line 140
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieUndState:J

    .line 141
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    .line 143
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieUndZzzzState:J

    .line 144
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    .line 146
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->defaultLsrIndex:I

    .line 147
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->reset()Lcom/ibm/icu/util/BytesTrie;

    const/16 p1, 0x61

    :goto_0
    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieFirstLetterStates:[J

    add-int/lit8 v1, p1, -0x61

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->reset()Lcom/ibm/icu/util/BytesTrie;

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getCanonical(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 183
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private getLikelyIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const-string v0, "und"

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    const-string v0, "Zzzz"

    .line 428
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    .line 432
    :cond_1
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/BytesTrie;-><init>(Lcom/ibm/icu/util/BytesTrie;)V

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x61

    if-ltz v2, :cond_2

    const/16 v3, 0x19

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieFirstLetterStates:[J

    aget-wide v2, v3, v2

    cmp-long v8, v2, v5

    if-eqz v8, :cond_2

    .line 439
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move-result-object v2

    invoke-static {v2, p1, v4}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 441
    :cond_2
    invoke-static {v0, p1, v7}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    .line 444
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v2

    goto :goto_1

    .line 446
    :cond_3
    iget-wide v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieUndState:J

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move-wide v2, v5

    :goto_1
    if-lez p1, :cond_4

    if-ne p1, v4, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    .line 456
    :cond_4
    invoke-static {v0, p2, v7}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_5

    .line 458
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    goto :goto_2

    :cond_5
    cmp-long p2, v2, v5

    if-nez p2, :cond_6

    .line 461
    iget-wide v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieUndZzzzState:J

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    goto :goto_2

    .line 463
    :cond_6
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    .line 464
    invoke-static {v0, v1, v7}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result p1

    .line 466
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    :cond_7
    :goto_2
    if-lez p1, :cond_8

    goto :goto_3

    .line 474
    :cond_8
    invoke-static {v0, v1, v7}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result p1

    :goto_3
    return p1
.end method

.method private getTable()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/locale/LSR;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie;->iterator()Lcom/ibm/icu/util/BytesTrie$Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/BytesTrie$Entry;

    const/4 v4, 0x0

    .line 560
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 561
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie$Entry;->bytesLength()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 563
    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->byteAt(I)B

    move-result v4

    const/16 v7, 0x2a

    if-ne v4, v7, :cond_0

    const-string v4, "*-"

    .line 565
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-ltz v4, :cond_1

    int-to-char v4, v4

    .line 567
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    .line 569
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v4, v6

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    iget v3, v3, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    aget-object v3, v5, v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private makeMaximizedLsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 9

    .line 216
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ","

    const-string v5, "+"

    const-string v6, "\'"

    const/4 v7, 0x7

    if-ne v0, v3, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x58

    if-ne v0, v8, :cond_0

    .line 217
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    new-instance p4, Lcom/ibm/icu/impl/locale/LSR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3, v7}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p4

    .line 222
    :pswitch_1
    new-instance p4, Lcom/ibm/icu/impl/locale/LSR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3, v7}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p4

    .line 219
    :pswitch_2
    new-instance p4, Lcom/ibm/icu/impl/locale/LSR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3, v7}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p4

    :cond_0
    :goto_0
    const-string v0, "PS"

    .line 232
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x6

    .line 235
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    const/4 v1, -0x1

    goto :goto_2

    :sswitch_0
    const-string v1, "PSCRACK"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "PSACCENT"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_1

    :sswitch_2
    const-string v1, "PSBIDI"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    .line 245
    :pswitch_3
    new-instance p4, Lcom/ibm/icu/impl/locale/LSR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p3, "XC"

    :cond_5
    invoke-direct {p4, p1, p2, p3, v7}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p4

    .line 237
    :pswitch_4
    new-instance p4, Lcom/ibm/icu/impl/locale/LSR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p3, "XA"

    :cond_6
    invoke-direct {p4, p1, p2, p3, v7}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p4

    .line 241
    :pswitch_5
    new-instance p4, Lcom/ibm/icu/impl/locale/LSR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p3, "XB"

    :cond_7
    invoke-direct {p4, p1, p2, p3, v7}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p4

    .line 253
    :cond_8
    :goto_3
    iget-object p4, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->languageAliases:Ljava/util/Map;

    invoke-static {p4, p1}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->getCanonical(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    iget-object p4, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->regionAliases:Ljava/util/Map;

    invoke-static {p4, p3}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->getCanonical(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x72cb9471 -> :sswitch_2
        0xfbde48d -> :sswitch_1
        0x196b2977 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 15

    move-object v0, p0

    const-string v1, "und"

    move-object/from16 v2, p1

    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    move-object v2, v4

    :cond_0
    const-string v3, "Zzzz"

    move-object/from16 v5, p2

    .line 266
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v5, v4

    :cond_1
    const-string v3, "ZZ"

    move-object/from16 v6, p3

    .line 269
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v6, v4

    .line 272
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    new-instance v1, Lcom/ibm/icu/impl/locale/LSR;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v5, v6, v3}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 277
    :cond_3
    new-instance v3, Lcom/ibm/icu/util/BytesTrie;

    iget-object v7, v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-direct {v3, v7}, Lcom/ibm/icu/util/BytesTrie;-><init>(Lcom/ibm/icu/util/BytesTrie;)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lt v7, v10, :cond_4

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x61

    if-ltz v7, :cond_4

    const/16 v10, 0x19

    if-gt v7, v10, :cond_4

    iget-object v10, v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieFirstLetterStates:[J

    aget-wide v13, v10, v7

    cmp-long v7, v13, v8

    if-eqz v7, :cond_4

    .line 284
    invoke-virtual {v3, v13, v14}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move-result-object v7

    invoke-static {v7, v2, v11}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    .line 286
    :cond_4
    invoke-static {v3, v2, v12}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v7

    :goto_0
    const/4 v10, 0x4

    if-ltz v7, :cond_6

    .line 289
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    .line 292
    :goto_1
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v13

    goto :goto_2

    .line 295
    :cond_6
    iget-wide v13, v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieUndState:J

    invoke-virtual {v3, v13, v14}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move-wide v13, v8

    :goto_2
    if-lez v7, :cond_8

    if-ne v7, v11, :cond_7

    const/4 v7, 0x0

    .line 304
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    or-int/lit8 v10, v10, 0x2

    goto :goto_3

    .line 308
    :cond_8
    invoke-static {v3, v5, v12}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_a

    .line 310
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    or-int/lit8 v10, v10, 0x2

    .line 313
    :cond_9
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v13

    goto :goto_3

    :cond_a
    or-int/lit8 v10, v10, 0x2

    cmp-long v11, v13, v8

    if-nez v11, :cond_b

    .line 317
    iget-wide v8, v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieUndZzzzState:J

    invoke-virtual {v3, v8, v9}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    goto :goto_3

    .line 319
    :cond_b
    invoke-virtual {v3, v13, v14}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    .line 320
    invoke-static {v3, v4, v12}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v7

    .line 322
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v13

    :cond_c
    :goto_3
    if-lez v7, :cond_d

    .line 329
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    :goto_4
    or-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 333
    :cond_d
    invoke-static {v3, v6, v12}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_e

    .line 335
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_e
    or-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v13, v7

    if-nez v9, :cond_f

    .line 341
    iget v7, v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->defaultLsrIndex:I

    goto :goto_5

    .line 343
    :cond_f
    invoke-virtual {v3, v13, v14}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    .line 344
    invoke-static {v3, v4, v12}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v7

    .line 349
    :cond_10
    :goto_5
    iget-object v3, v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    aget-object v3, v3, v7

    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    move-object v1, v2

    :goto_6
    if-nez v10, :cond_12

    return-object v3

    :cond_12
    and-int/lit8 v2, v10, 0x4

    if-nez v2, :cond_13

    .line 360
    iget-object v1, v3, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    :cond_13
    and-int/lit8 v2, v10, 0x2

    if-nez v2, :cond_14

    .line 363
    iget-object v5, v3, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    :cond_14
    and-int/lit8 v2, v10, 0x1

    if-nez v2, :cond_15

    .line 366
    iget-object v6, v3, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 369
    :cond_15
    new-instance v2, Lcom/ibm/icu/impl/locale/LSR;

    invoke-direct {v2, v1, v5, v6, v10}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

.method private static final trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I
    .locals 4

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 p1, 0x2a

    .line 483
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_1

    .line 485
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    .line 487
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge p2, v0, :cond_2

    .line 489
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    or-int/lit16 p1, v3, 0x80

    .line 494
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    .line 499
    :goto_1
    sget-object p2, Lcom/ibm/icu/impl/locale/XLikelySubtags$1;->$SwitchMap$com$ibm$icu$util$BytesTrie$Result:[I

    invoke-virtual {p1}, Lcom/ibm/icu/util/BytesTrie$Result;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    return v1

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result p0

    return p0

    :cond_4
    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canonicalize(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 5

    .line 169
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->languageAliases:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->regionAliases:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 174
    :cond_1
    :goto_0
    new-instance v4, Lcom/ibm/icu/util/ULocale;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 176
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p1

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-direct {v4, v0, p1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method compareLikely(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/impl/locale/LSR;I)I
    .locals 2

    .line 387
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v1, p2, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    return p1

    .line 390
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v1, p2, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-ltz p3, :cond_1

    and-int/lit8 p2, p3, 0x2

    if-nez p2, :cond_1

    shr-int/lit8 p2, p3, 0x2

    goto :goto_0

    .line 395
    :cond_1
    iget-object p2, p1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const-string p3, ""

    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->getLikelyIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    shl-int/lit8 p3, p2, 0x2

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    aget-object p2, v0, p2

    .line 399
    iget-object p1, p1, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object p2, p2, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 p1, p3, 0x1

    return p1

    :cond_2
    and-int/lit8 p1, p3, -0x2

    return p1

    .line 405
    :cond_3
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object p2, p2, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    if-ltz p3, :cond_4

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_4

    shr-int/lit8 p2, p3, 0x2

    goto :goto_1

    .line 410
    :cond_4
    iget-object p2, p1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object p3, p1, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->getLikelyIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    shl-int/lit8 p3, p2, 0x2

    or-int/lit8 p3, p3, 0x2

    .line 413
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    aget-object p2, v0, p2

    .line 414
    iget-object p1, p1, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object p2, p2, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    or-int/lit8 p1, p3, 0x1

    return p1

    :cond_5
    and-int/lit8 p1, p3, -0x2

    return p1

    :cond_6
    and-int/lit8 p1, p3, -0x2

    return p1
.end method

.method public makeMaximizedLsrFrom(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 3

    .line 189
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@x="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    .line 195
    new-instance v0, Lcom/ibm/icu/impl/locale/LSR;

    const/4 v1, 0x7

    const-string v2, ""

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->makeMaximizedLsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    return-object p1
.end method

.method public makeMaximizedLsrFrom(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 3

    .line 202
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "und-x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->makeMaximizedLsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    :goto_0
    new-instance p1, Lcom/ibm/icu/impl/locale/LSR;

    const/4 v1, 0x7

    const-string v2, ""

    invoke-direct {p1, v0, v2, v2, v1}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method minimizeSubtags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale$Minimize;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 5

    .line 512
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p3

    .line 522
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/BytesTrie;-><init>(Lcom/ibm/icu/util/BytesTrie;)V

    .line 523
    iget-object v1, p3, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    const-string v3, ""

    if-nez v1, :cond_0

    .line 526
    invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 529
    invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    aget-object v0, v0, v1

    .line 535
    iget-object v1, p3, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v4, v0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p3, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v0, v0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    new-instance p1, Lcom/ibm/icu/impl/locale/LSR;

    iget-object p2, p3, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-direct {p1, p2, v3, v3, v2}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 538
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/ULocale$Minimize;->FAVOR_REGION:Lcom/ibm/icu/util/ULocale$Minimize;

    if-ne p4, v0, :cond_2

    .line 539
    new-instance p1, Lcom/ibm/icu/impl/locale/LSR;

    iget-object p2, p3, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object p3, p3, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {p1, p2, v3, p3, v2}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_2
    const/4 p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    .line 547
    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    .line 548
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/locale/LSR;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 549
    new-instance p1, Lcom/ibm/icu/impl/locale/LSR;

    iget-object p2, p3, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object p3, p3, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v3, v2}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_4
    if-eqz p4, :cond_5

    .line 551
    new-instance p1, Lcom/ibm/icu/impl/locale/LSR;

    iget-object p2, p3, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object p3, p3, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {p1, p2, v3, p3, v2}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_5
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->getTable()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
