.class public Lantlr/DumpASTVisitor;
.super Ljava/lang/Object;
.source "DumpASTVisitor.java"

# interfaces
.implements Lantlr/ASTVisitor;


# instance fields
.field protected level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lantlr/DumpASTVisitor;->level:I

    return-void
.end method

.method private tabs()V
    .locals 3

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lantlr/DumpASTVisitor;->level:I

    if-ge v0, v1, :cond_0

    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public visit(Lantlr/collections/AST;)V
    .locals 3

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 38
    invoke-direct {p0}, Lantlr/DumpASTVisitor;->tabs()V

    .line 40
    invoke-interface {p1}, Lantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "nil"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 47
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    iget v0, p0, Lantlr/DumpASTVisitor;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DumpASTVisitor;->level:I

    .line 58
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DumpASTVisitor;->visit(Lantlr/collections/AST;)V

    .line 59
    iget v0, p0, Lantlr/DumpASTVisitor;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/DumpASTVisitor;->level:I

    .line 36
    :cond_3
    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    goto :goto_1

    :cond_4
    return-void
.end method
