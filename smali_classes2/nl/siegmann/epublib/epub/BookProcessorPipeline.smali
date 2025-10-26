.class public Lnl/siegmann/epublib/epub/BookProcessorPipeline;
.super Ljava/lang/Object;
.source "BookProcessorPipeline.java"

# interfaces
.implements Lnl/siegmann/epublib/epub/BookProcessor;


# instance fields
.field private bookProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/epub/BookProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/epub/BookProcessorPipeline;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/epub/BookProcessor;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->log:Lorg/slf4j/Logger;

    .line 31
    iput-object p1, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addBookProcessor(Lnl/siegmann/epublib/epub/BookProcessor;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBookProcessors(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/epub/BookProcessor;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getBookProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/epub/BookProcessor;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    return-object v0
.end method

.method public processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;
    .locals 4

    .line 37
    iget-object v0, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p1

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/epub/BookProcessor;

    .line 42
    :try_start_0
    invoke-interface {v1, p1}, Lnl/siegmann/epublib/epub/BookProcessor;->processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 44
    iget-object v2, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public setBookProcessingPipeline(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/epub/BookProcessor;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lnl/siegmann/epublib/epub/BookProcessorPipeline;->bookProcessors:Ljava/util/List;

    return-void
.end method
