.class public Lcom/ibm/icu/impl/number/parse/CodePointMatcher;
.super Ljava/lang/Object;
.source "CodePointMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field private final cp:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;->cp:I

    return-void
.end method

.method public static getInstance(I)Lcom/ibm/icu/impl/number/parse/CodePointMatcher;
    .locals 1

    .line 18
    new-instance v0, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 1

    .line 27
    iget v0, p0, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;->cp:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    .line 29
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 0

    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 1

    .line 36
    iget v0, p0, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;->cp:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<CodePointMatcher U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;->cp:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
