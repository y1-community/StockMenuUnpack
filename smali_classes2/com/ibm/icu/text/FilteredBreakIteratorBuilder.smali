.class public abstract Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
.super Ljava/lang/Object;
.source "FilteredBreakIteratorBuilder.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmptyInstance()Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
    .locals 1

    .line 68
    new-instance v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>()V

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
    .locals 1

    .line 58
    new-instance v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
    .locals 1

    .line 43
    new-instance v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public abstract suppressBreakAfter(Ljava/lang/CharSequence;)Z
.end method

.method public abstract unsuppressBreakAfter(Ljava/lang/CharSequence;)Z
.end method

.method public abstract wrapIteratorWithFilter(Lcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;
.end method
