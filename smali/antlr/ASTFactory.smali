.class public Lantlr/ASTFactory;
.super Ljava/lang/Object;
.source "ASTFactory.java"


# static fields
.field static synthetic class$antlr$CommonAST:Ljava/lang/Class;

.field static synthetic class$antlr$Token:Ljava/lang/Class;


# instance fields
.field protected theASTNodeType:Ljava/lang/String;

.field protected theASTNodeTypeClass:Ljava/lang/Class;

.field protected tokenTypeToASTClassMap:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lantlr/ASTFactory;->theASTNodeType:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lantlr/ASTFactory;->theASTNodeTypeClass:Ljava/lang/Class;

    .line 51
    iput-object v0, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lantlr/ASTFactory;->theASTNodeType:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lantlr/ASTFactory;->theASTNodeTypeClass:Ljava/lang/Class;

    .line 51
    iput-object v0, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    .line 61
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->setTokenTypeToASTClassMap(Ljava/util/Hashtable;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 119
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addASTChild(Lantlr/ASTPair;Lantlr/collections/AST;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 125
    iget-object v0, p1, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    if-nez v0, :cond_0

    .line 127
    iput-object p2, p1, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p1, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p1, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    invoke-interface {v0, p2}, Lantlr/collections/AST;->setFirstChild(Lantlr/collections/AST;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p1, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    invoke-interface {v0, p2}, Lantlr/collections/AST;->setNextSibling(Lantlr/collections/AST;)V

    .line 139
    :goto_0
    iput-object p2, p1, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    .line 140
    invoke-virtual {p1}, Lantlr/ASTPair;->advanceChildToEnd()V

    :cond_2
    return-void
.end method

.method public create()Lantlr/collections/AST;
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lantlr/ASTFactory;->create(I)Lantlr/collections/AST;

    move-result-object v0

    return-object v0
.end method

.method public create(I)Lantlr/collections/AST;
    .locals 2

    .line 152
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->getASTNodeType(I)Ljava/lang/Class;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lantlr/ASTFactory;->create(Ljava/lang/Class;)Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 155
    invoke-interface {v0, p1, v1}, Lantlr/collections/AST;->initialize(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public create(ILjava/lang/String;)Lantlr/collections/AST;
    .locals 1

    .line 161
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->create(I)Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1, p2}, Lantlr/collections/AST;->initialize(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public create(ILjava/lang/String;Ljava/lang/String;)Lantlr/collections/AST;
    .locals 0

    .line 174
    invoke-virtual {p0, p3}, Lantlr/ASTFactory;->create(Ljava/lang/String;)Lantlr/collections/AST;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 176
    invoke-interface {p3, p1, p2}, Lantlr/collections/AST;->initialize(ILjava/lang/String;)V

    :cond_0
    return-object p3
.end method

.method public create(Lantlr/Token;)Lantlr/collections/AST;
    .locals 1

    .line 194
    invoke-virtual {p1}, Lantlr/Token;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/ASTFactory;->create(I)Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p1}, Lantlr/collections/AST;->initialize(Lantlr/Token;)V

    :cond_0
    return-object v0
.end method

.method public create(Lantlr/Token;Ljava/lang/String;)Lantlr/collections/AST;
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2}, Lantlr/ASTFactory;->createUsingCtor(Lantlr/Token;Ljava/lang/String;)Lantlr/collections/AST;

    move-result-object p1

    return-object p1
.end method

.method public create(Lantlr/collections/AST;)Lantlr/collections/AST;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_0
    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/ASTFactory;->create(I)Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v0, p1}, Lantlr/collections/AST;->initialize(Lantlr/collections/AST;)V

    :cond_1
    return-object v0
.end method

.method protected create(Ljava/lang/Class;)Lantlr/collections/AST;
    .locals 2

    .line 262
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t create AST Node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public create(Ljava/lang/String;)Lantlr/collections/AST;
    .locals 3

    .line 220
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->create(Ljava/lang/Class;)Lantlr/collections/AST;

    move-result-object p1

    return-object p1

    .line 223
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createUsingCtor(Lantlr/Token;Ljava/lang/String;)Lantlr/collections/AST;
    .locals 5

    .line 235
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 236
    sget-object v3, Lantlr/ASTFactory;->class$antlr$Token:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "antlr.Token"

    invoke-static {v3}, Lantlr/ASTFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lantlr/ASTFactory;->class$antlr$Token:Ljava/lang/Class;

    :cond_0
    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/AST;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    :catch_0
    :try_start_2
    invoke-virtual {p0, v0}, Lantlr/ASTFactory;->create(Ljava/lang/Class;)Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1, p1}, Lantlr/collections/AST;->initialize(Lantlr/Token;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-object v1

    .line 251
    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid class or can\'t make instance, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dup(Lantlr/collections/AST;)Lantlr/collections/AST;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 283
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/ASTFactory;->create(Ljava/lang/Class;)Lantlr/collections/AST;

    move-result-object v0

    .line 284
    invoke-interface {v0, p1}, Lantlr/collections/AST;->initialize(Lantlr/collections/AST;)V

    return-object v0
.end method

.method public dupList(Lantlr/collections/AST;)Lantlr/collections/AST;
    .locals 3

    .line 290
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->dupTree(Lantlr/collections/AST;)Lantlr/collections/AST;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->dupTree(Lantlr/collections/AST;)Lantlr/collections/AST;

    move-result-object v2

    invoke-interface {v1, v2}, Lantlr/collections/AST;->setNextSibling(Lantlr/collections/AST;)V

    .line 295
    invoke-interface {v1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dupTree(Lantlr/collections/AST;)Lantlr/collections/AST;
    .locals 1

    .line 304
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->dup(Lantlr/collections/AST;)Lantlr/collections/AST;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 307
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->dupList(Lantlr/collections/AST;)Lantlr/collections/AST;

    move-result-object p1

    invoke-interface {v0, p1}, Lantlr/collections/AST;->setFirstChild(Lantlr/collections/AST;)V

    :cond_0
    return-object v0
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 401
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getASTNodeType(I)Ljava/lang/Class;
    .locals 2

    .line 106
    iget-object v0, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_0

    return-object p1

    .line 114
    :cond_0
    iget-object p1, p0, Lantlr/ASTFactory;->theASTNodeTypeClass:Ljava/lang/Class;

    if-eqz p1, :cond_1

    return-object p1

    .line 119
    :cond_1
    sget-object p1, Lantlr/ASTFactory;->class$antlr$CommonAST:Ljava/lang/Class;

    if-nez p1, :cond_2

    const-string p1, "antlr.CommonAST"

    invoke-static {p1}, Lantlr/ASTFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lantlr/ASTFactory;->class$antlr$CommonAST:Ljava/lang/Class;

    :cond_2
    return-object p1
.end method

.method public getTokenTypeToASTClassMap()Ljava/util/Hashtable;
    .locals 1

    .line 389
    iget-object v0, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method public make(Lantlr/collections/impl/ASTArray;)Lantlr/collections/AST;
    .locals 0

    .line 352
    iget-object p1, p1, Lantlr/collections/impl/ASTArray;->array:[Lantlr/collections/AST;

    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->make([Lantlr/collections/AST;)Lantlr/collections/AST;

    move-result-object p1

    return-object p1
.end method

.method public make([Lantlr/collections/AST;)Lantlr/collections/AST;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 319
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 320
    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v1, v0}, Lantlr/collections/AST;->setFirstChild(Lantlr/collections/AST;)V

    :cond_1
    const/4 v2, 0x1

    .line 326
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 327
    aget-object v3, p1, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    .line 330
    aget-object v1, p1, v2

    move-object v0, v1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 333
    aget-object v0, p1, v2

    invoke-interface {v1, v0}, Lantlr/collections/AST;->setFirstChild(Lantlr/collections/AST;)V

    .line 334
    invoke-interface {v1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    goto :goto_1

    .line 337
    :cond_4
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Lantlr/collections/AST;->setNextSibling(Lantlr/collections/AST;)V

    .line 338
    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    :goto_1
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 341
    :goto_2
    invoke-interface {v1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 342
    invoke-interface {v1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    :goto_4
    return-object v0
.end method

.method public makeASTRoot(Lantlr/ASTPair;Lantlr/collections/AST;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 359
    iget-object v0, p1, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    invoke-interface {p2, v0}, Lantlr/collections/AST;->addChild(Lantlr/collections/AST;)V

    .line 361
    iget-object v0, p1, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    iput-object v0, p1, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    .line 362
    invoke-virtual {p1}, Lantlr/ASTPair;->advanceChildToEnd()V

    .line 364
    iput-object p2, p1, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    :cond_0
    return-void
.end method

.method public setASTNodeClass(Ljava/lang/String;)V
    .locals 2

    .line 369
    iput-object p1, p0, Lantlr/ASTFactory;->theASTNodeType:Ljava/lang/String;

    .line 371
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lantlr/ASTFactory;->theASTNodeTypeClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t find/access AST Node type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setASTNodeType(Ljava/lang/String;)V
    .locals 0

    .line 385
    invoke-virtual {p0, p1}, Lantlr/ASTFactory;->setASTNodeClass(Ljava/lang/String;)V

    return-void
.end method

.method public setTokenTypeASTNodeType(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    :cond_0
    if-nez p2, :cond_1

    .line 87
    iget-object p2, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 92
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid class, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTokenTypeToASTClassMap(Ljava/util/Hashtable;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lantlr/ASTFactory;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    return-void
.end method
