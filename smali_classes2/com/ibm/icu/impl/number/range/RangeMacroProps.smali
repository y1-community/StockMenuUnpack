.class public Lcom/ibm/icu/impl/number/range/RangeMacroProps;
.super Ljava/lang/Object;
.source "RangeMacroProps.java"


# instance fields
.field public collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

.field public formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

.field public formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

.field public identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public loc:Lcom/ibm/icu/util/ULocale;

.field public sameFormatters:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->sameFormatters:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 39
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    if-nez v2, :cond_2

    return v0

    .line 41
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    .line 42
    iget-object v2, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    .line 43
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 44
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 45
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 46
    invoke-static {v2, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
