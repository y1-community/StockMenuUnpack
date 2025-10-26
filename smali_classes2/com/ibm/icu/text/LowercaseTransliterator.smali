.class Lcom/ibm/icu/text/LowercaseTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "LowercaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Lower"


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

    const-string v0, "Any-Lower"

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 118
    iput-object v1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    .line 55
    iput-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->locale:Lcom/ibm/icu/util/ULocale;

    .line 56
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    iput-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    .line 57
    new-instance v0, Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Lcom/ibm/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 59
    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->caseLocale:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/LowercaseTransliterator;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->locale:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static register()V
    .locals 3

    .line 32
    new-instance v0, Lcom/ibm/icu/text/LowercaseTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/LowercaseTransliterator$1;-><init>()V

    const-string v1, "Any-Lower"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    const-string v0, "Lower"

    const-string v1, "Upper"

    const/4 v2, 0x1

    .line 39
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/ibm/icu/text/SourceTargetUtility;

    new-instance v1, Lcom/ibm/icu/text/LowercaseTransliterator$2;

    invoke-direct {v1, p0}, Lcom/ibm/icu/text/LowercaseTransliterator$2;-><init>(Lcom/ibm/icu/text/LowercaseTransliterator;)V

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/SourceTargetUtility;-><init>(Lcom/ibm/icu/text/Transform;)V

    iput-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    .line 134
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ibm/icu/text/SourceTargetUtility;->addSourceTargetSet(Lcom/ibm/icu/text/Transliterator;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 5

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 69
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setText(Lcom/ibm/icu/text/Replaceable;)V

    .line 77
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 84
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 85
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 86
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result p1

    if-ltz p1, :cond_6

    .line 87
    iget-object v1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    iget-object v2, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->caseLocale:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    .line 89
    iget-object v1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 92
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result p1

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :cond_3
    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_5

    .line 102
    :try_start_3
    iget-object p1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    .line 103
    iget-object v1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/text/LowercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 110
    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v1, p1

    iput v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 111
    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v1, p1

    iput v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_0

    .line 114
    :cond_6
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
