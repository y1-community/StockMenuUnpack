.class public Lcom/ibm/icu/text/RuleBasedBreakIterator;
.super Lcom/ibm/icu/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;,
        Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RBBI_DEBUG_ARG:Ljava/lang/String; = "rbbi"

.field private static final RBBI_END:I = 0x2

.field private static final RBBI_RUN:I = 0x1

.field private static final RBBI_START:I = 0x0

.field private static final START_STATE:I = 0x1

.field private static final STOP_STATE:I

.field private static final TRACE:Z

.field public static final fDebugEnv:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final gAllBreakEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;


# instance fields
.field private fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

.field private fBreakEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private fDictionaryCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

.field private fDictionaryCharCount:I

.field private fDone:Z

.field private fLookAheadMatches:[I

.field private fPosition:I

.field public fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fRuleStatusIndex:I

.field private fText:Ljava/text/CharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rbbi"

    .line 287
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    .line 310
    new-instance v1, Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnhandledBreakEngine;-><init>()V

    sput-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    .line 312
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/text/BreakIterator;-><init>()V

    .line 225
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 265
    new-instance v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;-><init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    .line 277
    new-instance v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;-><init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 50
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v0

    .line 51
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 109
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    invoke-static {p1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/impl/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/RBBIDataWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    .line 112
    iget-object p1, p1, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget p1, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuleBasedBreakIterator rule compilation internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 119
    throw v0
.end method

.method private static CISetIndex32(Ljava/text/CharacterIterator;I)I
    .locals 1

    .line 1023
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1024
    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    goto :goto_0

    .line 1025
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1026
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_0

    .line 1027
    :cond_1
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1028
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1029
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    .line 1032
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)Lcom/ibm/icu/text/LanguageBreakEngine;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getLanguageBreakEngine(I)Lcom/ibm/icu/text/LanguageBreakEngine;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/ibm/icu/text/RuleBasedBreakIterator;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDone:Z

    return p1
.end method

.method static synthetic access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handleSafePrevious(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->handleNext()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    return p0
.end method

.method protected static final checkOffset(ILjava/text/CharacterIterator;)V
    .locals 1

    .line 500
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    if-gt p0, p1, :cond_0

    return-void

    .line 501
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-static {p0, p1}, Lcom/ibm/icu/text/RBBIRuleBuilder;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static getInstanceFromCompiledRules(Ljava/io/InputStream;)Lcom/ibm/icu/text/RuleBasedBreakIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 72
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/RBBIDataWrapper;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    .line 73
    iget-object p0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget p0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array p0, p0, [I

    iput-object p0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    return-object v0
.end method

.method public static getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/text/RuleBasedBreakIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    new-instance v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 96
    invoke-static {p0}, Lcom/ibm/icu/impl/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/RBBIDataWrapper;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    .line 97
    iget-object p0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget p0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array p0, p0, [I

    iput-object p0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    return-object v0
.end method

.method private getLanguageBreakEngine(I)Lcom/ibm/icu/text/LanguageBreakEngine;
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/LanguageBreakEngine;

    .line 689
    invoke-interface {v1, p1}, Lcom/ibm/icu/text/LanguageBreakEngine;->handles(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 694
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v0

    .line 698
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/LanguageBreakEngine;

    .line 699
    invoke-interface {v2, p1}, Lcom/ibm/icu/text/LanguageBreakEngine;->handles(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 700
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    monitor-exit v0

    return-object v2

    :cond_3
    const/16 v1, 0x100a

    .line 706
    invoke-static {p1, v1}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x16

    const/16 v3, 0x11

    if-eq v1, v2, :cond_4

    const/16 v2, 0x14

    if-ne v1, v2, :cond_5

    :cond_4
    const/16 v1, 0x11

    :cond_5
    if-eq v1, v3, :cond_b

    const/16 v2, 0x12

    if-eq v1, v2, :cond_a

    const/16 v2, 0x17

    if-eq v1, v2, :cond_9

    const/16 v2, 0x18

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_7

    const/16 v2, 0x26

    if-eq v1, v2, :cond_6

    .line 735
    :try_start_1
    sget-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/UnhandledBreakEngine;->handleChar(I)V

    goto :goto_0

    .line 717
    :cond_6
    new-instance v1, Lcom/ibm/icu/text/ThaiBreakEngine;

    invoke-direct {v1}, Lcom/ibm/icu/text/ThaiBreakEngine;-><init>()V

    goto :goto_0

    .line 723
    :cond_7
    new-instance v1, Lcom/ibm/icu/text/BurmeseBreakEngine;

    invoke-direct {v1}, Lcom/ibm/icu/text/BurmeseBreakEngine;-><init>()V

    goto :goto_0

    .line 720
    :cond_8
    new-instance v1, Lcom/ibm/icu/text/LaoBreakEngine;

    invoke-direct {v1}, Lcom/ibm/icu/text/LaoBreakEngine;-><init>()V

    goto :goto_0

    .line 726
    :cond_9
    new-instance v1, Lcom/ibm/icu/text/KhmerBreakEngine;

    invoke-direct {v1}, Lcom/ibm/icu/text/KhmerBreakEngine;-><init>()V

    goto :goto_0

    .line 732
    :cond_a
    new-instance v1, Lcom/ibm/icu/text/CjkBreakEngine;

    const/4 p1, 0x1

    invoke-direct {v1, p1}, Lcom/ibm/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_0

    .line 729
    :cond_b
    new-instance v1, Lcom/ibm/icu/text/CjkBreakEngine;

    const/4 p1, 0x0

    invoke-direct {v1, p1}, Lcom/ibm/icu/text/CjkBreakEngine;-><init>(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_c

    .line 743
    :try_start_2
    sget-object p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Lcom/ibm/icu/text/UnhandledBreakEngine;

    if-eq v1, p1, :cond_c

    .line 744
    sget-object p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_c
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 748
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private handleNext()I
    .locals 21

    move-object/from16 v0, p0

    .line 774
    sget-boolean v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_0

    .line 775
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Handle Next   pos      char  state category"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 780
    iput v2, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 781
    iput v2, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 784
    iget-object v3, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 785
    iget-object v4, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v4, v4, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 787
    iget-object v5, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v5, v5, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget-object v5, v5, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 788
    iget v6, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 789
    invoke-interface {v3, v6}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 793
    invoke-interface {v3}, Ljava/text/CharacterIterator;->current()C

    move-result v7

    const v8, 0x7fffffff

    const v9, 0xd800

    const/4 v10, 0x1

    if-lt v7, v9, :cond_1

    .line 795
    invoke-static {v3, v7}, Lcom/ibm/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    .line 797
    iput-boolean v10, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDone:Z

    const/4 v1, -0x1

    return v1

    .line 804
    :cond_1
    iget-object v11, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    invoke-virtual {v11, v10}, Lcom/ibm/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v11

    .line 806
    iget-object v12, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v12, v12, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v12, v12, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 807
    iget-object v13, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v13, v13, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v13, v13, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    const/4 v14, 0x2

    and-int/2addr v12, v14

    const/4 v2, 0x7

    const/16 v9, 0xa

    const/4 v8, 0x5

    const-string v14, "            "

    const/16 v18, 0x3

    if-eqz v12, :cond_3

    if-eqz v1, :cond_2

    .line 813
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v15

    invoke-static {v15, v8}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 814
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v7, v9}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 815
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    const/4 v15, 0x2

    invoke-static {v15, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v15, 0x2

    :goto_0
    move v9, v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x2

    goto :goto_1

    :cond_3
    const/4 v15, 0x2

    move v9, v6

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v12, 0x3

    :goto_1
    if-eqz v1, :cond_f

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_5

    if-ne v2, v15, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v1, 0x6

    const/4 v2, 0x2

    const v8, 0xd800

    const/16 v10, 0xa

    const/4 v12, 0x1

    const/4 v15, 0x7

    goto/16 :goto_3

    :cond_5
    if-ne v2, v10, :cond_9

    .line 842
    invoke-virtual {v4, v7}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result v12

    int-to-short v12, v12

    if-lt v12, v13, :cond_6

    .line 846
    iget v15, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/2addr v15, v10

    iput v15, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 849
    :cond_6
    sget-boolean v15, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v15, :cond_7

    .line 850
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    move/from16 v19, v2

    const/4 v2, 0x5

    invoke-static {v10, v2}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 851
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 852
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x7

    invoke-static {v1, v15}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-static {v12, v1}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move/from16 v19, v2

    const/4 v1, 0x6

    const/16 v10, 0xa

    const/4 v15, 0x7

    .line 858
    :goto_2
    invoke-interface {v3}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    const v8, 0xd800

    if-lt v2, v8, :cond_8

    .line 860
    invoke-static {v3, v2}, Lcom/ibm/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v2

    :cond_8
    move v7, v2

    move/from16 v2, v19

    goto :goto_3

    :cond_9
    const/4 v1, 0x6

    const v8, 0xd800

    const/16 v10, 0xa

    const/4 v15, 0x7

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v12

    .line 868
    aget-char v11, v5, v11

    .line 869
    iget-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    invoke-virtual {v1, v11}, Lcom/ibm/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v1

    add-int/lit8 v16, v1, 0x0

    .line 870
    aget-char v8, v5, v16

    const/high16 v15, 0x10000

    const/4 v10, 0x1

    if-ne v8, v10, :cond_c

    .line 873
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    if-lt v7, v15, :cond_a

    const v9, 0x10ffff

    if-gt v7, v9, :cond_a

    add-int/lit8 v8, v8, -0x1

    :cond_a
    move v9, v8

    add-int/lit8 v8, v1, 0x2

    .line 881
    aget-char v8, v5, v8

    iput v8, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    :cond_b
    const/4 v10, 0x2

    goto :goto_4

    :cond_c
    if-le v8, v10, :cond_b

    .line 884
    iget-object v10, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    aget v8, v10, v8

    if-ltz v8, :cond_b

    const/4 v10, 0x2

    add-int/2addr v1, v10

    .line 886
    aget-char v1, v5, v1

    iput v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 887
    iput v8, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    return v8

    :goto_4
    add-int/lit8 v8, v1, 0x1

    .line 899
    aget-char v8, v5, v8

    if-eqz v8, :cond_e

    .line 901
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    if-lt v7, v15, :cond_d

    const v15, 0x10ffff

    if-gt v7, v15, :cond_d

    add-int/lit8 v17, v17, -0x1

    .line 907
    :cond_d
    iget-object v15, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    aput v17, v15, v8

    :cond_e
    const/4 v8, 0x5

    const/4 v10, 0x1

    const/4 v15, 0x2

    move/from16 v20, v11

    move v11, v1

    move/from16 v1, v20

    goto/16 :goto_1

    :cond_f
    :goto_5
    if-ne v9, v6, :cond_11

    .line 920
    sget-boolean v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_10

    .line 921
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Iterator did not move. Advancing by 1."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 923
    :cond_10
    invoke-interface {v3, v6}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 924
    invoke-static {v3}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 925
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    const/4 v1, 0x0

    .line 926
    iput v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 932
    :cond_11
    iput v9, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 934
    sget-boolean v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_12

    .line 935
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    return v9
.end method

.method private handleSafePrevious(I)I
    .locals 10

    .line 957
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 958
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 959
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 961
    invoke-static {v0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    .line 962
    sget-boolean p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz p1, :cond_0

    .line 963
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Handle Previous   pos   char  state category"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 967
    :cond_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p1

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 p1, -0x1

    return p1

    .line 972
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result p1

    const/4 v3, 0x1

    .line 974
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v4

    :goto_0
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_4

    .line 984
    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result v5

    int-to-short v5, v5

    .line 985
    sget-boolean v6, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v6, :cond_2

    .line 986
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "            "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 987
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v7, 0xa

    invoke-static {p1, v7}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 988
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x7

    invoke-static {v3, v7}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v5, v3}, Lcom/ibm/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v5

    .line 994
    aget-char v3, v2, v4

    .line 995
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v4

    if-nez v3, :cond_3

    goto :goto_1

    .line 978
    :cond_3
    invoke-static {v0}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result p1

    goto :goto_0

    .line 1005
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p1

    .line 1006
    sget-boolean v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v0, :cond_5

    .line 1007
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 138
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    move-object v2, v1

    check-cast v2, Ljava/text/CharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 141
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    .line 145
    new-instance v1, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;-><init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;)V

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    .line 146
    new-instance v1, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;-><init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;)V

    iput-object v1, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    return-object v0

    :catchall_0
    move-exception v0

    .line 143
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public current()I
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 330
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 165
    :cond_1
    :try_start_0
    check-cast p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 166
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    return v0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 169
    iget-object v2, v2, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v2, :cond_5

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v3, :cond_5

    return v1

    :cond_5
    if-eqz v2, :cond_7

    .line 176
    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v3, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 179
    :cond_6
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    iget p1, p1, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_7

    const/4 v0, 0x1

    :catch_0
    :cond_7
    :goto_0
    return v0
.end method

.method public first()I
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 369
    :cond_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    .line 370
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    .line 376
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    return v0
.end method

.method public following(I)I
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->first()I

    move-result p1

    return p1

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    move-result p1

    .line 466
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->following(I)V

    .line 467
    iget-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return p1
.end method

.method public getRuleStatus()I
    .locals 3

    .line 589
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 590
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Lcom/ibm/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    aget v0, v1, v0

    return v0
.end method

.method public getRuleStatusVec([I)I
    .locals 5

    .line 617
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    aget v0, v0, v1

    if-eqz p1, :cond_0

    .line 619
    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 621
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Lcom/ibm/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    iget v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundary(I)Z
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->checkOffset(ILjava/text/CharacterIterator;)V

    .line 523
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    :cond_2
    return v2
.end method

.method public last()I
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 390
    :cond_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->isBoundary(I)Z

    return v0
.end method

.method public next()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    .line 434
    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return v0
.end method

.method public next(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    :goto_0
    if-lez p1, :cond_2

    if-eq v1, v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    :goto_1
    if-gez p1, :cond_2

    if-eq v1, v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->current()I

    move-result v1

    :cond_2
    return v1
.end method

.method public preceding(I)I
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->first()I

    move-result p1

    return p1

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->preceding(I)V

    .line 490
    iget-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return p1

    .line 481
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->last()I

    move-result p1

    return p1
.end method

.method public previous()I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    .line 445
    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fBreakCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->reset()V

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->reset()V

    .line 670
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 671
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->first()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
