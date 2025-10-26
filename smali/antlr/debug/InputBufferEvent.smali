.class public Lantlr/debug/InputBufferEvent;
.super Lantlr/debug/Event;
.source "InputBufferEvent.java"


# static fields
.field public static final CONSUME:I = 0x0

.field public static final LA:I = 0x1

.field public static final MARK:I = 0x2

.field public static final REWIND:I = 0x3


# instance fields
.field c:C

.field lookaheadAmount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ICI)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, p2, p3, p4}, Lantlr/debug/InputBufferEvent;->setValues(ICI)V

    return-void
.end method


# virtual methods
.method public getChar()C
    .locals 1

    .line 28
    iget-char v0, p0, Lantlr/debug/InputBufferEvent;->c:C

    return v0
.end method

.method public getLookaheadAmount()I
    .locals 1

    .line 31
    iget v0, p0, Lantlr/debug/InputBufferEvent;->lookaheadAmount:I

    return v0
.end method

.method setChar(C)V
    .locals 0

    .line 34
    iput-char p1, p0, Lantlr/debug/InputBufferEvent;->c:C

    return-void
.end method

.method setLookaheadAmount(I)V
    .locals 0

    .line 37
    iput p1, p0, Lantlr/debug/InputBufferEvent;->lookaheadAmount:I

    return-void
.end method

.method setValues(ICI)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lantlr/debug/Event;->setValues(I)V

    .line 42
    invoke-virtual {p0, p2}, Lantlr/debug/InputBufferEvent;->setChar(C)V

    .line 43
    invoke-virtual {p0, p3}, Lantlr/debug/InputBufferEvent;->setLookaheadAmount(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CharBufferEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/InputBufferEvent;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CONSUME, "

    goto :goto_0

    :cond_0
    const-string v1, "LA, "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/InputBufferEvent;->getChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/InputBufferEvent;->getLookaheadAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
