.class public abstract Lantlr/debug/Event;
.super Ljava/util/EventObject;
.source "Event.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2}, Lantlr/debug/Event;->setType(I)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 17
    iget v0, p0, Lantlr/debug/Event;->type:I

    return v0
.end method

.method setType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lantlr/debug/Event;->type:I

    return-void
.end method

.method setValues(I)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lantlr/debug/Event;->setType(I)V

    return-void
.end method
