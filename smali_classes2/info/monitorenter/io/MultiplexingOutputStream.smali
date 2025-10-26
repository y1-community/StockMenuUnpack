.class public Linfo/monitorenter/io/MultiplexingOutputStream;
.super Ljava/io/OutputStream;
.source "MultiplexingOutputStream.java"


# instance fields
.field private m_delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/io/MultiplexingOutputStream;->m_delegates:Ljava/util/List;

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Linfo/monitorenter/io/MultiplexingOutputStream;->m_delegates:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Linfo/monitorenter/io/MultiplexingOutputStream;->m_delegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 119
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
