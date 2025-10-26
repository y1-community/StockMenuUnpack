.class abstract Lantlr/GrammarSymbol;
.super Ljava/lang/Object;
.source "GrammarSymbol.java"


# instance fields
.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lantlr/GrammarSymbol;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lantlr/GrammarSymbol;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lantlr/GrammarSymbol;->id:Ljava/lang/String;

    return-void
.end method
