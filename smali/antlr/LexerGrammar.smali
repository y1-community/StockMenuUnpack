.class Lantlr/LexerGrammar;
.super Lantlr/Grammar;
.source "LexerGrammar.java"


# instance fields
.field protected caseSensitive:Z

.field protected caseSensitiveLiterals:Z

.field protected charVocabulary:Lantlr/collections/impl/BitSet;

.field protected filterMode:Z

.field protected filterRule:Ljava/lang/String;

.field protected testLiterals:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lantlr/Grammar;-><init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lantlr/LexerGrammar;->testLiterals:Z

    .line 24
    iput-boolean p1, p0, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    .line 26
    iput-boolean p1, p0, Lantlr/LexerGrammar;->caseSensitive:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lantlr/LexerGrammar;->filterMode:Z

    const/4 p2, 0x0

    .line 34
    iput-object p2, p0, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    .line 38
    new-instance p2, Lantlr/collections/impl/BitSet;

    invoke-direct {p2}, Lantlr/collections/impl/BitSet;-><init>()V

    iput-object p2, p0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    .line 41
    iput-boolean p1, p0, Lantlr/LexerGrammar;->defaultErrorHandler:Z

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

    .line 46
    iget-object v0, p0, Lantlr/LexerGrammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/LexerGrammar;)V

    return-void
.end method

.method public getSuperClass()Ljava/lang/String;
    .locals 1

    .line 51
    iget-boolean v0, p0, Lantlr/LexerGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.DebuggingCharScanner"

    return-object v0

    :cond_0
    const-string v0, "CharScanner"

    return-object v0
.end method

.method public getTestLiterals()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lantlr/LexerGrammar;->testLiterals:Z

    return v0
.end method

.method public processArguments([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 67
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 68
    aget-object v1, p1, v0

    const-string v2, "-trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 69
    iput-boolean v2, p0, Lantlr/LexerGrammar;->traceRules:Z

    .line 70
    iget-object v1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 72
    :cond_0
    aget-object v1, p1, v0

    const-string v3, "-traceLexer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iput-boolean v2, p0, Lantlr/LexerGrammar;->traceRules:Z

    .line 74
    iget-object v1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 76
    :cond_1
    aget-object v1, p1, v0

    const-string v3, "-debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iput-boolean v2, p0, Lantlr/LexerGrammar;->debuggingOutput:Z

    .line 78
    iget-object v1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->setArgOK(I)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setCharVocabulary(Lantlr/collections/impl/BitSet;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public setOption(Ljava/lang/String;Lantlr/Token;)Z
    .locals 6

    .line 90
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildAST"

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 92
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "buildAST option is not valid for lexer"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return v2

    :cond_0
    const-string v1, "testLiterals"

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "false"

    const-string v4, "true"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    iput-boolean v2, p0, Lantlr/LexerGrammar;->testLiterals:Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 100
    iput-boolean v5, p0, Lantlr/LexerGrammar;->testLiterals:Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "testLiterals option must be true or false"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return v2

    :cond_3
    const-string v1, "interactive"

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    iput-boolean v2, p0, Lantlr/LexerGrammar;->interactive:Z

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 112
    iput-boolean v5, p0, Lantlr/LexerGrammar;->interactive:Z

    goto :goto_1

    .line 115
    :cond_5
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "interactive option must be true or false"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1
    return v2

    :cond_6
    const-string v1, "caseSensitive"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 121
    iput-boolean v2, p0, Lantlr/LexerGrammar;->caseSensitive:Z

    goto :goto_2

    .line 123
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 124
    iput-boolean v5, p0, Lantlr/LexerGrammar;->caseSensitive:Z

    goto :goto_2

    .line 127
    :cond_8
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "caseSensitive option must be true or false"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_2
    return v2

    :cond_9
    const-string v1, "caseSensitiveLiterals"

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 133
    iput-boolean v2, p0, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    goto :goto_3

    .line 135
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 136
    iput-boolean v5, p0, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    goto :goto_3

    .line 139
    :cond_b
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "caseSensitiveLiterals option must be true or false"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_3
    return v2

    :cond_c
    const-string v1, "filter"

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 144
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 145
    iput-boolean v2, p0, Lantlr/LexerGrammar;->filterMode:Z

    goto :goto_4

    .line 147
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 148
    iput-boolean v5, p0, Lantlr/LexerGrammar;->filterMode:Z

    goto :goto_4

    .line 150
    :cond_e
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_f

    .line 151
    iput-boolean v2, p0, Lantlr/LexerGrammar;->filterMode:Z

    .line 152
    iput-object v0, p0, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    goto :goto_4

    .line 155
    :cond_f
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "filter option must be true, false, or a lexer rule name"

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_4
    return v2

    :cond_10
    const-string v0, "longestPossible"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    iget-object p1, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v3, "longestPossible option has been deprecated; ignoring it..."

    invoke-virtual {p1, v3, v0, v1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return v2

    .line 163
    :cond_11
    invoke-super {p0, p1, p2}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v2

    .line 166
    :cond_12
    iget-object v0, p0, Lantlr/LexerGrammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return v5
.end method
