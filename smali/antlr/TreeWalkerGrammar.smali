.class Lantlr/TreeWalkerGrammar;
.super Lantlr/Grammar;
.source "TreeWalkerGrammar.java"


# instance fields
.field protected transform:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lantlr/Grammar;-><init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lantlr/TreeWalkerGrammar;->transform:Z

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

    .line 30
    iget-object v0, p0, Lantlr/TreeWalkerGrammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/TreeWalkerGrammar;)V

    return-void
.end method

.method protected getSuperClass()Ljava/lang/String;
    .locals 1

    const-string v0, "TreeParser"

    return-object v0
.end method

.method public processArguments([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 45
    aget-object v1, p1, v0

    const-string v2, "-trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 46
    iput-boolean v2, p0, Lantlr/TreeWalkerGrammar;->traceRules:Z

    .line 47
    iget-object v1, p0, Lantlr/TreeWalkerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 49
    :cond_0
    aget-object v1, p1, v0

    const-string v3, "-traceTreeParser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iput-boolean v2, p0, Lantlr/TreeWalkerGrammar;->traceRules:Z

    .line 51
    iget-object v1, p0, Lantlr/TreeWalkerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOption(Ljava/lang/String;Lantlr/Token;)Z
    .locals 4

    const-string v0, "buildAST"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iput-boolean v2, p0, Lantlr/TreeWalkerGrammar;->buildAST:Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iput-boolean v1, p0, Lantlr/TreeWalkerGrammar;->buildAST:Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lantlr/TreeWalkerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/TreeWalkerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "buildAST option must be true or false"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return v2

    :cond_2
    const-string v0, "ASTLabelType"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-super {p0, p1, p2}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    return v2

    .line 79
    :cond_3
    invoke-super {p0, p1, p2}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 82
    :cond_4
    iget-object v0, p0, Lantlr/TreeWalkerGrammar;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lantlr/TreeWalkerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {v0, p1, v2, v3, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return v1
.end method
