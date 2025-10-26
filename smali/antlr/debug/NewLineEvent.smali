.class public Lantlr/debug/NewLineEvent;
.super Lantlr/debug/Event;
.source "NewLineEvent.java"


# instance fields
.field private line:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Lantlr/debug/NewLineEvent;->setValues(I)V

    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 1

    .line 15
    iget v0, p0, Lantlr/debug/NewLineEvent;->line:I

    return v0
.end method

.method setLine(I)V
    .locals 0

    .line 18
    iput p1, p0, Lantlr/debug/NewLineEvent;->line:I

    return-void
.end method

.method setValues(I)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lantlr/debug/NewLineEvent;->setLine(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "NewLineEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/debug/NewLineEvent;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
