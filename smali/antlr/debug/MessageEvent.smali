.class public Lantlr/debug/MessageEvent;
.super Lantlr/debug/Event;
.source "MessageEvent.java"


# static fields
.field public static ERROR:I = 0x1

.field public static WARNING:I


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2, p3}, Lantlr/debug/MessageEvent;->setValues(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lantlr/debug/MessageEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method setText(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lantlr/debug/MessageEvent;->text:Ljava/lang/String;

    return-void
.end method

.method setValues(ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lantlr/debug/Event;->setValues(I)V

    .line 25
    invoke-virtual {p0, p2}, Lantlr/debug/MessageEvent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserMessageEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/MessageEvent;->getType()I

    move-result v1

    sget v2, Lantlr/debug/MessageEvent;->WARNING:I

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "warning,"

    goto :goto_0

    :cond_0
    const-string v1, "error,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/debug/MessageEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
