.class Lantlr/TokenStreamRewriteEngine$RewriteOperation;
.super Ljava/lang/Object;
.source "TokenStreamRewriteEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lantlr/TokenStreamRewriteEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RewriteOperation"
.end annotation


# instance fields
.field protected index:I

.field protected text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    .line 67
    iput-object p2, p0, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/StringBuffer;)I
    .locals 0

    .line 73
    iget p1, p0, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    return p1
.end method
