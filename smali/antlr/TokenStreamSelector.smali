.class public Lantlr/TokenStreamSelector;
.super Ljava/lang/Object;
.source "TokenStreamSelector.java"

# interfaces
.implements Lantlr/TokenStream;


# instance fields
.field protected input:Lantlr/TokenStream;

.field protected inputStreamNames:Ljava/util/Hashtable;

.field protected streamStack:Lantlr/collections/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lantlr/collections/impl/LList;

    invoke-direct {v0}, Lantlr/collections/impl/LList;-><init>()V

    iput-object v0, p0, Lantlr/TokenStreamSelector;->streamStack:Lantlr/collections/Stack;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/TokenStreamSelector;->inputStreamNames:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addInputStream(Lantlr/TokenStream;Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lantlr/TokenStreamSelector;->inputStreamNames:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCurrentStream()Lantlr/TokenStream;
    .locals 1

    .line 47
    iget-object v0, p0, Lantlr/TokenStreamSelector;->input:Lantlr/TokenStream;

    return-object v0
.end method

.method public getStream(Ljava/lang/String;)Lantlr/TokenStream;
    .locals 3

    .line 51
    iget-object v0, p0, Lantlr/TokenStreamSelector;->inputStreamNames:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenStream;

    if-eqz v0, :cond_0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "TokenStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextToken()Lantlr/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 64
    :catch_0
    :try_start_0
    iget-object v0, p0, Lantlr/TokenStreamSelector;->input:Lantlr/TokenStream;

    invoke-interface {v0}, Lantlr/TokenStream;->nextToken()Lantlr/Token;

    move-result-object v0
    :try_end_0
    .catch Lantlr/TokenStreamRetryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0
.end method

.method public pop()Lantlr/TokenStream;
    .locals 1

    .line 73
    iget-object v0, p0, Lantlr/TokenStreamSelector;->streamStack:Lantlr/collections/Stack;

    invoke-interface {v0}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenStream;

    .line 74
    invoke-virtual {p0, v0}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    return-object v0
.end method

.method public push(Lantlr/TokenStream;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lantlr/TokenStreamSelector;->streamStack:Lantlr/collections/Stack;

    iget-object v1, p0, Lantlr/TokenStreamSelector;->input:Lantlr/TokenStream;

    invoke-interface {v0, v1}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0, p1}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lantlr/TokenStreamSelector;->streamStack:Lantlr/collections/Stack;

    iget-object v1, p0, Lantlr/TokenStreamSelector;->input:Lantlr/TokenStream;

    invoke-interface {v0, v1}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, p1}, Lantlr/TokenStreamSelector;->select(Ljava/lang/String;)V

    return-void
.end method

.method public retry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamRetryException;
        }
    .end annotation

    .line 96
    new-instance v0, Lantlr/TokenStreamRetryException;

    invoke-direct {v0}, Lantlr/TokenStreamRetryException;-><init>()V

    throw v0
.end method

.method public select(Lantlr/TokenStream;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lantlr/TokenStreamSelector;->input:Lantlr/TokenStream;

    return-void
.end method

.method public select(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lantlr/TokenStreamSelector;->getStream(Ljava/lang/String;)Lantlr/TokenStream;

    move-result-object p1

    iput-object p1, p0, Lantlr/TokenStreamSelector;->input:Lantlr/TokenStream;

    return-void
.end method
