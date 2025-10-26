.class final Lcom/ibm/icu/impl/number/parse/AffixMatcher$1;
.super Ljava/lang/Object;
.source "AffixMatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/parse/AffixMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/impl/number/parse/AffixMatcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/impl/number/parse/AffixMatcher;Lcom/ibm/icu/impl/number/parse/AffixMatcher;)I
    .locals 4

    .line 33
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$000(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v0

    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$000(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 34
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$000(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result p1

    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$000(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object p2

    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$200(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v0

    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$200(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 36
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$200(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result p1

    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$200(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object p2

    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 37
    :cond_3
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->hashCode()I

    move-result p2

    if-le p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    check-cast p2, Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher$1;->compare(Lcom/ibm/icu/impl/number/parse/AffixMatcher;Lcom/ibm/icu/impl/number/parse/AffixMatcher;)I

    move-result p1

    return p1
.end method
