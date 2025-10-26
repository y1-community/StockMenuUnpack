.class public abstract Lcom/ibm/icu/text/UnicodeFilter;
.super Ljava/lang/Object;
.source "UnicodeFilter.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(I)Z
.end method

.method public matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
    .locals 4

    const/4 v0, 0x0

    .line 43
    aget v1, p2, v0

    const/4 v2, 0x2

    if-ge v1, p3, :cond_0

    aget v1, p2, v0

    .line 44
    invoke-interface {p1, v1}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeFilter;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    aget p1, p2, v0

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p3

    add-int/2addr p1, p3

    aput p1, p2, v0

    return v2

    .line 48
    :cond_0
    aget v1, p2, v0

    const/4 v3, 0x1

    if-le v1, p3, :cond_2

    aget v1, p2, v0

    invoke-interface {p1, v1}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    aget p3, p2, v0

    sub-int/2addr p3, v3

    aput p3, p2, v0

    .line 53
    aget p3, p2, v0

    if-ltz p3, :cond_1

    .line 54
    aget p3, p2, v0

    aget p4, p2, v0

    invoke-interface {p1, p4}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    sub-int/2addr p1, v3

    sub-int/2addr p3, p1

    aput p3, p2, v0

    :cond_1
    return v2

    :cond_2
    if-eqz p4, :cond_3

    .line 58
    aget p1, p2, v0

    if-ne p1, p3, :cond_3

    return v3

    :cond_3
    return v0
.end method
