.class public Lcom/ibm/icu/impl/number/parse/ParsingUtils;
.super Ljava/lang/Object;
.source "ParsingUtils.java"


# static fields
.field public static final PARSE_FLAG_ALLOW_INFINITE_RECURSION:I = 0x4000

.field public static final PARSE_FLAG_EXACT_AFFIX:I = 0x200

.field public static final PARSE_FLAG_FORCE_BIG_DECIMAL:I = 0x1000

.field public static final PARSE_FLAG_GROUPING_DISABLED:I = 0x20

.field public static final PARSE_FLAG_IGNORE_CASE:I = 0x1

.field public static final PARSE_FLAG_INCLUDE_UNPAIRED_AFFIXES:I = 0x80

.field public static final PARSE_FLAG_INTEGER_ONLY:I = 0x10

.field public static final PARSE_FLAG_JAVA_COMPATIBILITY_IGNORABLES:I = 0x10000

.field public static final PARSE_FLAG_MONETARY_SEPARATORS:I = 0x2

.field public static final PARSE_FLAG_NO_FOREIGN_CURRENCIES:I = 0x2000

.field public static final PARSE_FLAG_PLUS_SIGN_ALLOWED:I = 0x400

.field public static final PARSE_FLAG_STRICT_GROUPING_SIZE:I = 0x8

.field public static final PARSE_FLAG_STRICT_IGNORABLES:I = 0x8000

.field public static final PARSE_FLAG_STRICT_SEPARATORS:I = 0x4

.field public static final PARSE_FLAG_USE_FULL_AFFIXES:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putLeadCodePoint(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method public static putLeadCodePoints(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->ranges()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    .line 33
    iget v2, v1, Lcom/ibm/icu/text/UnicodeSet$EntryRange;->codepoint:I

    iget v1, v1, Lcom/ibm/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    invoke-virtual {p1, v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->strings()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    :cond_2
    return-void
.end method
