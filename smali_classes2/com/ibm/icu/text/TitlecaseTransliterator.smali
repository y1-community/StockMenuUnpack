.class Lcom/ibm/icu/text/TitlecaseTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "TitlecaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Title"


# instance fields
.field private caseLocale:I

.field private final csp:Lcom/ibm/icu/impl/UCaseProps;

.field private iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private result:Ljava/lang/StringBuilder;

.field sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    const-string v0, "Any-Title"

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 157
    iput-object v1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    .line 52
    iput-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->locale:Lcom/ibm/icu/util/ULocale;

    const/4 v0, 0x2

    .line 54
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/TitlecaseTransliterator;->setMaximumContextLength(I)V

    .line 55
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    iput-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    .line 56
    new-instance v0, Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Lcom/ibm/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->caseLocale:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/TitlecaseTransliterator;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->locale:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static register()V
    .locals 3

    .line 30
    new-instance v0, Lcom/ibm/icu/text/TitlecaseTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/TitlecaseTransliterator$1;-><init>()V

    const-string v1, "Any-Title"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    const-string v0, "Title"

    const-string v1, "Lower"

    const/4 v2, 0x0

    .line 37
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/TitlecaseTransliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/ibm/icu/text/SourceTargetUtility;

    new-instance v1, Lcom/ibm/icu/text/TitlecaseTransliterator$2;

    invoke-direct {v1, p0}, Lcom/ibm/icu/text/TitlecaseTransliterator$2;-><init>(Lcom/ibm/icu/text/TitlecaseTransliterator;)V

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/SourceTargetUtility;-><init>(Lcom/ibm/icu/text/Transform;)V

    iput-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    .line 173
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ibm/icu/text/SourceTargetUtility;->addSourceTargetSet(Lcom/ibm/icu/text/Transliterator;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 7

    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 75
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 91
    invoke-interface {p1, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v2

    .line 92
    iget-object v4, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v4, v2}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 106
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setText(Lcom/ibm/icu/text/Replaceable;)V

    .line 107
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 108
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 109
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v2, v4}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 111
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result p1

    if-ltz p1, :cond_a

    .line 118
    iget-object v2, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v2

    if-ltz v2, :cond_4

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    iget-object v4, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v5, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->caseLocale:I

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    goto :goto_4

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    iget-object v4, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v5, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->caseLocale:I

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    :goto_4
    if-nez v2, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 127
    :goto_5
    iget-object v2, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 130
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result p1

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :cond_7
    if-gez p1, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x1f

    if-gt p1, v2, :cond_9

    .line 140
    :try_start_2
    iget-object p1, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v2, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    .line 141
    iget-object v2, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    .line 144
    :cond_9
    iget-object v2, p0, Lcom/ibm/icu/text/TitlecaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    :goto_6
    if-eqz p1, :cond_4

    .line 148
    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v2, p1

    iput v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 149
    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v2, p1

    iput v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_3

    .line 153
    :cond_a
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
