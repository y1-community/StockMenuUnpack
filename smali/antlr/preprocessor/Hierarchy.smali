.class public Lantlr/preprocessor/Hierarchy;
.super Ljava/lang/Object;
.source "Hierarchy.java"


# instance fields
.field protected LexerRoot:Lantlr/preprocessor/Grammar;

.field protected ParserRoot:Lantlr/preprocessor/Grammar;

.field protected TreeParserRoot:Lantlr/preprocessor/Grammar;

.field protected antlrTool:Lantlr/Tool;

.field protected files:Ljava/util/Hashtable;

.field protected symbols:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lantlr/Tool;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lantlr/preprocessor/Hierarchy;->LexerRoot:Lantlr/preprocessor/Grammar;

    .line 21
    iput-object v0, p0, Lantlr/preprocessor/Hierarchy;->ParserRoot:Lantlr/preprocessor/Grammar;

    .line 22
    iput-object v0, p0, Lantlr/preprocessor/Hierarchy;->TreeParserRoot:Lantlr/preprocessor/Grammar;

    .line 28
    iput-object p1, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    .line 29
    new-instance v1, Lantlr/preprocessor/Grammar;

    const-string v2, "Lexer"

    invoke-direct {v1, p1, v2, v0, v0}, Lantlr/preprocessor/Grammar;-><init>(Lantlr/Tool;Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;)V

    iput-object v1, p0, Lantlr/preprocessor/Hierarchy;->LexerRoot:Lantlr/preprocessor/Grammar;

    .line 30
    new-instance v1, Lantlr/preprocessor/Grammar;

    const-string v2, "Parser"

    invoke-direct {v1, p1, v2, v0, v0}, Lantlr/preprocessor/Grammar;-><init>(Lantlr/Tool;Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;)V

    iput-object v1, p0, Lantlr/preprocessor/Hierarchy;->ParserRoot:Lantlr/preprocessor/Grammar;

    .line 31
    new-instance v1, Lantlr/preprocessor/Grammar;

    const-string v2, "TreeParser"

    invoke-direct {v1, p1, v2, v0, v0}, Lantlr/preprocessor/Grammar;-><init>(Lantlr/Tool;Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;)V

    iput-object v1, p0, Lantlr/preprocessor/Hierarchy;->TreeParserRoot:Lantlr/preprocessor/Grammar;

    .line 32
    new-instance p1, Ljava/util/Hashtable;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    .line 33
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lantlr/preprocessor/Hierarchy;->files:Ljava/util/Hashtable;

    .line 35
    iget-object p1, p0, Lantlr/preprocessor/Hierarchy;->LexerRoot:Lantlr/preprocessor/Grammar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lantlr/preprocessor/Grammar;->setPredefined(Z)V

    .line 36
    iget-object p1, p0, Lantlr/preprocessor/Hierarchy;->ParserRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {p1, v0}, Lantlr/preprocessor/Grammar;->setPredefined(Z)V

    .line 37
    iget-object p1, p0, Lantlr/preprocessor/Hierarchy;->TreeParserRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {p1, v0}, Lantlr/preprocessor/Grammar;->setPredefined(Z)V

    .line 39
    iget-object p1, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->LexerRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/preprocessor/Hierarchy;->LexerRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->ParserRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/preprocessor/Hierarchy;->ParserRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->TreeParserRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/preprocessor/Hierarchy;->TreeParserRoot:Lantlr/preprocessor/Grammar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static optionsToString(Lantlr/collections/impl/IndexedVector;)Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "options {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lantlr/collections/impl/IndexedVector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/preprocessor/Option;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addGrammar(Lantlr/preprocessor/Grammar;)V
    .locals 2

    .line 45
    invoke-virtual {p1, p0}, Lantlr/preprocessor/Grammar;->setHierarchy(Lantlr/preprocessor/Hierarchy;)V

    .line 47
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Lantlr/preprocessor/Grammar;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lantlr/preprocessor/GrammarFile;->addGrammar(Lantlr/preprocessor/Grammar;)V

    return-void
