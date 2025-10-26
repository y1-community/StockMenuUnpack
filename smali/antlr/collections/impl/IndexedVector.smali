.class public Lantlr/collections/impl/IndexedVector;
.super Ljava/lang/Object;
.source "IndexedVector.java"


# instance fields
.field protected elements:Lantlr/collections/impl/Vector;

.field protected index:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lantlr/collections/impl/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object v0, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lantlr/collections/impl/IndexedVector;->index:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0, p1}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object v0, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lantlr/collections/impl/IndexedVector;->index:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public declared-synchronized appendElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p2}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->index:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public elementAt(I)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .line 58
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->index:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->index:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    monitor-exit p0

    return v1

    .line 72
    :cond_0
    :try_start_1
    iget-object v2, p0, Lantlr/collections/impl/IndexedVector;->index:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 78
    iget-object v0, p0, Lantlr/collections/impl/IndexedVector;->elements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    return v0
.end method
