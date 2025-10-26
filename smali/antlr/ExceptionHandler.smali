.class Lantlr/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# instance fields
.field protected action:Lantlr/Token;

.field protected exceptionTypeAndName:Lantlr/Token;


# direct methods
.method public constructor <init>(Lantlr/Token;Lantlr/Token;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    .line 20
    iput-object p2, p0, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    return-void
.end method
