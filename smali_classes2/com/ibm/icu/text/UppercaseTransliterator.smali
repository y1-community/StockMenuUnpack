.class Lcom/ibm/icu/text/UppercaseTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "UppercaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Upper"


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

    const-string v0, "Any-Upper"

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 114
    iput-object v1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    .line 51
    iput-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->locale:Lcom/ibm/icu/util/ULocale;

    .line 52
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    iput-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    .line 53
    new-instance v0, Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Lcom/ibm/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 55
    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->caseLocale:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/UppercaseTransliterator;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->locale:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static register()V
    .locals 2

    .line 31
    new-instance v0, Lcom/ibm/icu/text/UppercaseTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/UppercaseTransliterator$1;-><init>()V

    const-string v1, "Any-Upper"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/ibm/icu/text/SourceTargetUtility;

    new-instance v1, Lcom/ibm/icu/text/UppercaseTransliterator$2;

    invoke-direct {v1, p0}, Lcom/ibm/icu/text/UppercaseTransliterator$2;-><init>(Lcom/ibm/icu/text/UppercaseTransliterator;)V

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/SourceTargetUtility;-><init>(Lcom/ibm/icu/text/Transform;)V

    iput-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    .line 130
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->sourceTargetUtility:Lcom/ibm/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ibm/icu/text/SourceTargetUtility;->addSourceTargetSet(Lcom/ibm/icu/text/Transliterator;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 5

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    .line 69
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setText(Lcom/ibm/icu/text/Replaceable;)V

    .line 73
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 80
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 81
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 82
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result p1

    if-ltz p1, :cond_6

    .line 83
    iget-object v1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->csp:Lcom/ibm/icu/impl/UCaseProps;

    iget-object v2, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->caseLocale:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    .line 85
    iget-object v1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 88
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result p1

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :cond_3
    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_5

    .line 98
    :try_start_3
    iget-object p1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    .line 99
    iget-object v1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/text/UppercaseTransliterator;->iter:Lcom/ibm/icu/text/ReplaceableContextIterator;

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 106
    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v1, p1

    iput v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 107
    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v1, p1

    iput v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_0

    .line 110
    :cond_6
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
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
