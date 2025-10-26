.class Lantlr/debug/misc/ASTFrame$MyTreeSelectionListener;
.super Ljava/lang/Object;
.source "ASTFrame.java"

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lantlr/debug/misc/ASTFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTreeSelectionListener"
.end annotation


# instance fields
.field private final synthetic this$0:Lantlr/debug/misc/ASTFrame;


# direct methods
.method constructor <init>(Lantlr/debug/misc/ASTFrame;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lantlr/debug/misc/ASTFrame$MyTreeSelectionListener;->this$0:Lantlr/debug/misc/ASTFrame;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 4

    .line 27
    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object p1

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 32
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method
