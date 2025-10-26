.class public abstract Lantlr/debug/GuessingEvent;
.super Lantlr/debug/Event;
.source "GuessingEvent.java"


# instance fields
.field private guessing:I


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
    invoke-direct {p0, p1, p2}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getGuessing()I
    .locals 1

    .line 14
    iget v0, p0, Lantlr/debug/GuessingEvent;->guessing:I

    return v0
.end method

.method setGuessing(I)V
    .locals 0

    .line 17
    iput p1, p0, Lantlr/debug/GuessingEvent;->guessing:I

    return-void
.end method

.method setValues(II)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lantlr/debug/Event;->setValues(I)V

    .line 22
    invoke-virtual {p0, p2}, Lantlr/debug/GuessingEvent;->setGuessing(I)V

    return-void
.end method
