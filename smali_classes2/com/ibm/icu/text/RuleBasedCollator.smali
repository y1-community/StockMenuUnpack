.class public final Lcom/ibm/icu/text/RuleBasedCollator;
.super Lcom/ibm/icu/text/Collator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;,
        Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;,
        Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;,
        Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;,
        Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private actualLocaleIsSameAsValid:Z

.field private collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

.field data:Lcom/ibm/icu/impl/coll/CollationData;

.field private frozenLock:Ljava/util/concurrent/locks/Lock;

.field settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/coll/SharedObject$Reference<",
            "Lcom/ibm/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/coll/CollationTailoring;Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 1726
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V

    .line 1727
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1728
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 1729
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    .line 1730
    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x0

    .line 1731
    iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V

    if-eqz p1, :cond_0

    .line 210
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 211
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->internalBuildTailoring(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Collation rules can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private adoptTailoring(Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    .locals 1

    .line 1736
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1737
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 1738
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    .line 1739
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x0

    .line 1740
    iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen RuleBasedCollator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final compareNFDIter(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;)I
    .locals 5

    .line 1595
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v0

    .line 1596
    invoke-virtual {p2}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, -0x2

    const v3, 0xfffe

    const/4 v4, -0x1

    if-gez v0, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    .line 1607
    :cond_3
    invoke-virtual {p1, p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Lcom/ibm/icu/impl/Normalizer2Impl;I)I

    move-result v0

    :goto_0
    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    const/4 v2, -0x1

    goto :goto_1

    .line 1614
    :cond_5
    invoke-virtual {p2, p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Lcom/ibm/icu/impl/Normalizer2Impl;I)I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_6

    return v4

    :cond_6
    if-le v0, v2, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;
    .locals 3

    .line 1823
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_1

    .line 1826
    new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/text/RuleBasedCollator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1828
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    return-object v0
.end method

.method private getCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)Lcom/ibm/icu/text/CollationKey;
    .locals 1

    .line 1071
    iget-object v0, p2, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Lcom/ibm/icu/text/RawCollationKey;

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RawCollationKey;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object v0

    iput-object v0, p2, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Lcom/ibm/icu/text/RawCollationKey;

    .line 1072
    new-instance v0, Lcom/ibm/icu/text/CollationKey;

    iget-object p2, p2, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Lcom/ibm/icu/text/RawCollationKey;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)V

    return-object v0
.end method

