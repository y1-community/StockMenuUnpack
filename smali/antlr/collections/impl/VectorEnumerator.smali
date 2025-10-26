.class Lantlr/collections/impl/VectorEnumerator;
.super Ljava/lang/Object;
.source "VectorEnumerator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field i:I

.field vector:Lantlr/collections/impl/Vector;


# direct methods
.method constructor <init>(Lantlr/collections/impl/Vector;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lantlr/collections/impl/VectorEnumerator;->i:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .line 28
    iget-object v0, p0, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    monitor-enter v0

    .line 29
    :try_start_0
    iget v1, p0, Lantlr/collections/impl/VectorEnumerator;->i:I

    iget-object v2, p0, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

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

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    .line 34
    iget-object v0, p0, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    monitor-enter v0

    .line 35
    :try_start_0
    iget v1, p0, Lantlr/collections/impl/VectorEnumerator;->i:I

    iget-object v2, p0, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    iget v2, v2, Lantlr/collections/impl/Vector;->lastElement:I

    if-gt v1, v2, :cond_0

    .line 36
    iget-object v1, p0, Lantlr/collections/impl/VectorEnumerator;->vector:Lantlr/collections/impl/Vector;

    iget-object v1, v1, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    iget v2, p0, Lantlr/collections/impl/VectorEnumerator;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lantlr/collections/impl/VectorEnumerator;->i:I

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    .line 38
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "VectorEnumerator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
