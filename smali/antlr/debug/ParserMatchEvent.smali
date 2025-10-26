.class public Lantlr/debug/ParserMatchEvent;
.super Lantlr/debug/GuessingEvent;
.source "ParserMatchEvent.java"


# static fields
.field public static BITSET:I = 0x1

.field public static CHAR:I = 0x2

.field public static CHAR_BITSET:I = 0x3

.field public static CHAR_RANGE:I = 0x5

.field public static STRING:I = 0x4

.field public static TOKEN:I


# instance fields
.field private inverse:Z

.field private matched:Z

.field private target:Ljava/lang/Object;

.field private text:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/String;IZZ)V
    .locals 8

    .line 25
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 26
    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lantlr/debug/ParserMatchEvent;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lantlr/debug/ParserMatchEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 35
    iget v0, p0, Lantlr/debug/ParserMatchEvent;->value:I

    return v0
.end method

.method public isInverse()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lantlr/debug/ParserMatchEvent;->inverse:Z

    return v0
.end method

.method public isMatched()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lantlr/debug/ParserMatchEvent;->matched:Z

    return v0
.end method

.method setInverse(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lantlr/debug/ParserMatchEvent;->inverse:Z

    return-void
.end method

.method setMatched(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lantlr/debug/ParserMatchEvent;->matched:Z

    return-void
.end method

.method setTarget(Ljava/lang/Object;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lantlr/debug/ParserMatchEvent;->target:Ljava/lang/Object;

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lantlr/debug/ParserMatchEvent;->text:Ljava/lang/String;

    return-void
.end method

.method setValue(I)V
    .locals 0

    .line 56
    iput p1, p0, Lantlr/debug/ParserMatchEvent;->value:I

    return-void
.end method

.method setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p5}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 61
    invoke-virtual {p0, p2}, Lantlr/debug/ParserMatchEvent;->setValue(I)V

    .line 62
    invoke-virtual {p0, p3}, Lantlr/debug/ParserMatchEvent;->setTarget(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p6}, Lantlr/debug/ParserMatchEvent;->setInverse(Z)V

    .line 64
    invoke-virtual {p0, p7}, Lantlr/debug/ParserMatchEvent;->setMatched(Z)V

    .line 65
    invoke-virtual {p0, p4}, Lantlr/debug/ParserMatchEvent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserMatchEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->isMatched()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ok,"

    goto :goto_0

    :cond_0
    const-string v1, "bad,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->isInverse()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NOT "

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getType()I

    move-result v1

    sget v2, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    if-ne v1, v2, :cond_2

    const-string v1, "token,"

    goto :goto_2

    :cond_2
    const-string v1, "bitset,"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getGuessing()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
