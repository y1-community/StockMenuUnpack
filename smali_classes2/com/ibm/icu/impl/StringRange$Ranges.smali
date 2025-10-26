.class final Lcom/ibm/icu/impl/StringRange$Ranges;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ranges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/impl/StringRange$Ranges;",
        ">;"
    }
.end annotation


# instance fields
.field private final ranges:[Lcom/ibm/icu/impl/StringRange$Range;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/ibm/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object p1

    .line 167
    array-length v0, p1

    new-array v0, v0, [Lcom/ibm/icu/impl/StringRange$Range;

    iput-object v0, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    const/4 v0, 0x0

    .line 168
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    new-instance v2, Lcom/ibm/icu/impl/StringRange$Range;

    aget v3, p1, v0

    aget v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/ibm/icu/impl/StringRange$Range;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/impl/StringRange$Ranges;)I
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v0, v0

    iget-object v1, p1, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v1, v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 226
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 227
    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/StringRange$Range;->compareTo(Lcom/ibm/icu/impl/StringRange$Range;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 163
    check-cast p1, Lcom/ibm/icu/impl/StringRange$Ranges;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/StringRange$Ranges;->compareTo(Lcom/ibm/icu/impl/StringRange$Ranges;)I

    move-result p1

    return p1
.end method

.method public end(Z)Ljava/lang/String;
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringRange$Ranges;->firstDifference()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 205
    aget-object p1, p1, v0

    iget p1, p1, Lcom/ibm/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public firstDifference()I
    .locals 3

    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 211
    aget-object v1, v1, v0

    iget v1, v1, Lcom/ibm/icu/impl/StringRange$Range;->min:I

    iget-object v2, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/ibm/icu/impl/StringRange$Range;->max:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    array-length v0, v1

    return v0
.end method

.method public merge(ILcom/ibm/icu/impl/StringRange$Ranges;)Z
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ibm/icu/impl/StringRange$Range;->max:I

    iget-object v4, p2, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/ibm/icu/impl/StringRange$Range;->min:I

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_1

    return v2

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v3, v3, v0

    iget-object v4, p2, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/StringRange$Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object v0, v0, p1

    iget-object p2, p2, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    aget-object p1, p2, p1

    iget p1, p1, Lcom/ibm/icu/impl/StringRange$Range;->max:I

    iput p1, v0, Lcom/ibm/icu/impl/StringRange$Range;->max:I

    return v1
.end method

.method public size()Ljava/lang/Integer;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public start()Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/StringRange$Ranges;->ranges:[Lcom/ibm/icu/impl/StringRange$Range;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 194
    aget-object v2, v2, v1

    iget v2, v2, Lcom/ibm/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
