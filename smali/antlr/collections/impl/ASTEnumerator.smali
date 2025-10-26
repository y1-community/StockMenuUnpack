.class public Lantlr/collections/impl/ASTEnumerator;
.super Ljava/lang/Object;
.source "ASTEnumerator.java"

# interfaces
.implements Lantlr/collections/ASTEnumeration;


# instance fields
.field i:I

.field nodes:Lantlr/collections/impl/VectorEnumerator;


# direct methods
.method public constructor <init>(Lantlr/collections/impl/Vector;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lantlr/collections/impl/ASTEnumerator;->i:I

    .line 23
    new-instance v0, Lantlr/collections/impl/VectorEnumerator;

    invoke-direct {v0, p1}, Lantlr/collections/impl/VectorEnumerator;-><init>(Lantlr/collections/impl/Vector;)V

    iput-object v0, p0, Lantlr/collections/impl/ASTEnumerator;->nodes:Lantlr/collections/impl/VectorEnumerator;

    return-void
.end method


# virtual methods
.method public hasMoreNodes()Z
    .locals 3

    .line 27
    iget-object v0, p0, Lantlr/collections/impl/ASTEnumerator;->nodes:Lantlr/collections/impl/VectorEnumerator;

    monitor-enter v0

    .line 28
    :try_start_0
    iget v1, p0, Lantlr/collections/impl/ASTEnumerator;->i:I

    iget-object v2, p0, Lantlr/collections/impl/ASTEnumerator;->nodes:Lantlr/collections/impl/VectorEnumerator;

    iget-object v2, v2, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    iget v2, v2, Lantlr/collections/impl/Vector;->lastElement:I

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextNode()Lantlr/collections/AST;
    .locals 4

    .line 33
    iget-object v0, p0, Lantlr/collections/impl/ASTEnumerator;->nodes:Lantlr/collections/impl/VectorEnumerator;

    monitor-enter v0

    .line 34
    :try_start_0
    iget v1, p0, Lantlr/collections/impl/ASTEnumerator;->i:I

    iget-object v2, p0, Lantlr/collections/impl/ASTEnumerator;->nodes:Lantlr/collections/impl/VectorEnumerator;

    iget-object v2, v2, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    iget v2, v2, Lantlr/collections/impl/Vector;->lastElement:I

    if-gt v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lantlr/collections/impl/ASTEnumerator;->nodes:Lantlr/collections/impl/VectorEnumerator;

    iget-object v1, v1, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    iget-object v1, v1, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    iget v2, p0, Lantlr/collections/impl/ASTEnumerator;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lantlr/collections/impl/ASTEnumerator;->i:I

    aget-object v1, v1, v2

    check-cast v1, Lantlr/collections/AST;

    monitor-exit v0

    return-object v1

    .line 37
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "ASTEnumerator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
