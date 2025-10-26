.class Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DequeI"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[I

.field private firstIdx:I

.field private lastIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lcom/ibm/icu/text/DictionaryBreakEngine;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    const/4 v0, 0x4

    .line 93
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    .line 94
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    return-void
.end method

.method private grow()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 113
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    .line 99
    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    return-object v0
.end method

.method contains(I)Z
    .locals 2

    .line 152
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    :goto_0
    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method elementAt(I)I
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method isEmpty()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method offer(I)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aput p1, v0, v1

    return-void
.end method

.method peek()I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method peekLast()I
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pollLast()I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pop()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aget v0, v0, v1

    return v0
.end method

.method push(I)V
    .locals 3

    .line 125
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->grow()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aput p1, v0, v1

    return-void
.end method

.method removeAllElements()V
    .locals 1

    const/4 v0, 0x4

    .line 166
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    return-void
.end method

.method size()I
    .locals 2

    .line 104
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    sub-int/2addr v0, v1

    return v0
.end method
