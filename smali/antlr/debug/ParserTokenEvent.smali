.class public Lantlr/debug/ParserTokenEvent;
.super Lantlr/debug/Event;
.source "ParserTokenEvent.java"


# static fields
.field public static CONSUME:I = 0x1

.field public static LA:I


# instance fields
.field private amount:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2, p3, p4}, Lantlr/debug/ParserTokenEvent;->setValues(III)V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 19
    iget v0, p0, Lantlr/debug/ParserTokenEvent;->amount:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lantlr/debug/ParserTokenEvent;->value:I

    return v0
.end method

.method setAmount(I)V
    .locals 0

    .line 25
    iput p1, p0, Lantlr/debug/ParserTokenEvent;->amount:I

    return-void
.end method

.method setValue(I)V
    .locals 0

    .line 28
    iput p1, p0, Lantlr/debug/ParserTokenEvent;->value:I

    return-void
.end method

.method setValues(III)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lantlr/debug/Event;->setValues(I)V

    .line 33
    invoke-virtual {p0, p2}, Lantlr/debug/ParserTokenEvent;->setAmount(I)V

    .line 34
    invoke-virtual {p0, p3}, Lantlr/debug/ParserTokenEvent;->setValue(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getType()I

    move-result v0

    sget v1, Lantlr/debug/ParserTokenEvent;->LA:I

    const-string v2, "]"

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserTokenEvent [LA,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserTokenEvent [consume,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
