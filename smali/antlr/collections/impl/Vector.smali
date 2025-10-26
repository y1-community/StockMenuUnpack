.class public Lantlr/collections/impl/Vector;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected data:[Ljava/lang/Object;

.field protected lastElement:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 20
    invoke-direct {p0, v0}, Lantlr/collections/impl/Vector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lantlr/collections/impl/Vector;->lastElement:I

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized appendElement(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget v0, p0, Lantlr/collections/impl/Vector;->lastElement:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lantlr/collections/impl/Vector;->ensureCapacity(I)V

    .line 29
    iget-object v0, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    iget v1, p0, Lantlr/collections/impl/Vector;->lastElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/collections/impl/Vector;->lastElement:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public capacity()I
    .locals 1

    .line 36
    iget-object v0, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 42
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/impl/Vector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {p0}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    .line 49
    iget-object v2, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    invoke-virtual {p0}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 45
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "cannot clone Vector.super"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-ltz p1, :cond_0

    .line 66
    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 64
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " < 0 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v0, Lantlr/collections/impl/VectorEnumerator;

    invoke-direct {v0, p0}, Lantlr/collections/impl/VectorEnumerator;-><init>(Lantlr/collections/impl/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 3

    monitor-enter p0

    add-int/lit8 p1, p1, 0x1

    .line 74
    :try_start_0
    iget-object v0, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 76
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 80
    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    :goto_0
    :try_start_0
    iget v2, p0, Lantlr/collections/impl/Vector;->lastElement:I

    if-gt v1, v2, :cond_0

    iget-object v3, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eq v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gt v1, v2, :cond_2

    .line 92
    iget-object p1, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 95
    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    :cond_1
    iget p1, p0, Lantlr/collections/impl/Vector;->lastElement:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lantlr/collections/impl/Vector;->lastElement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return v0

    .line 101
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 109
    aput-object p1, v0, p2

    .line 111
    iget p1, p0, Lantlr/collections/impl/Vector;->lastElement:I

    if-le p2, p1, :cond_0

    .line 112
    iput p2, p0, Lantlr/collections/impl/Vector;->lastElement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lantlr/collections/impl/Vector;->data:[Ljava/lang/Object;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 119
    iget v0, p0, Lantlr/collections/impl/Vector;->lastElement:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
