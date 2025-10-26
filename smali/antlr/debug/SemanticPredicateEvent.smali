.class public Lantlr/debug/SemanticPredicateEvent;
.super Lantlr/debug/GuessingEvent;
.source "SemanticPredicateEvent.java"


# static fields
.field public static final PREDICTING:I = 0x1

.field public static final VALIDATING:I


# instance fields
.field private condition:I

.field private result:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getCondition()I
    .locals 1

    .line 17
    iget v0, p0, Lantlr/debug/SemanticPredicateEvent;->condition:I

    return v0
.end method

.method public getResult()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lantlr/debug/SemanticPredicateEvent;->result:Z

    return v0
.end method

.method setCondition(I)V
    .locals 0

    .line 23
    iput p1, p0, Lantlr/debug/SemanticPredicateEvent;->condition:I

    return-void
.end method

.method setResult(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lantlr/debug/SemanticPredicateEvent;->result:Z

    return-void
.end method

.method setValues(IIZI)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p4}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 31
    invoke-virtual {p0, p2}, Lantlr/debug/SemanticPredicateEvent;->setCondition(I)V

    .line 32
    invoke-virtual {p0, p3}, Lantlr/debug/SemanticPredicateEvent;->setResult(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SemanticPredicateEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/SemanticPredicateEvent;->getCondition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/SemanticPredicateEvent;->getResult()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/SemanticPredicateEvent;->getGuessing()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
