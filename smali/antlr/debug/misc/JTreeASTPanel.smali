.class public Lantlr/debug/misc/JTreeASTPanel;
.super Ljavax/swing/JPanel;
.source "JTreeASTPanel.java"


# instance fields
.field tree:Ljavax/swing/JTree;


# direct methods
.method public constructor <init>(Ljavax/swing/tree/TreeModel;Ljavax/swing/event/TreeSelectionListener;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 20
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lantlr/debug/misc/JTreeASTPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 23
    new-instance v0, Ljavax/swing/JTree;

    invoke-direct {v0, p1}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeModel;)V

    iput-object v0, p0, Lantlr/debug/misc/JTreeASTPanel;->tree:Ljavax/swing/JTree;

    const-string p1, "JTree.lineStyle"

    const-string v1, "Angled"

    .line 26
    invoke-virtual {v0, p1, v1}, Ljavax/swing/JTree;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 30
    iget-object p1, p0, Lantlr/debug/misc/JTreeASTPanel;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1, p2}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    .line 33
    :cond_0
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    .line 34
    invoke-virtual {p1}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object p2

    iget-object v0, p0, Lantlr/debug/misc/JTreeASTPanel;->tree:Ljavax/swing/JTree;

    invoke-virtual {p2, v0}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-string p2, "Center"

    .line 36
    invoke-virtual {p0, p1, p2}, Lantlr/debug/misc/JTreeASTPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    return-void
.end method
