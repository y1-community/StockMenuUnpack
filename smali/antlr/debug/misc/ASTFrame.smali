.class public Lantlr/debug/misc/ASTFrame;
.super Ljavax/swing/JFrame;
.source "ASTFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lantlr/debug/misc/ASTFrame$MyTreeSelectionListener;
    }
.end annotation


# static fields
.field static final HEIGHT:I = 0x12c

.field static final WIDTH:I = 0xc8


# direct methods
.method public constructor <init>(Ljava/lang/String;Lantlr/collections/AST;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance p1, Lantlr/debug/misc/ASTFrame$MyTreeSelectionListener;

    invoke-direct {p1, p0}, Lantlr/debug/misc/ASTFrame$MyTreeSelectionListener;-><init>(Lantlr/debug/misc/ASTFrame;)V

    .line 43
    new-instance p1, Lantlr/debug/misc/JTreeASTPanel;

    new-instance v0, Lantlr/debug/misc/JTreeASTModel;

    invoke-direct {v0, p2}, Lantlr/debug/misc/JTreeASTModel;-><init>(Lantlr/collections/AST;)V

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lantlr/debug/misc/JTreeASTPanel;-><init>(Ljavax/swing/tree/TreeModel;Ljavax/swing/event/TreeSelectionListener;)V

    .line 44
    invoke-virtual {p0}, Lantlr/debug/misc/ASTFrame;->getContentPane()Ljava/awt/Container;

    move-result-object p2

    const-string v0, "Center"

    .line 45
    invoke-virtual {p2, p1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 46
    new-instance p1, Lantlr/debug/misc/ASTFrame$1;

    invoke-direct {p1, p0}, Lantlr/debug/misc/ASTFrame$1;-><init>(Lantlr/debug/misc/ASTFrame;)V

    invoke-virtual {p0, p1}, Lantlr/debug/misc/ASTFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    const/16 p1, 0xc8

    const/16 p2, 0x12c

    .line 54
    invoke-virtual {p0, p1, p2}, Lantlr/debug/misc/ASTFrame;->setSize(II)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance p0, Lantlr/ASTFactory;

    invoke-direct {p0}, Lantlr/ASTFactory;-><init>()V

    const/4 v0, 0x0

    const-string v1, "ROOT"

    .line 60
    invoke-virtual {p0, v0, v1}, Lantlr/ASTFactory;->create(ILjava/lang/String;)Lantlr/collections/AST;

    move-result-object v1

    check-cast v1, Lantlr/CommonAST;

    const-string v2, "C1"

    .line 61
    invoke-virtual {p0, v0, v2}, Lantlr/ASTFactory;->create(ILjava/lang/String;)Lantlr/collections/AST;

    move-result-object v2

    check-cast v2, Lantlr/CommonAST;

    invoke-virtual {v1, v2}, Lantlr/CommonAST;->addChild(Lantlr/collections/AST;)V

    const-string v2, "C2"

    .line 62
    invoke-virtual {p0, v0, v2}, Lantlr/ASTFactory;->create(ILjava/lang/String;)Lantlr/collections/AST;

    move-result-object v2

    check-cast v2, Lantlr/CommonAST;

    invoke-virtual {v1, v2}, Lantlr/CommonAST;->addChild(Lantlr/collections/AST;)V

    const-string v2, "C3"

    .line 63
    invoke-virtual {p0, v0, v2}, Lantlr/ASTFactory;->create(ILjava/lang/String;)Lantlr/collections/AST;

    move-result-object p0

    check-cast p0, Lantlr/CommonAST;

    invoke-virtual {v1, p0}, Lantlr/CommonAST;->addChild(Lantlr/collections/AST;)V

    .line 65
    new-instance p0, Lantlr/debug/misc/ASTFrame;

    const-string v0, "AST JTree Example"

    invoke-direct {p0, v0, v1}, Lantlr/debug/misc/ASTFrame;-><init>(Ljava/lang/String;Lantlr/collections/AST;)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lantlr/debug/misc/ASTFrame;->setVisible(Z)V

    return-void
.end method
