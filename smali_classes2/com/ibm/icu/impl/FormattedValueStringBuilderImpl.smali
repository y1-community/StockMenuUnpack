.class public Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;
.super Ljava/lang/Object;
.source "FormattedValueStringBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;,
        Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySpanRange(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/UFormat$SpanField;Ljava/lang/Object;II)V
    .locals 3

    .line 74
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, p3

    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p4

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 76
    new-instance v2, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    invoke-direct {v2}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;-><init>()V

    .line 77
    iput-object p1, v2, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Lcom/ibm/icu/text/UFormat$SpanField;

    .line 78
    check-cast v1, Ljava/text/Format$Field;

    iput-object v1, v2, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 79
    iput-object p2, v2, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    .line 80
    iput p3, v2, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    sub-int v1, p4, p3

    .line 81
    iput v1, v2, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    .line 82
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findSpan(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/lang/Object;)I
    .locals 3

    .line 52
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    iget-object v1, v1, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v0, p0

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static isIntOrGroup(Ljava/lang/Object;)Z
    .locals 1

    .line 305
    invoke-static {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object p0

    .line 306
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isNumericField(Ljava/lang/Object;)Z
    .locals 1

    .line 310
    invoke-static {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 311
    const-class v0, Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isTrimmable(Ljava/lang/Object;)Z
    .locals 1

    .line 315
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-eq p0, v0, :cond_0

    instance-of p0, p0, Lcom/ibm/icu/text/ListFormatter$Field;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nextFieldPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z
    .locals 7

    .line 87
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 94
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_1
    return v1

    .line 101
    :cond_2
    :goto_0
    instance-of v3, v0, Lcom/ibm/icu/text/NumberFormat$Field;

    if-eqz v3, :cond_9

    .line 107
    new-instance v3, Lcom/ibm/icu/text/ConstrainedFieldPosition;

    invoke-direct {v3}, Lcom/ibm/icu/text/ConstrainedFieldPosition;-><init>()V

    .line 108
    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->constrainField(Ljava/text/Format$Field;)V

    .line 109
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4, v5}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    .line 110
    invoke-static {p0, v3, v6}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    invoke-virtual {v3}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getStart()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 112
    invoke-virtual {v3}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return v2

    .line 117
    :cond_3
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v0, v3, :cond_8

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-nez v0, :cond_8

    .line 119
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    const/4 v3, 0x0

    .line 120
    :goto_1
    iget v4, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v5, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_7

    .line 121
    iget-object v4, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_7
    :goto_3
    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 128
    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_8
    return v1

    .line 102
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You must pass an instance of com.ibm.icu.text.NumberFormat.Field as your FieldPosition attribute.  You passed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z
    .locals 13

    .line 169
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v0

    instance-of v0, v0, Lcom/ibm/icu/text/UFormat$SpanField;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v3

    if-ne v3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 177
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 179
    :goto_2
    iget v5, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v8, v7

    const/4 v9, -0x1

    :goto_3
    iget v10, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v11, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v10, v11

    if-gt v5, v10, :cond_17

    .line 180
    iget v10, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    iget v11, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_3

    iget-object v10, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v10, v10, v5

    goto :goto_4

    :cond_3
    sget-object v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;->END:Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;

    :goto_4
    if-eqz v8, :cond_7

    if-eq v8, v10, :cond_16

    .line 184
    iget v10, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v10, v5, v10

    .line 186
    invoke-static {v8}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isTrimmable(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 187
    invoke-static {p0, v10}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->trimBack(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v10

    :cond_4
    if-gt v10, v9, :cond_5

    add-int/lit8 v5, v5, -0x1

    move-object v8, v7

    const/4 v9, -0x1

    goto/16 :goto_9

    .line 197
    :cond_5
    invoke-static {v8}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isTrimmable(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 198
    invoke-static {p0, v9}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->trimFront(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v9

    .line 200
    :cond_6
    check-cast v8, Ljava/text/Format$Field;

    invoke-virtual {p1, v8, v7, v9, v10}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v2

    .line 206
    :cond_7
    iget v11, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    if-le v5, v11, :cond_9

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v11, v5, -0x1

    aget-object v0, v0, v11

    check-cast v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    .line 209
    iget-object v11, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    sget-object v12, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    if-ne v11, v12, :cond_8

    .line 211
    sget-object v11, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {p1, v11, v7}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 212
    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v5, p0

    iget p0, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    sub-int/2addr v5, p0

    .line 213
    iget p0, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    add-int/2addr p0, v5

    .line 214
    sget-object p2, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {p1, p2, v7, v5, p0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v2

    .line 219
    :cond_8
    iget v0, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    sub-int/2addr v5, v0

    .line 221
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    iget-object v10, v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 225
    :cond_9
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v0, v7}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    if-le v5, v0, :cond_b

    if-nez v4, :cond_b

    if-nez v3, :cond_b

    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v4, v5, -0x1

    aget-object v0, v0, v4

    .line 229
    invoke-static {v0}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 230
    invoke-static {v10}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 232
    :goto_5
    iget p2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    if-lt v4, p2, :cond_a

    iget-object p2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object p2, p2, v4

    invoke-static {p2}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isIntOrGroup(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 233
    :cond_a
    sget-object p2, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v5, p0

    invoke-virtual {p1, p2, v7, v4, v5}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v2

    :cond_b
    if-eqz p2, :cond_d

    .line 238
    invoke-virtual {p1, p2, v7}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    if-le v5, v0, :cond_d

    if-nez v3, :cond_d

    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v3, v5, -0x1

    aget-object v0, v0, v3

    .line 241
    invoke-static {v0}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isNumericField(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 242
    invoke-static {v10}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isNumericField(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 245
    :goto_6
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    if-lt v3, v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->isNumericField(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 246
    :cond_c
    iget v0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v5, p0

    invoke-virtual {p1, p2, v7, v3, v5}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v2

    .line 251
    :cond_d
    instance-of v0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    if-eqz v0, :cond_e

    .line 252
    check-cast v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    .line 253
    iget-object v0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    goto :goto_7

    :cond_e
    move-object v0, v10

    move-object v10, v7

    :goto_7
    if-eqz v10, :cond_12

    .line 255
    iget v3, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    if-eq v3, v6, :cond_f

    iget v3, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    iget v4, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v4, v5, v4

    if-ne v3, v4, :cond_12

    .line 256
    :cond_f
    iget-object v0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Lcom/ibm/icu/text/UFormat$SpanField;

    iget-object v3, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 257
    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v5, p0

    .line 258
    iget p0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    add-int/2addr p0, v5

    .line 259
    iget-object p2, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Lcom/ibm/icu/text/UFormat$SpanField;

    iget-object v0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v5, p0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v2

    .line 261
    :cond_10
    iget-object v0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    sget-object v3, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    if-ne v0, v3, :cond_15

    .line 263
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {p1, v0, v7}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 264
    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v5, p0

    .line 265
    iget p0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    add-int/2addr p0, v5

    .line 266
    sget-object p2, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {p1, p2, v7, v5, p0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v2

    .line 270
    :cond_11
    iget v0, v10, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    sub-int/2addr v0, v2

    add-int/2addr v5, v0

    goto :goto_8

    .line 276
    :cond_12
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v0, v3, :cond_13

    goto :goto_8

    :cond_13
    if-eqz v0, :cond_15

    .line 280
    sget-object v3, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;->END:Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;

    if-ne v0, v3, :cond_14

    goto :goto_8

    .line 284
    :cond_14
    move-object v3, v0

    check-cast v3, Ljava/text/Format$Field;

    invoke-virtual {p1, v3, v7}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 285
    iget v3, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->zero:I

    sub-int v3, v5, v3

    move-object v8, v0

    move v9, v3

    :cond_15
    :goto_8
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_16
    :goto_9
    add-int/2addr v5, v2

    goto/16 :goto_3

    .line 297
    :cond_17
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object p2

    .line 298
    invoke-virtual {p1}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    iget p0, p0, Lcom/ibm/icu/impl/FormattedStringBuilder;->length:I

    .line 296
    invoke-virtual {p1, p2, v0, v2, p0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V

    return v1
.end method

.method public static toCharacterIterator(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;
    .locals 6

    .line 135
    new-instance v0, Lcom/ibm/icu/text/ConstrainedFieldPosition;

    invoke-direct {v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;-><init>()V

    .line 136
    new-instance v1, Ljava/text/AttributedString;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 137
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getFieldValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v2

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getField()Ljava/text/Format$Field;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getStart()I

    move-result v4

    invoke-virtual {v0}, Lcom/ibm/icu/text/ConstrainedFieldPosition;->getLimit()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method private static trimBack(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 2

    .line 320
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 321
    invoke-virtual {v0, p0, p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0
.end method

.method private static trimFront(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 2

    .line 325
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 326
    invoke-virtual {v0, p0, p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0
.end method
