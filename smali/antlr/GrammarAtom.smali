.class abstract Lantlr/GrammarAtom;
.super Lantlr/AlternativeElement;
.source "GrammarAtom.java"


# instance fields
.field protected ASTNodeType:Ljava/lang/String;

.field protected atomText:Ljava/lang/String;

.field protected label:Ljava/lang/String;

.field protected not:Z

.field protected tokenType:I


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lantlr/GrammarAtom;->tokenType:I

    .line 17
    iput-boolean p1, p0, Lantlr/GrammarAtom;->not:Z

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lantlr/GrammarAtom;->ASTNodeType:Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getASTNodeType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lantlr/GrammarAtom;->ASTNodeType:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Lantlr/GrammarAtom;->tokenType:I

    return v0
.end method

.method public setASTNodeType(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lantlr/GrammarAtom;->ASTNodeType:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    return-void
.end method

.method public setOption(Lantlr/Token;Lantlr/Token;)V
    .locals 3

    .line 53
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/GrammarAtom;->setASTNodeType(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p0, Lantlr/GrammarAtom;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid element option:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/GrammarAtom;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    iget-boolean v0, p0, Lantlr/GrammarAtom;->not:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