.method private final getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private final getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private getRawCollationKey(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RawCollationKey;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)Lcom/ibm/icu/text/RawCollationKey;
    .locals 1

    if-nez p2, :cond_0

    .line 1141
    new-instance p2, Lcom/ibm/icu/text/RawCollationKey;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/ibm/icu/text/RawCollationKey;-><init>(I)V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p2, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    if-nez v0, :cond_1

    .line 1143
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p2, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    .line 1145
    :cond_1
    :goto_0
    new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;-><init>(Lcom/ibm/icu/text/RawCollationKey;)V

    .line 1146
    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/text/RuleBasedCollator;->writeSortKey(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1147
    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result p1

    iput p1, p2, Lcom/ibm/icu/text/RawCollationKey;->size:I

    return-object p2
.end method

.method private final initMaxExpansions()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v2, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-static {v2}, Lcom/ibm/icu/text/CollationElementIterator;->computeMaxExpansions(Lcom/ibm/icu/impl/coll/CollationData;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    .line 260
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final internalBuildTailoring(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/ibm/icu/impl/coll/CollationRoot;->getRoot()Lcom/ibm/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-string v2, "com.ibm.icu.impl.coll.CollationBuilder"

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 228
    const-class v4, Lcom/ibm/icu/impl/coll/CollationTailoring;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "parseAndBuild"

    new-array v4, v2, [Ljava/lang/Class;

    .line 230
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 231
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationTailoring;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 235
    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 236
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->adoptTailoring(Lcom/ibm/icu/impl/coll/CollationTailoring;)V

    return-void

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    throw p1
.end method

.method private internalSetVariableTop(J)V
    .locals 5

    .line 846
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-wide v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 849
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getGroupForPrimary(J)I

    move-result p1

    const/16 p2, 0x1000

    if-lt p1, p2, :cond_0

    const/16 v0, 0x1003

    if-lt v0, p1, :cond_0

    .line 854
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v0

    .line 857
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-wide v2, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 858
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v2

    sub-int/2addr p1, p2

    .line 860
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object p2

    iget p2, p2, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    .line 859
    invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 861
    iput-wide v0, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    .line 862
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    goto :goto_0

    .line 851
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The variable top must be a primary weight in the space/punctuation/symbols/currency symbols range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 0

    .line 1832
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1833
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method private setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void
.end method

.method private simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1152
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private writeIdenticalLevel(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)V
    .locals 10

    .line 1178
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v6

    const/4 v0, 0x1

    .line 1179
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    .line 1181
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/text/RawCollationKey;->size:I

    if-eqz v6, :cond_0

    .line 1184
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object v0

    invoke-static {v2, p1, v2, v6, v0}, Lcom/ibm/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILcom/ibm/icu/util/ByteArrayWrapper;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1187
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 1188
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v9, v1, v6

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, v3, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v5, p1

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    .line 1191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/ibm/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILcom/ibm/icu/util/ByteArrayWrapper;)I

    .line 1194
    :cond_1
    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object p1

    iget-object p1, p1, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    invoke-static {p2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->access$100(Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object v0

    iget v0, v0, Lcom/ibm/icu/text/RawCollationKey;->size:I

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->setBufferAndAppended([BI)V

    return-void
.end method

.method private writeSortKey(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 10

    .line 1156
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    .line 1157
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v1, v0, p1, v2}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1159
    iget-object v3, p3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, p3, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 1160
    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/ibm/icu/impl/coll/CollationSettings;

    const/4 v7, 0x1

    sget-object v8, Lcom/ibm/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;

    const/4 v9, 0x1

    move-object v6, p2

    .line 1159
    invoke-static/range {v3 .. v9}, Lcom/ibm/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;[ZLcom/ibm/icu/impl/coll/CollationSettings;Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;ILcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    goto :goto_0

    .line 1164
    :cond_0
    iget-object v1, p3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v1, v0, p1, v2}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1165
    iget-object v3, p3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, p3, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 1166
    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/ibm/icu/impl/coll/CollationSettings;

    const/4 v7, 0x1

    sget-object v8, Lcom/ibm/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;

    const/4 v9, 0x1

    move-object v6, p2

    .line 1165
    invoke-static/range {v3 .. v9}, Lcom/ibm/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;[ZLcom/ibm/icu/impl/coll/CollationSettings;Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;ILcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    .line 1170
    :goto_0
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p3

    check-cast p3, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength()I

    move-result p3

    const/16 v0, 0xf

    if-ne p3, v0, :cond_1

    .line 1171
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->writeIdenticalLevel(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)V

    .line 1173
    :cond_1
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Lcom/ibm/icu/text/Collator;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 3

    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RuleBasedCollator;

    .line 341
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object v2

    iput-object v2, v1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 342
    iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    .line 343
    iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1484
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1637
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1638
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    return v0

    .line 1640
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1641
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1647
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 1648
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v2

    if-lez v1, :cond_6

    .line 1650
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1651
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1652
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1653
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6

    .line 1655
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1656
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 1668
    :cond_6
    iget v6, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    const/4 v3, -0x2

    if-ltz v6, :cond_9

    .line 1670
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x17f

    if-eq v1, v4, :cond_7

    .line 1671
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 1672
    :cond_7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_8

    .line 1673
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 1674
    :cond_8
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, v4, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object v7, p1

    move-object v8, p2

    move v9, v1

    invoke-static/range {v4 .. v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    goto :goto_3

    :cond_9
    const/4 v4, -0x2

    :goto_3
    const/4 v5, 0x0

    if-ne v4, v3, :cond_b

    .line 1685
    :try_start_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1686
    :try_start_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1687
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v2, p1, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1688
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v2, p2, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1689
    iget-object v2, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-static {v2, v4, v0}, Lcom/ibm/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationSettings;)I

    move-result v2

    goto :goto_4

    .line 1692
    :cond_a
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v2, p1, v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1693
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v2, p2, v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1694
    iget-object v2, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-static {v2, v4, v0}, Lcom/ibm/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationSettings;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    move v4, v2

    .line 1698
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v5, v3

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1699
    throw p1

    :cond_b
    :goto_6
    if-nez v4, :cond_e

    .line 1701
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_c

    goto :goto_7

    .line 1707
    :cond_c
    :try_start_2
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v5

    .line 1709
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, v2, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 1710
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1711
    iget-object v0, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1712
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {p1, p2, v1}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1713
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    iget-object p2, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-static {v2, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->compareNFDIter(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1720
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return p1

    .line 1715
    :cond_d
    :try_start_3
    iget-object v0, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v0, v2, p1, v1}, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1716
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {p1, v2, p2, v1}, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1717
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    iget-object p2, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-static {v2, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->compareNFDIter(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1720
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return p1

    :catchall_2
    move-exception p1

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1721
    throw p1

    :cond_e
    :goto_7
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1406
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1409
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/RuleBasedCollator;

    .line 1410
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1411
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    if-ne v1, v3, :cond_3

    return v0

    .line 1412
    :cond_3
    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1413
    :goto_0
    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_6

    return v2

    .line 1416
    :cond_6
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v4

    .line 1417
    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_7

    .line 1418
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-nez v3, :cond_8

    .line 1419
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1421
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    .line 1426
    :cond_9
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 1427
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 1428
    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public freeze()Lcom/ibm/icu/text/Collator;
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    .line 323
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/text/RuleBasedCollator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->freeze()Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public getCollationElementIterator(Lcom/ibm/icu/text/UCharacterIterator;)Lcom/ibm/icu/text/CollationElementIterator;
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 296
    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 271
    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/CollationElementIterator;
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 283
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    .line 284
    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Lcom/ibm/icu/text/CollationKey;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1063
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    .line 1064
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)Lcom/ibm/icu/text/CollationKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1067
    throw p1
.end method

.method public getContractionsAndExpansions(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1016
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    if-eqz p2, :cond_1

    .line 1019
    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 1021
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;-><init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->forData(Lcom/ibm/icu/impl/coll/CollationData;)V

    return-void
.end method

.method public getDecomposition()I
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0
.end method

.method public getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 3

    .line 1843
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_1

    .line 1844
    iget-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1

    .line 1845
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_2

    .line 1846
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    return-object p1

    .line 1848
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ULocale.Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxVariable()I
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v0

    add-int/lit16 v0, v0, 0x1000

    return v0
.end method

.method public getNumericCollation()Z
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1096
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    .line 1097
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Lcom/ibm/icu/text/RawCollationKey;Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)Lcom/ibm/icu/text/RawCollationKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1100
    throw p1
.end method

.method public getReorderCodes()[I
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules(Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 979
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 981
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ibm/icu/impl/coll/CollationLoader;->getRootRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStrength()I
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    return v0
.end method

.method public getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 993
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 994
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-eqz v1, :cond_0

    .line 995
    new-instance v1, Lcom/ibm/icu/impl/coll/TailoredSet;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/coll/TailoredSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/coll/TailoredSet;->forData(Lcom/ibm/icu/impl/coll/CollationData;)V

    :cond_0
    return-object v0
.end method

.method public getUCAVersion()Lcom/ibm/icu/util/VersionInfo;
    .locals 4

    .line 1809
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getVersion()Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    .line 1817
    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {v0}, Lcom/ibm/icu/util/VersionInfo;->getMilli()I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVariableTop()I
    .locals 2

    .line 1365
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-wide v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int v1, v0

    return v1
.end method

.method public getVersion()Lcom/ibm/icu/util/VersionInfo;
    .locals 4

    .line 1794
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->version:I

    .line 1795
    sget-object v1, Lcom/ibm/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {v1}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v1

    ushr-int/lit8 v2, v0, 0x18

    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 1796
    invoke-static {v2, v1, v3, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1445
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->hashCode()I

    move-result v0

    .line 1446
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v1, :cond_0

    return v0

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 1449
    new-instance v2, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 1450
    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v3, :cond_1

    .line 1451
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget v3, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method internalAddContractions(ILcom/ibm/icu/text/UnicodeSet;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    new-instance v0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v1, v2}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;-><init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object p2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p2, p1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->forCodePoint(Lcom/ibm/icu/impl/coll/CollationData;I)V

    return-void
.end method

.method public internalGetCEs(Ljava/lang/CharSequence;)[J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1207
    :try_start_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1208
    :try_start_1
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    .line 1210
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v2, v1, p1, v3}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1212
    iget-object p1, v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v2, v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v2, v1, p1, v3}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1215
    iget-object p1, v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1217
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->fetchCEs()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1219
    new-array v2, v1, [J

    .line 1220
    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCEs()[J

    move-result-object p1

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1224
    throw p1
.end method

.method public isAlternateHandlingShifted()Z
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getAlternateHandling()Z

    move-result v0

    return v0
.end method

.method public isCaseLevel()Z
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrenchCollation()Z
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHiraganaQuaternary()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isLowerCaseFirst()Z
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isUnsafe(I)Z
    .locals 2

    .line 1753
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result p1

    return p1
.end method

.method public isUpperCaseFirst()Z
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x300

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlternateHandlingDefault()V
    .locals 2

    .line 478
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 479
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 482
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setAlternateHandlingDefault(I)V

    .line 483
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 1

    .line 606
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 607
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 609
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 610
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public final setCaseFirstDefault()V
    .locals 2

    .line 461
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 462
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 465
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setCaseFirstDefault(I)V

    .line 466
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevel(Z)V
    .locals 2

    .line 632
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 633
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isCaseLevel()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x400

    .line 635
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 636
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevelDefault()V
    .locals 3

    .line 495
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 496
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/16 v2, 0x400

    .line 499
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 500
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setDecomposition(I)V
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong decomposition mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->getFlag(I)Z

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 686
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 687
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setDecompositionDefault()V
    .locals 3

    .line 512
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 513
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 516
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 517
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollation(Z)V
    .locals 2

    .line 583
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 584
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrenchCollation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x800

    .line 586
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 587
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollationDefault()V
    .locals 3

    .line 529
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 530
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/16 v2, 0x800

    .line 533
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 534
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setHiraganaQuaternary(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    return-void
.end method

.method public setHiraganaQuaternaryDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    return-void
.end method

.method setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1864
    iput-boolean p2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1867
    iput-boolean p2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    .line 1871
    :goto_0
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method public setLowerCaseFirst(Z)V
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 444
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isLowerCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x200

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 446
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 447
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public bridge synthetic setMaxVariable(I)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->setMaxVariable(I)Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVariable(I)Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 5

    const/16 v0, 0x1000

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-gt v0, p1, :cond_4

    const/16 v2, 0x1003

    if-gt p1, v2, :cond_4

    add-int/lit16 v2, p1, -0x1000

    .line 741
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v3

    if-ne v2, v3, :cond_1

    return-object p0

    .line 745
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v3

    .line 746
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v4

    if-ne v4, v3, :cond_2

    if-gez v2, :cond_2

    return-object p0

    .line 751
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v4

    if-ne p1, v1, :cond_3

    .line 754
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result p1

    add-int/2addr p1, v0

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v0

    .line 758
    iget p1, v3, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v4, v2, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 759
    iput-wide v0, v4, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    .line 760
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-object p0

    .line 739
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal max variable group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumericCollation(Z)V
    .locals 2

    .line 890
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 892
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 893
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/4 v1, 0x2

    .line 894
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 895
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setNumericCollationDefault()V
    .locals 3

    .line 562
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 563
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    const/4 v2, 0x2

    .line 566
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 567
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public varargs setReorderCodes([I)V
    .locals 5

    .line 912
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 913
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 914
    aget v3, p1, v0

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    .line 917
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 918
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 919
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    return-void

    .line 922
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v3

    if-ne v1, v2, :cond_5

    .line 923
    aget v0, p1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 924
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    if-eq p1, v3, :cond_4

    .line 925
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object p1

    .line 926
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->copyReorderingFrom(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    .line 927
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    :cond_4
    return-void

    .line 931
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-nez v1, :cond_6

    .line 933
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_2

    .line 935
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReordering(Lcom/ibm/icu/impl/coll/CollationData;[I)V

    .line 937
    :goto_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setStrength(I)V
    .locals 1

    .line 711
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 712
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 714
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 715
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setStrengthDefault()V
    .locals 2

    .line 546
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 547
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 550
    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setStrengthDefault(I)V

    .line 551
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setUpperCaseFirst(Z)V
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 422
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isUpperCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x300

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 424
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 425
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setVariableTop(Ljava/lang/String;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 803
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    if-eqz p1, :cond_2

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    .line 809
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 810
    new-instance v1, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 811
    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v2

    .line 812
    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v0

    goto :goto_0

    .line 814
    :cond_0
    new-instance v1, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 815
    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v2

    .line 816
    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v0

    :goto_0
    const-wide v4, 0x101000100L

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    const/16 p1, 0x20

    ushr-long v0, v2, p1

    .line 821
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    .line 822
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-wide v0, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int p1, v0

    return p1

    .line 819
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable top argument string must map to exactly one collation element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 805
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable top argument string can not be null or zero in length."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVariableTop(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 841
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 842
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    return-void
.end method
