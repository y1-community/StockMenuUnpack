.class public Lantlr/NameSpace;
.super Ljava/lang/Object;
.source "NameSpace.java"


# instance fields
.field private _name:Ljava/lang/String;

.field private names:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/NameSpace;->names:Ljava/util/Vector;

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lantlr/NameSpace;->_name:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lantlr/NameSpace;->parse(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method emitClosures(Ljava/io/PrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lantlr/NameSpace;->names:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "ANTLR_END_NAMESPACE"

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method emitDeclarations(Ljava/io/PrintWriter;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lantlr/NameSpace;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ANTLR_BEGIN_NAMESPACE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lantlr/NameSpace;->_name:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "::"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lantlr/NameSpace;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
