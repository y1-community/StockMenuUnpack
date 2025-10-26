.class Lcom/ibm/icu/text/StringSearch$CEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CEBuffer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CEBUFFER_EXTRA:I = 0x20

.field static final MAX_TARGET_IGNORABLES_PER_PAT_JAMO_L:I = 0x8

.field static final MAX_TARGET_IGNORABLES_PER_PAT_OTHER:I = 0x3


# instance fields
.field bufSize_:I

.field buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

.field firstIx_:I

.field limitIx_:I

.field strSearch_:Lcom/ibm/icu/text/StringSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1941
    const-class v0, Lcom/ibm/icu/text/StringSearch;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/StringSearch;)V
    .locals 4

    .line 1959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1960
    iput-object p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->strSearch_:Lcom/ibm/icu/text/StringSearch;

    .line 1961
    invoke-static {p1}, Lcom/ibm/icu/text/StringSearch;->access$500(Lcom/ibm/icu/text/StringSearch;)Lcom/ibm/icu/text/StringSearch$Pattern;

    move-result-object v0

    iget v0, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    .line 1962
    iget-object v0, p1, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    sget-object v1, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1963
    invoke-static {p1}, Lcom/ibm/icu/text/StringSearch;->access$500(Lcom/ibm/icu/text/StringSearch;)Lcom/ibm/icu/text/StringSearch$Pattern;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1965
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1966
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1967
    invoke-static {v3}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->MIGHT_BE_JAMO_L(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1968
    iget v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    goto :goto_1

    .line 1971
    :cond_0
    iget v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    :cond_1
    iput v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 1981
    iput v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 1983
    invoke-static {p1}, Lcom/ibm/icu/text/StringSearch;->access$600(Lcom/ibm/icu/text/StringSearch;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1987
    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    new-array p1, p1, [Lcom/ibm/icu/text/StringSearch$CEI;

    iput-object p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    return-void
.end method

.method static MIGHT_BE_JAMO_L(C)Z
    .locals 1

    const/16 v0, 0x1100

    if-lt p0, v0, :cond_0

    const/16 v0, 0x115e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_1

    const/16 v0, 0x314e

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3165

    if-lt p0, v0, :cond_3

    const/16 v0, 0x3186

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method get(I)Lcom/ibm/icu/text/StringSearch$CEI;
    .locals 5

    .line 1997
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v1, p1, v0

    .line 1999
    iget v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v2, :cond_0

    iget v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v3, :cond_0

    .line 2002
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object p1, p1, v1

    return-object p1

    .line 2008
    :cond_0
    iget v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2014
    iput v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2018
    iput v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 2021
    :cond_2
    new-instance p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {p1}, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    .line 2022
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    .line 2023
    new-instance v2, Lcom/ibm/icu/text/StringSearch$CEI;

    invoke-direct {v2, v4}, Lcom/ibm/icu/text/StringSearch$CEI;-><init>(Lcom/ibm/icu/text/StringSearch$1;)V

    aput-object v2, v0, v1

    .line 2025
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->strSearch_:Lcom/ibm/icu/text/StringSearch;

    invoke-static {v2}, Lcom/ibm/icu/text/StringSearch;->access$800(Lcom/ibm/icu/text/StringSearch;)Lcom/ibm/icu/text/StringSearch$CollationPCE;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/StringSearch$CollationPCE;->nextProcessed(Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    .line 2026
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v0, v0, v1

    iget v2, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v2, v0, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 2027
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v0, v0, v1

    iget p1, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput p1, v0, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    .line 2029
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object p1, p1, v1

    return-object p1
.end method

.method getPrevious(I)Lcom/ibm/icu/text/StringSearch$CEI;
    .locals 5

    .line 2039
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v1, p1, v0

    .line 2041
    iget v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v2, :cond_0

    iget v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v3, :cond_0

    .line 2044
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object p1, p1, v1

    return-object p1

    .line 2050
    :cond_0
    iget v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2056
    iput v3, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->limitIx_:I

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 2060
    iput v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 2063
    :cond_2
    new-instance p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {p1}, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    .line 2064
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    .line 2065
    new-instance v2, Lcom/ibm/icu/text/StringSearch$CEI;

    invoke-direct {v2, v4}, Lcom/ibm/icu/text/StringSearch$CEI;-><init>(Lcom/ibm/icu/text/StringSearch$1;)V

    aput-object v2, v0, v1

    .line 2067
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->strSearch_:Lcom/ibm/icu/text/StringSearch;

    invoke-static {v2}, Lcom/ibm/icu/text/StringSearch;->access$800(Lcom/ibm/icu/text/StringSearch;)Lcom/ibm/icu/text/StringSearch$CollationPCE;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/StringSearch$CollationPCE;->previousProcessed(Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    .line 2068
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v0, v0, v1

    iget v2, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v2, v0, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 2069
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object v0, v0, v1

    iget p1, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput p1, v0, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    .line 2071
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CEBuffer;->buf_:[Lcom/ibm/icu/text/StringSearch$CEI;

    aget-object p1, p1, v1

    return-object p1
.end method
