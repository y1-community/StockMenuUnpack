.class public Lantlr/collections/impl/ASTArray;
.super Ljava/lang/Object;
.source "ASTArray.java"


# instance fields
.field public array:[Lantlr/collections/AST;

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lantlr/collections/impl/ASTArray;->size:I

    .line 23
    new-array p1, p1, [Lantlr/collections/AST;

    iput-object p1, p0, Lantlr/collections/impl/ASTArray;->array:[Lantlr/collections/AST;

    return-void
.end method


# virtual methods
.method public add(Lantlr/collections/AST;)Lantlr/collections/impl/ASTArray;
    .locals 3

    .line 27
    iget-object v0, p0, Lantlr/collections/impl/ASTArray;->array:[Lantlr/collections/AST;

    iget v1, p0, Lantlr/collections/impl/ASTArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lantlr/collections/impl/ASTArray;->size:I

    aput-object p1, v0, v1

    return-object p0
.end method
