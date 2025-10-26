.class public Lantlr/debug/TraceEvent;
.super Lantlr/debug/GuessingEvent;
.source "TraceEvent.java"


# static fields
.field public static DONE_PARSING:I = 0x2

.field public static ENTER:I = 0x0

.field public static EXIT:I = 0x1


# instance fields
.field private data:I

.field private ruleNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIII)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2, p3, p4, p5}, Lantlr/debug/TraceEvent;->setValues(IIII)V

    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    .line 19
    iget v0, p0, Lantlr/debug/TraceEvent;->data:I

    return v0
.end method

.method public getRuleNum()I
    .locals 1

    .line 22
    iget v0, p0, Lantlr/debug/TraceEvent;->ruleNum:I

    return v0
.end method

.method setData(I)V
    .locals 0

    .line 25
    iput p1, p0, Lantlr/debug/TraceEvent;->data:I

    return-void
.end method

.method setRuleNum(I)V
    .locals 0

    .line 28
    iput p1, p0, Lantlr/debug/TraceEvent;->ruleNum:I

    return-void
.end method

.method setValues(IIII)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p3}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 33
    invoke-virtual {p0, p2}, Lantlr/debug/TraceEvent;->setRuleNum(I)V

    .line 34
    invoke-virtual {p0, p4}, Lantlr/debug/TraceEvent;->setData(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserTraceEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/TraceEvent;->getType()I

    move-result v1

    sget v2, Lantlr/debug/TraceEvent;->ENTER:I

    if-ne v1, v2, :cond_0

    const-string v1, "enter,"

    goto :goto_0

    :cond_0
    const-string v1, "exit,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/TraceEvent;->getRuleNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/TraceEvent;->getGuessing()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
