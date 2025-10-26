.class public abstract Lcom/ibm/icu/number/NumberRangeFormatterSettings;
.super Ljava/lang/Object;
.source "NumberRangeFormatterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final KEY_COLLAPSE:I = 0x5

.field static final KEY_FORMATTER_1:I = 0x2

.field static final KEY_FORMATTER_2:I = 0x3

.field static final KEY_IDENTITY_FALLBACK:I = 0x6

.field static final KEY_LOCALE:I = 0x1

.field static final KEY_MACROS:I = 0x0

.field static final KEY_MAX:I = 0x7

.field static final KEY_SAME_FORMATTERS:I = 0x4


# instance fields
.field private final key:I

.field private final parent:Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile resolvedMacros:Lcom/ibm/icu/impl/number/range/RangeMacroProps;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->parent:Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    .line 37
    iput p2, p0, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->key:I

    .line 38
    iput-object p3, p0, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public collapse(Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method abstract create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 223
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    if-nez v1, :cond_2

    return v0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    move-result-object v0

    check-cast p1, Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->hashCode()I

    move-result v0

    return v0
.end method

.method public identityFallback(Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 138
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public numberFormatterBoth(Lcom/ibm/icu/number/UnlocalizedNumberFormatter;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/UnlocalizedNumberFormatter;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public numberFormatterFirst(Lcom/ibm/icu/number/UnlocalizedNumberFormatter;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/UnlocalizedNumberFormatter;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public numberFormatterSecond(Lcom/ibm/icu/number/UnlocalizedNumberFormatter;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/UnlocalizedNumberFormatter;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method resolve()Lcom/ibm/icu/impl/number/range/RangeMacroProps;
    .locals 12

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->resolvedMacros:Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->resolvedMacros:Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/range/RangeMacroProps;-><init>()V

    const-wide/16 v1, 0x0

    move-object v3, p0

    move-wide v4, v1

    :goto_0
    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    .line 156
    iget v8, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->key:I

    shl-long/2addr v6, v8

    and-long v9, v4, v6

    cmp-long v11, v1, v9

    if-eqz v11, :cond_1

    .line 158
    iget-object v3, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->parent:Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    goto :goto_0

    :cond_1
    or-long/2addr v4, v6

    packed-switch v8, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->key:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 182
    :pswitch_0
    iget-object v6, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    goto :goto_1

    .line 179
    :pswitch_1
    iget-object v6, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    goto :goto_1

    .line 176
    :pswitch_2
    iget-object v6, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput v6, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->sameFormatters:I

    goto :goto_1

    .line 173
    :pswitch_3
    iget-object v6, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    goto :goto_1

    .line 170
    :pswitch_4
    iget-object v6, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    goto :goto_1

    .line 167
    :pswitch_5
    iget-object v6, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/util/ULocale;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 187
    :goto_1
    :pswitch_6
    iget-object v3, v3, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->parent:Lcom/ibm/icu/number/NumberRangeFormatterSettings;

    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v1}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v2, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iput-object v2, v1, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 193
    :cond_3
    iget-object v1, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v1}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v2, v0, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iput-object v2, v1, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 196
    :cond_4
    iput-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterSettings;->resolvedMacros:Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
