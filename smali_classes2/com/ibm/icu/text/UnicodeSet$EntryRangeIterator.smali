.class Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/ibm/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field pos:I

.field result:Lcom/ibm/icu/text/UnicodeSet$EntryRange;

.field final synthetic this$0:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 4332
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4334
    new-instance p1, Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    invoke-direct {p1}, Lcom/ibm/icu/text/UnicodeSet$EntryRange;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->result:Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet$1;)V
    .locals 0

    .line 4332
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 4338
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v1}, Lcom/ibm/icu/text/UnicodeSet;->access$400(Lcom/ibm/icu/text/UnicodeSet;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public next()Lcom/ibm/icu/text/UnicodeSet$EntryRange;
    .locals 4

    .line 4342
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v1}, Lcom/ibm/icu/text/UnicodeSet;->access$400(Lcom/ibm/icu/text/UnicodeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 4343
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->result:Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v1}, Lcom/ibm/icu/text/UnicodeSet;->access$500(Lcom/ibm/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    iput v1, v0, Lcom/ibm/icu/text/UnicodeSet$EntryRange;->codepoint:I

    .line 4344
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->result:Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v1}, Lcom/ibm/icu/text/UnicodeSet;->access$500(Lcom/ibm/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/ibm/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    .line 4348
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->result:Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    return-object v0

    .line 4346
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 4332
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet$EntryRangeIterator;->next()Lcom/ibm/icu/text/UnicodeSet$EntryRange;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 4352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
