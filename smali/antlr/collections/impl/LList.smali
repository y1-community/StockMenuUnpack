.class public Lantlr/collections/impl/LList;
.super Ljava/lang/Object;
.source "LList.java"

# interfaces
.implements Lantlr/collections/List;
.implements Lantlr/collections/Stack;


# instance fields
.field protected head:Lantlr/collections/impl/LLCell;

.field protected length:I

.field protected tail:Lantlr/collections/impl/LLCell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    iput-object v0, p0, Lantlr/collections/impl/LList;->tail:Lantlr/collections/impl/LLCell;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lantlr/collections/impl/LList;->length:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lantlr/collections/impl/LList;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 2

    .line 37
    new-instance v0, Lantlr/collections/impl/LLCell;

    invoke-direct {v0, p1}, Lantlr/collections/impl/LLCell;-><init>(Ljava/lang/Object;)V

    .line 38
    iget p1, p0, Lantlr/collections/impl/LList;->length:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 39
    iput-object v0, p0, Lantlr/collections/impl/LList;->tail:Lantlr/collections/impl/LLCell;

    iput-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    .line 40
    iput v1, p0, Lantlr/collections/impl/LList;->length:I

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lantlr/collections/impl/LList;->tail:Lantlr/collections/impl/LLCell;

    iput-object v0, p1, Lantlr/collections/impl/LLCell;->next:Lantlr/collections/impl/LLCell;

    .line 44
    iput-object v0, p0, Lantlr/collections/impl/LList;->tail:Lantlr/collections/impl/LLCell;

    .line 45
    iget p1, p0, Lantlr/collections/impl/LList;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Lantlr/collections/impl/LList;->length:I

    :goto_0
    return-void
.end method

.method protected deleteHead()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, v0, Lantlr/collections/impl/LLCell;->data:Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    iget-object v1, v1, Lantlr/collections/impl/LLCell;->next:Lantlr/collections/impl/LLCell;

    iput-object v1, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    .line 57
    iget v1, p0, Lantlr/collections/impl/LList;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/collections/impl/LList;->length:I

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public elementAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_0

    .line 69
    iget-object p1, v0, Lantlr/collections/impl/LLCell;->data:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 68
    iget-object v0, v0, Lantlr/collections/impl/LLCell;->next:Lantlr/collections/impl/LLCell;

    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .line 77
    new-instance v0, Lantlr/collections/impl/LLEnumeration;

    invoke-direct {v0, p0}, Lantlr/collections/impl/LLEnumeration;-><init>(Lantlr/collections/impl/LList;)V

    return-object v0
.end method

.method public height()I
    .locals 1

    .line 82
    iget v0, p0, Lantlr/collections/impl/LList;->length:I

    return v0
.end method

.method public includes(Ljava/lang/Object;)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, v0, Lantlr/collections/impl/LLCell;->data:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    iget-object v0, v0, Lantlr/collections/impl/LLCell;->next:Lantlr/collections/impl/LLCell;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected insertHead(Ljava/lang/Object;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    .line 102
    new-instance v1, Lantlr/collections/impl/LLCell;

    invoke-direct {v1, p1}, Lantlr/collections/impl/LLCell;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    .line 103
    iput-object v0, v1, Lantlr/collections/impl/LLCell;->next:Lantlr/collections/impl/LLCell;

    .line 104
    iget p1, p0, Lantlr/collections/impl/LList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/collections/impl/LList;->length:I

    .line 105
    iget-object p1, p0, Lantlr/collections/impl/LList;->tail:Lantlr/collections/impl/LLCell;

    if-nez p1, :cond_0

    iget-object p1, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    iput-object p1, p0, Lantlr/collections/impl/LList;->tail:Lantlr/collections/impl/LLCell;

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .line 110
    iget v0, p0, Lantlr/collections/impl/LList;->length:I

    return v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lantlr/collections/impl/LList;->deleteHead()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lantlr/collections/impl/LList;->insertHead(Ljava/lang/Object;)V

    return-void
.end method

.method public top()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, v0, Lantlr/collections/impl/LLCell;->data:Ljava/lang/Object;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
