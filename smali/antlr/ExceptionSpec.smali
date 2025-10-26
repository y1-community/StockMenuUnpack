.class Lantlr/ExceptionSpec;
.super Ljava/lang/Object;
.source "ExceptionSpec.java"


# instance fields
.field protected handlers:Lantlr/collections/impl/Vector;

.field protected label:Lantlr/Token;


# direct methods
.method public constructor <init>(Lantlr/Token;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lantlr/ExceptionSpec;->label:Lantlr/Token;

    .line 23
    new-instance p1, Lantlr/collections/impl/Vector;

    invoke-direct {p1}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object p1, p0, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    return-void
.end method


# virtual methods
.method public addHandler(Lantlr/ExceptionHandler;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    return-void
.end method
