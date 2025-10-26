.class Lantlr/BlockContext;
.super Ljava/lang/Object;
.source "BlockContext.java"


# instance fields
.field altNum:I

.field block:Lantlr/AlternativeBlock;

.field blockEnd:Lantlr/BlockEndElement;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlternativeElement(Lantlr/AlternativeElement;)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lantlr/Alternative;->addElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public currentAlt()Lantlr/Alternative;
    .locals 2

    .line 26
    iget-object v0, p0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iget-object v0, v0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    iget v1, p0, Lantlr/BlockContext;->altNum:I

    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Alternative;

    return-object v0
.end method

.method public currentElement()Lantlr/AlternativeElement;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lantlr/Alternative;->tail:Lantlr/AlternativeElement;

    return-object v0
.end method
