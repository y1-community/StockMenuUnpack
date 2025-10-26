.class Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeSetIterator2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buffer:[C

.field private current:I

.field private item:I

.field private len:I

.field private limit:I

.field private sourceList:[I

.field private sourceStrings:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    .line 4383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4385
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->access$400(Lcom/ibm/icu/text/UnicodeSet;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lez v0, :cond_0

    .line 4387
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/SortedSet;

    .line 4388
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->access$500(Lcom/ibm/icu/text/UnicodeSet;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    .line 4389
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, p1, v0

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v0, v1, 0x1

    .line 4390
    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget p1, p1, v1

    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    goto :goto_0

    .line 4392
    :cond_0
    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 4393
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 4402
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 4370
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .line 4410
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_0

    .line 4411
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4413
    :cond_0
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4415
    iget v3, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    if-lt v2, v3, :cond_2

    .line 4416
    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    iget v3, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lt v2, v3, :cond_1

    .line 4417
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 4418
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 4420
    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v2, v0, v2

    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v2, v3, 0x1

    .line 4421
    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v3

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    :cond_2
    :goto_0
    const v0, 0xffff

    if-gt v1, v0, :cond_3

    int-to-char v0, v1

    .line 4426
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4430
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    if-nez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 4431
    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    :cond_4
    const/high16 v0, 0x10000

    sub-int/2addr v1, v0

    .line 4435
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    const/4 v2, 0x0

    ushr-int/lit8 v3, v1, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    and-int/lit16 v1, v1, 0x3ff

    const v2, 0xdc00

    add-int/2addr v1, v2

    int-to-char v1, v1

    const/4 v2, 0x1

    .line 4436
    aput-char v1, v0, v2

    .line 4437
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 4445
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
