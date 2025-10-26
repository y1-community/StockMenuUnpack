.class public Lantlr/ANTLRStringBuffer;
.super Ljava/lang/Object;
.source "ANTLRStringBuffer.java"


# instance fields
.field protected buffer:[C

.field protected length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lantlr/ANTLRStringBuffer;->length:I

    const/16 v0, 0x32

    new-array v0, v0, [C

    .line 19
    iput-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lantlr/ANTLRStringBuffer;->length:I

    .line 23
    new-array p1, p1, [C

    iput-object p1, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    return-void
.end method


# virtual methods
.method public final append(C)V
    .locals 3

    .line 29
    iget v0, p0, Lantlr/ANTLRStringBuffer;->length:I

    iget-object v1, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 31
    array-length v0, v1

    .line 32
    :goto_0
    iget v1, p0, Lantlr/ANTLRStringBuffer;->length:I

    if-lt v1, v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 36
    :cond_0
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 37
    :goto_1
    iget v2, p0, Lantlr/ANTLRStringBuffer;->length:I

    if-ge v1, v2, :cond_1

    .line 38
    iget-object v2, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    aget-char v2, v2, v1

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    :cond_1
    iput-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    .line 42
    :cond_2
    iget-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    iget v1, p0, Lantlr/ANTLRStringBuffer;->length:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 43
    iput v1, p0, Lantlr/ANTLRStringBuffer;->length:I

    return-void
.end method

.method public final append(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lantlr/ANTLRStringBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final charAt(I)C
    .locals 1

    .line 53
    iget-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public final getBuffer()[C
    .locals 1

    .line 57
    iget-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 61
    iget v0, p0, Lantlr/ANTLRStringBuffer;->length:I

    return v0
.end method

.method public final setCharAt(IC)V
    .locals 1

    .line 65
    iget-object v0, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    aput-char p2, v0, p1

    return-void
.end method

.method public final setLength(I)V
    .locals 1

    .line 69
    iget v0, p0, Lantlr/ANTLRStringBuffer;->length:I

    if-ge p1, v0, :cond_0

    .line 70
    iput p1, p0, Lantlr/ANTLRStringBuffer;->length:I

    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    iget v0, p0, Lantlr/ANTLRStringBuffer;->length:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lantlr/ANTLRStringBuffer;->append(C)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 80
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lantlr/ANTLRStringBuffer;->buffer:[C

    iget v2, p0, Lantlr/ANTLRStringBuffer;->length:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
