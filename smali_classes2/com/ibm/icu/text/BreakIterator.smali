.class public abstract Lcom/ibm/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;,
        Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DONE:I = -0x1

.field public static final KIND_CHARACTER:I = 0x0

.field private static final KIND_COUNT:I = 0x5

.field public static final KIND_LINE:I = 0x2

.field public static final KIND_SENTENCE:I = 0x3

.field public static final KIND_TITLE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_WORD:I = 0x1

.field public static final WORD_IDEO:I = 0x190

.field public static final WORD_IDEO_LIMIT:I = 0x1f4

.field public static final WORD_KANA:I = 0x12c

.field public static final WORD_KANA_LIMIT:I = 0x190

.field public static final WORD_LETTER:I = 0xc8

.field public static final WORD_LETTER_LIMIT:I = 0x12c

.field public static final WORD_NONE:I = 0x0

.field public static final WORD_NONE_LIMIT:I = 0x64

.field public static final WORD_NUMBER:I = 0x64

.field public static final WORD_NUMBER_LIMIT:I = 0xc8

.field private static final iterCache:[Lcom/ibm/icu/impl/CacheValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ibm/icu/impl/CacheValue<",
            "*>;"
        }
    .end annotation
.end field

.field private static shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "breakiterator"

    .line 216
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ibm/icu/impl/CacheValue;

    .line 591
    sput-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v0, Lcom/ibm/icu/text/BreakIterator;

    monitor-enter v0

    .line 920
    :try_start_0
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 2

    const-class v0, Lcom/ibm/icu/text/BreakIterator;

    monitor-enter v0

    .line 932
    :try_start_0
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 892
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 893
    aget-object v1, v0, p1

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v1, :cond_0

    .line 895
    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    .line 902
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v1

    .line 904
    new-instance v2, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    invoke-direct {v2, p0, v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/BreakIterator;)V

    .line 905
    invoke-static {v2}, Lcom/ibm/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Lcom/ibm/icu/impl/CacheValue;

    move-result-object p0

    aput-object p0, v0, p1

    return-object v1

    .line 890
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Specified locale is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCharacterInstance()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 682
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 696
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getLineInstance()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 641
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getLineInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x2

    .line 669
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 655
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getSentenceInstance()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 722
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x3

    .line 746
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 734
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method private static getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
    .locals 2

    .line 968
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.ibm.icu.text.BreakIteratorFactory"

    .line 970
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 971
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    sput-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 979
    sget-boolean v1, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 982
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 975
    throw v0

    .line 986
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    return-object v0
.end method

.method public static getTitleInstance()Lcom/ibm/icu/text/BreakIterator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getTitleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 793
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getTitleInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getWordInstance()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 602
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x1

    .line 628
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 615
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 2

    .line 833
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    .line 834
    aget-object v1, v0, p2

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v1, :cond_0

    .line 836
    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 837
    aput-object v1, v0, p2

    .line 841
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerInstance(Lcom/ibm/icu/text/BreakIterator;Ljava/util/Locale;I)Ljava/lang/Object;
    .locals 0

    .line 812
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/BreakIterator;->registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p0, :cond_2

    .line 865
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 871
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    .line 854
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "registry key must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 237
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1013
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/BreakIterator;->actualLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/BreakIterator;->validLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public getRuleStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRuleStatusVec([I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 483
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 484
    aput v0, p1, v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 373
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .locals 2

    .line 350
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result v0

    :goto_0
    if-lt v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 1042
    iput-object p1, p0, Lcom/ibm/icu/text/BreakIterator;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1043
    iput-object p2, p0, Lcom/ibm/icu/text/BreakIterator;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void

    .line 1037
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 537
    new-instance v0, Lcom/ibm/icu/impl/CSCharacterIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/CSCharacterIterator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 520
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
