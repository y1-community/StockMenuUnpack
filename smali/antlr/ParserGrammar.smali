.class Lantlr/ParserGrammar;
.super Lantlr/Grammar;
.source "ParserGrammar.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lantlr/Grammar;-><init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lantlr/ParserGrammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/ParserGrammar;)V

    return-void
.end method

.method protected getSuperClass()Ljava/lang/String;
    .locals 1

    .line 34
    iget-boolean v0, p0, Lantlr/ParserGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.LLkDebuggingParser"

    return-object v0

    :cond_0
    const-string v0, "LLkParser"

    return-object v0
.end method

.method public processArguments([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 45
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 46
    aget-object v1, p1, v0

    const-string v2, "-trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 47
    iput-boolean v2, p0, Lantlr/ParserGrammar;->traceRules:Z

    .line 48
    iget-object v1, p0, Lantlr/ParserGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 50
    :cond_0
    aget-object v1, p1, v0

    const-string v3, "-traceParser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iput-boolean v2, p0, Lantlr/ParserGrammar;->traceRules:Z

    .line 52
    iget-object v1, p0, Lantlr/ParserGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 54
    :cond_1
    aget-object v1, p1, v0

    const-string v3, "-debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    iput-boolean v2, p0, Lantlr/ParserGrammar;->debuggingOutput:Z

    .line 56
    iget-object v1, p0, Lantlr/ParserGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setOption(Ljava/lang/String;Lantlr/Token;)Z
    .locals 6

    .line 64
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildAST"

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "false"

    const-string v3, "true"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iput-boolean v5, p0, Lantlr/ParserGrammar;->buildAST:Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iput-boolean v4, p0, Lantlr/ParserGrammar;->buildAST:Z

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lantlr/ParserGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/ParserGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "buildAST option must be true or false"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return v5

    :cond_2
    const-string v1, "interactive"

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    iput-boolean v5, p0, Lantlr/ParserGrammar;->interactive:Z

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 82
    iput-boolean v4, p0, Lantlr/ParserGrammar;->interactive:Z

    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lantlr/ParserGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/ParserGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "interactive option must be true or false"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1
    return v5

    :cond_5
    const-string v0, "ASTLabelType"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    invoke-super {p0, p1, p2}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    return v5

    .line 93
    :cond_6
    invoke-super {p0, p1, p2}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v5

    .line 96
    :cond_7
    iget-object v0, p0, Lantlr/ParserGrammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lantlr/ParserGrammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return v4
.end method
