.class Lantlr/SimpleTokenManager;
.super Ljava/lang/Object;
.source "SimpleTokenManager.java"

# interfaces
.implements Lantlr/TokenManager;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected antlrTool:Lantlr/Tool;

.field protected maxToken:I

.field protected name:Ljava/lang/String;

.field protected readOnly:Z

.field private table:Ljava/util/Hashtable;

.field protected vocabulary:Lantlr/collections/impl/Vector;


# direct methods
.method constructor <init>(Ljava/lang/String;Lantlr/Tool;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lantlr/SimpleTokenManager;->maxToken:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lantlr/SimpleTokenManager;->readOnly:Z

    .line 30
    iput-object p2, p0, Lantlr/SimpleTokenManager;->antlrTool:Lantlr/Tool;

    .line 31
    iput-object p1, p0, Lantlr/SimpleTokenManager;->name:Ljava/lang/String;

    .line 33
    new-instance p1, Lantlr/collections/impl/Vector;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object p1, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    .line 34
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    .line 37
    new-instance p1, Lantlr/TokenSymbol;

    const-string v0, "EOF"

    invoke-direct {p1, v0}, Lantlr/TokenSymbol;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p2}, Lantlr/TokenSymbol;->setTokenType(I)V

    .line 39
    invoke-virtual {p0, p1}, Lantlr/SimpleTokenManager;->define(Lantlr/TokenSymbol;)V

    .line 42
    iget-object p1, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lantlr/collections/impl/Vector;->ensureCapacity(I)V

    .line 43
    iget-object p1, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    const-string v0, "NULL_TREE_LOOKAHEAD"

    invoke-virtual {p1, v0, p2}, Lantlr/collections/impl/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 49
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/SimpleTokenManager;

    .line 50
    iget-object v1, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/Vector;

    iput-object v1, v0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    .line 51
    iget-object v1, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    .line 52
    iget v1, p0, Lantlr/SimpleTokenManager;->maxToken:I

    iput v1, v0, Lantlr/SimpleTokenManager;->maxToken:I

    .line 53
    iget-object v1, p0, Lantlr/SimpleTokenManager;->antlrTool:Lantlr/Tool;

    iput-object v1, v0, Lantlr/SimpleTokenManager;->antlrTool:Lantlr/Tool;

    .line 54
    iget-object v1, p0, Lantlr/SimpleTokenManager;->name:Ljava/lang/String;

    iput-object v1, v0, Lantlr/SimpleTokenManager;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    iget-object v0, p0, Lantlr/SimpleTokenManager;->antlrTool:Lantlr/Tool;

    const-string v1, "cannot clone token manager"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public define(Lantlr/TokenSymbol;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v1

    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->ensureCapacity(I)V

    .line 67
    iget-object v0, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/TokenSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lantlr/collections/impl/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 69
    invoke-virtual {p1}, Lantlr/TokenSymbol;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lantlr/SimpleTokenManager;->mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lantlr/SimpleTokenManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenStringAt(I)Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;
    .locals 1

    .line 84
    iget-object v0, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/TokenSymbol;

    return-object p1
.end method

.method public getTokenSymbolAt(I)Lantlr/TokenSymbol;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lantlr/SimpleTokenManager;->getTokenStringAt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/SimpleTokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getTokenSymbolElements()Ljava/util/Enumeration;
    .locals 1

    .line 94
    iget-object v0, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSymbolKeys()Ljava/util/Enumeration;
    .locals 1

    .line 98
    iget-object v0, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getVocabulary()Lantlr/collections/impl/Vector;
    .locals 1

    .line 105
    iget-object v0, p0, Lantlr/SimpleTokenManager;->vocabulary:Lantlr/collections/impl/Vector;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public maxTokenType()I
    .locals 1

    .line 121
    iget v0, p0, Lantlr/SimpleTokenManager;->maxToken:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public nextTokenType()I
    .locals 2

    .line 126
    iget v0, p0, Lantlr/SimpleTokenManager;->maxToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lantlr/SimpleTokenManager;->maxToken:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lantlr/SimpleTokenManager;->name:Ljava/lang/String;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lantlr/SimpleTokenManager;->readOnly:Z

    return-void
.end method

.method public tokenDefined(Ljava/lang/String;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lantlr/SimpleTokenManager;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
