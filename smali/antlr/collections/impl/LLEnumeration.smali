.class final Lantlr/collections/impl/LLEnumeration;
.super Ljava/lang/Object;
.source "LLEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field cursor:Lantlr/collections/impl/LLCell;

.field list:Lantlr/collections/impl/LList;


# direct methods
.method public constructor <init>(Lantlr/collections/impl/LList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lantlr/collections/impl/LLEnumeration;->list:Lantlr/collections/impl/LList;

    .line 30
    iget-object p1, p1, Lantlr/collections/impl/LList;->head:Lantlr/collections/impl/LLCell;

    iput-object p1, p0, Lantlr/collections/impl/LLEnumeration;->cursor:Lantlr/collections/impl/LLCell;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lantlr/collections/impl/LLEnumeration;->cursor:Lantlr/collections/impl/LLCell;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 49
    invoke-virtual {p0}, Lantlr/collections/impl/LLEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lantlr/collections/impl/LLEnumeration;->cursor:Lantlr/collections/impl/LLCell;

    .line 51
    iget-object v1, v0, Lantlr/collections/impl/LLCell;->next:Lantlr/collections/impl/LLCell;

    iput-object v1, p0, Lantlr/collections/impl/LLEnumeration;->cursor:Lantlr/collections/impl/LLCell;

    .line 52
    iget-object v0, v0, Lantlr/collections/impl/LLCell;->data:Ljava/lang/Object;

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
