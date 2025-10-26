.class Lantlr/TreeBlockContext;
.super Lantlr/BlockContext;
.source "TreeBlockContext.java"


# instance fields
.field protected nextElementIsRoot:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lantlr/BlockContext;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lantlr/TreeBlockContext;->nextElementIsRoot:Z

    return-void
.end method


# virtual methods
.method public addAlternativeElement(Lantlr/AlternativeElement;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lantlr/TreeBlockContext;->block:Lantlr/AlternativeBlock;

    check-cast v0, Lantlr/TreeElement;

    .line 27
    iget-boolean v1, p0, Lantlr/TreeBlockContext;->nextElementIsRoot:Z

    if-eqz v1, :cond_0

    .line 28
    check-cast p1, Lantlr/GrammarAtom;

    iput-object p1, v0, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lantlr/TreeBlockContext;->nextElementIsRoot:Z

    goto :goto_0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lantlr/BlockContext;->addAlternativeElement(Lantlr/AlternativeElement;)V

    :goto_0
    return-void
.end method
