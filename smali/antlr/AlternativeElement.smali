.class abstract Lantlr/AlternativeElement;
.super Lantlr/GrammarElement;
.source "AlternativeElement.java"


# instance fields
.field protected autoGenType:I

.field protected enclosingRuleName:Ljava/lang/String;

.field next:Lantlr/AlternativeElement;


# direct methods
.method public constructor <init>(Lantlr/Grammar;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lantlr/GrammarElement;-><init>(Lantlr/Grammar;)V

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lantlr/AlternativeElement;->autoGenType:I

    return-void
.end method

.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lantlr/GrammarElement;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lantlr/AlternativeElement;->autoGenType:I

    return-void
.end method

.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lantlr/GrammarElement;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    .line 26
    iput p3, p0, Lantlr/AlternativeElement;->autoGenType:I

    return-void
.end method


# virtual methods
.method public getAutoGenType()I
    .locals 1

    .line 30
    iget v0, p0, Lantlr/AlternativeElement;->autoGenType:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAutoGenType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lantlr/AlternativeElement;->autoGenType:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
