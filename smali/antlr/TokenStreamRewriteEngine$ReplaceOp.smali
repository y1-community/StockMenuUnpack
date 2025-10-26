.class Lantlr/TokenStreamRewriteEngine$ReplaceOp;
.super Lantlr/TokenStreamRewriteEngine$RewriteOperation;
.source "TokenStreamRewriteEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lantlr/TokenStreamRewriteEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReplaceOp"
.end annotation


# instance fields
.field protected lastIndex:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p3}, Lantlr/TokenStreamRewriteEngine$RewriteOperation;-><init>(ILjava/lang/String;)V

    .line 91
    iput p2, p0, Lantlr/TokenStreamRewriteEngine$ReplaceOp;->lastIndex:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/StringBuffer;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine$ReplaceOp;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine$ReplaceOp;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    iget p1, p0, Lantlr/TokenStreamRewriteEngine$ReplaceOp;->lastIndex:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
