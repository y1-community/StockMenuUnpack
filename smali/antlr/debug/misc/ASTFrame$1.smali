.class Lantlr/debug/misc/ASTFrame$1;
.super Ljava/awt/event/WindowAdapter;
.source "ASTFrame.java"


# instance fields
.field private final synthetic this$0:Lantlr/debug/misc/ASTFrame;


# direct methods
.method constructor <init>(Lantlr/debug/misc/ASTFrame;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Lantlr/debug/misc/ASTFrame$1;->this$0:Lantlr/debug/misc/ASTFrame;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Frame;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Ljava/awt/Frame;->setVisible(Z)V

    .line 50
    invoke-virtual {p1}, Ljava/awt/Frame;->dispose()V

    return-void
.end method
