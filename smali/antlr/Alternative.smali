.class Lantlr/Alternative;
.super Ljava/lang/Object;
.source "Alternative.java"


# instance fields
.field protected cache:[Lantlr/Lookahead;

.field private doAutoGen:Z

.field protected exceptionSpec:Lantlr/ExceptionSpec;

.field head:Lantlr/AlternativeElement;

.field protected lookaheadDepth:I

.field protected semPred:Ljava/lang/String;

.field protected synPred:Lantlr/SynPredBlock;

.field tail:Lantlr/AlternativeElement;

.field protected treeSpecifier:Lantlr/Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lantlr/Alternative;->treeSpecifier:Lantlr/Token;

    return-void
.end method

.method public constructor <init>(Lantlr/AlternativeElement;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lantlr/Alternative;->treeSpecifier:Lantlr/Token;

    .line 43
    invoke-virtual {p0, p1}, Lantlr/Alternative;->addElement(Lantlr/AlternativeElement;)V

    return-void
.end method


# virtual methods
.method public addElement(Lantlr/AlternativeElement;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lantlr/Alternative;->tail:Lantlr/AlternativeElement;

    iput-object p1, p0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lantlr/Alternative;->tail:Lantlr/AlternativeElement;

    iput-object p1, v0, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    .line 53
    iput-object p1, p0, Lantlr/Alternative;->tail:Lantlr/AlternativeElement;

    :goto_0
    return-void
.end method

.method public atStart()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoGen()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lantlr/Alternative;->doAutoGen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lantlr/Alternative;->treeSpecifier:Lantlr/Token;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTreeSpecifier()Lantlr/Token;
    .locals 1

    .line 67
    iget-object v0, p0, Lantlr/Alternative;->treeSpecifier:Lantlr/Token;

    return-object v0
.end method

.method public setAutoGen(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lantlr/Alternative;->doAutoGen:Z

    return-void
.end method
