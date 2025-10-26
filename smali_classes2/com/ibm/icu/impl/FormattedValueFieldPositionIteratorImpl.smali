.class public Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;
.super Ljava/lang/Object;
.source "FormattedValueFieldPositionIteratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOverlapSpans(Ljava/util/List;Ljava/text/Format$Field;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;",
            "Ljava/text/Format$Field;",
            "I)V"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_2

    .line 88
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/FieldPosition;

    add-int/lit8 v1, v1, 0x1

    move v8, v1

    :goto_1
    if-ge v8, v0, :cond_0

    .line 90
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/FieldPosition;

    .line 91
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v10

    invoke-virtual {v9}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v11

    if-eq v10, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 96
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 97
    invoke-virtual {v9}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 98
    invoke-virtual {v9}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_2
    if-eq v5, v2, :cond_3

    .line 104
    new-instance v0, Ljava/text/FieldPosition;

    new-instance v1, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;-><init>(Ljava/text/Format$Field;I)V

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 105
    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 106
    invoke-virtual {v0, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 107
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/text/FieldPosition;

    new-instance v1, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    rsub-int/lit8 p2, p2, 0x1

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;-><init>(Ljava/text/Format$Field;I)V

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 109
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 110
    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 111
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static nextPosition(Ljava/util/List;Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;",
            "Lcom/ibm/icu/text/ConstrainedFieldPosition;",
            ")Z"
        }
    .end annotation

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getInt64IterationContext()J

    move-result-wide v1

    long-to-int v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 42
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/FieldPosition;

    .line 43
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    const/4 v4, 0x0

    .line 45
    instance-of v5, v3, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    if-eqz v5, :cond_0

    .line 46
    check-cast v3, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    iget v4, v3, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 47
    iget-object v3, v3, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->field:Ljava/text/Format$Field;

    .line 49
    :cond_0
    invoke-virtual {p1, v3, v4}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    .line 51
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    .line 52
    invoke-virtual {p1, v3, v4, p0, v1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v0, :cond_3

    int-to-long v3, v2

    goto :goto_2

    :cond_3
    add-int/lit8 p0, v2, 0x1

    int-to-long v3, p0

    .line 56
    :goto_2
    invoke-virtual {p1, v3, v4}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setInt64IterationContext(J)V

    if-ge v2, v0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_7

    .line 121
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    add-int/lit8 v6, v3, 0x1

    .line 122
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/FieldPosition;

    .line 124
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v9

    const-wide/16 v10, 0x0

    if-eq v8, v9, :cond_1

    .line 126
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v9

    :goto_1
    sub-int/2addr v8, v9

    int-to-long v8, v8

    goto :goto_2

    .line 127
    :cond_1
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 129
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v9

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    invoke-virtual {v7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v9

    if-eq v8, v9, :cond_5

    .line 133
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    instance-of v8, v8, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    .line 134
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v9

    instance-of v9, v9, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    if-eqz v8, :cond_3

    if-nez v9, :cond_3

    const-wide/16 v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v9, :cond_4

    if-nez v8, :cond_4

    const-wide/16 v8, -0x1

    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v5}, Ljava/text/FieldPosition;->hashCode()I

    move-result v8

    invoke-virtual {v7}, Ljava/text/FieldPosition;->hashCode()I

    move-result v9

    goto :goto_1

    :cond_5
    move-wide v8, v10

    :goto_2
    cmp-long v12, v8, v10

    if-gez v12, :cond_6

    .line 146
    invoke-interface {p0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {p0, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_6
    move v3, v6

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_0

    return-void
.end method

.method public static toCharacterIterator(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/text/AttributedCharacterIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/text/AttributedCharacterIterator;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/text/AttributedString;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 65
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/FieldPosition;

    .line 66
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    .line 68
    instance-of v3, v2, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    if-eqz v3, :cond_0

    .line 69
    check-cast v2, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;

    iget v3, v2, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 70
    iget-object v2, v2, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->field:Ljava/text/Format$Field;

    goto :goto_1

    :cond_0
    move-object v3, v2

    .line 72
    :goto_1
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method
