.class Lantlr/TokenStreamRewriteEngine$InsertBeforeOp;
.super Lantlr/TokenStreamRewriteEngine$RewriteOperation;
.source "TokenStreamRewriteEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lantlr/TokenStreamRewriteEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertBeforeOp"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lantlr/TokenStreamRewriteEngine$RewriteOperation;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/StringBuffer;)I
    .locals 1

    .line 82
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine$InsertBeforeOp;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget p1, p0, Lantlr/TokenStreamRewriteEngine$InsertBeforeOp;->index:I

    return p1
.end method
