.class Lantlr/TokenStreamRewriteEngine$1;
.super Ljava/lang/Object;
.source "TokenStreamRewriteEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lantlr/TokenStreamRewriteEngine;


# direct methods
.method constructor <init>(Lantlr/TokenStreamRewriteEngine;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lantlr/TokenStreamRewriteEngine$1;->this$0:Lantlr/TokenStreamRewriteEngine;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 202
    check-cast p1, Lantlr/TokenStreamRewriteEngine$RewriteOperation;

    .line 203
    check-cast p2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;

    .line 204
    iget v0, p1, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    iget v1, p2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 205
    :cond_0
    iget p1, p1, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    iget p2, p2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
