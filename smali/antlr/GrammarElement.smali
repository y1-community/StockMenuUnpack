.class abstract Lantlr/GrammarElement;
.super Ljava/lang/Object;
.source "GrammarElement.java"


# static fields
.field public static final AUTO_GEN_BANG:I = 0x3

.field public static final AUTO_GEN_CARET:I = 0x2

.field public static final AUTO_GEN_NONE:I = 0x1


# instance fields
.field protected column:I

.field protected grammar:Lantlr/Grammar;

.field protected line:I


# direct methods
.method public constructor <init>(Lantlr/Grammar;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lantlr/GrammarElement;->grammar:Lantlr/Grammar;

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lantlr/GrammarElement;->line:I

    .line 37
    iput p1, p0, Lantlr/GrammarElement;->column:I

    return-void
.end method

.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lantlr/GrammarElement;->grammar:Lantlr/Grammar;

    .line 42
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    iput p1, p0, Lantlr/GrammarElement;->line:I

    .line 43
    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p1

    iput p1, p0, Lantlr/GrammarElement;->column:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 0

    return-void
.end method

.method public getColumn()I
    .locals 1

    .line 54
    iget v0, p0, Lantlr/GrammarElement;->column:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 50
    iget v0, p0, Lantlr/GrammarElement;->line:I

    return v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract toString()Ljava/lang/String;
.end method