.end method

.method public addGrammarFile(Lantlr/preprocessor/GrammarFile;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->files:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lantlr/preprocessor/GrammarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public expandGrammarsInFile(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lantlr/preprocessor/GrammarFile;->getGrammars()Lantlr/collections/impl/IndexedVector;

    move-result-object p1

    invoke-virtual {p1}, Lantlr/collections/impl/IndexedVector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/preprocessor/Grammar;

    .line 61
    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->expandInPlace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findRoot(Lantlr/preprocessor/Grammar;)Lantlr/preprocessor/Grammar;
    .locals 1

    .line 66
    invoke-virtual {p1}, Lantlr/preprocessor/Grammar;->getSuperGrammarName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lantlr/preprocessor/Grammar;->getSuperGrammar()Lantlr/preprocessor/Grammar;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Hierarchy;->findRoot(Lantlr/preprocessor/Grammar;)Lantlr/preprocessor/Grammar;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;
    .locals 1

    .line 76
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->files:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/preprocessor/GrammarFile;

    return-object p1
.end method

.method public getGrammar(Ljava/lang/String;)Lantlr/preprocessor/Grammar;
    .locals 1

    .line 80
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/preprocessor/Grammar;

    return-object p1
.end method

.method public getTool()Lantlr/Tool;
    .locals 1

    .line 151
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    return-object v0
.end method

.method public readGrammarFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    new-instance v1, Lantlr/preprocessor/GrammarFile;

    iget-object v2, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    invoke-direct {v1, v2, p1}, Lantlr/preprocessor/GrammarFile;-><init>(Lantlr/Tool;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lantlr/preprocessor/Hierarchy;->addGrammarFile(Lantlr/preprocessor/GrammarFile;)V

    .line 99
    new-instance v1, Lantlr/preprocessor/PreprocessorLexer;

    invoke-direct {v1, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Ljava/io/Reader;)V

    .line 100
    invoke-virtual {v1, p1}, Lantlr/preprocessor/PreprocessorLexer;->setFilename(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lantlr/preprocessor/Preprocessor;

    invoke-direct {v0, v1}, Lantlr/preprocessor/Preprocessor;-><init>(Lantlr/TokenStream;)V

    .line 102
    iget-object v1, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0, v1}, Lantlr/preprocessor/Preprocessor;->setTool(Lantlr/Tool;)V

    .line 103
    invoke-virtual {v0, p1}, Lantlr/preprocessor/Preprocessor;->setFilename(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lantlr/preprocessor/Preprocessor;->grammarFile(Lantlr/preprocessor/Hierarchy;Ljava/lang/String;)V
    :try_end_0
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/ANTLRException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "error reading grammar(s):\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 110
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Token stream error reading grammar(s):\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    return-void
.end method

.method public verifyThatHierarchyIsComplete()Z
    .locals 7

    .line 121
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/preprocessor/Grammar;

    .line 123
    invoke-virtual {v4}, Lantlr/preprocessor/Grammar;->getSuperGrammarName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v4}, Lantlr/preprocessor/Grammar;->getSuperGrammar()Lantlr/preprocessor/Grammar;

    move-result-object v5

    if-nez v5, :cond_0

    .line 128
    iget-object v3, p0, Lantlr/preprocessor/Hierarchy;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "grammar "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/preprocessor/Grammar;->getSuperGrammarName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return v1

    .line 139
    :cond_3
    iget-object v0, p0, Lantlr/preprocessor/Hierarchy;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/preprocessor/Grammar;

    .line 141
    invoke-virtual {v1}, Lantlr/preprocessor/Grammar;->getSuperGrammarName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Hierarchy;->findRoot(Lantlr/preprocessor/Grammar;)Lantlr/preprocessor/Grammar;

    move-result-object v3

    invoke-virtual {v3}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lantlr/preprocessor/Grammar;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return v2
.end method
