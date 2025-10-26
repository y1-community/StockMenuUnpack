.class public Lantlr/TokenStreamBasicFilter;
.super Ljava/lang/Object;
.source "TokenStreamBasicFilter.java"

# interfaces
.implements Lantlr/TokenStream;


# instance fields
.field protected discardMask:Lantlr/collections/impl/BitSet;

.field protected input:Lantlr/TokenStream;


# direct methods
.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lantlr/TokenStreamBasicFilter;->input:Lantlr/TokenStream;

    .line 25
    new-instance p1, Lantlr/collections/impl/BitSet;

    invoke-direct {p1}, Lantlr/collections/impl/BitSet;-><init>()V

    iput-object p1, p0, Lantlr/TokenStreamBasicFilter;->discardMask:Lantlr/collections/impl/BitSet;

    return-void
.end method


# virtual methods
.method public discard(I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lantlr/TokenStreamBasicFilter;->discardMask:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/BitSet;->add(I)V

    return-void
.end method

.method public discard(Lantlr/collections/impl/BitSet;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lantlr/TokenStreamBasicFilter;->discardMask:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public nextToken()Lantlr/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lantlr/TokenStreamBasicFilter;->input:Lantlr/TokenStream;

    invoke-interface {v0}, Lantlr/TokenStream;->nextToken()Lantlr/Token;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lantlr/TokenStreamBasicFilter;->discardMask:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lantlr/TokenStreamBasicFilter;->input:Lantlr/TokenStream;

    invoke-interface {v0}, Lantlr/TokenStream;->nextToken()Lantlr/Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
