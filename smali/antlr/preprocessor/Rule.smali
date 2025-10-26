.class Lantlr/preprocessor/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field protected args:Ljava/lang/String;

.field protected bang:Z

.field protected block:Ljava/lang/String;

.field protected enclosingGrammar:Lantlr/preprocessor/Grammar;

.field protected initAction:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected options:Lantlr/collections/impl/IndexedVector;

.field protected returnValue:Ljava/lang/String;

.field protected throwsSpec:Ljava/lang/String;

.field protected visibility:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;Lantlr/preprocessor/Grammar;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lantlr/preprocessor/Rule;->bang:Z

    .line 28
    iput-object p1, p0, Lantlr/preprocessor/Rule;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lantlr/preprocessor/Rule;->block:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lantlr/preprocessor/Rule;->options:Lantlr/collections/impl/IndexedVector;

    .line 31
    invoke-virtual {p0, p4}, Lantlr/preprocessor/Rule;->setEnclosingGrammar(Lantlr/preprocessor/Grammar;)V

    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lantlr/preprocessor/Rule;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getBang()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lantlr/preprocessor/Rule;->bang:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lantlr/preprocessor/Rule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lantlr/preprocessor/Rule;->returnValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    return-object v0
.end method

.method public narrowerVisibility(Lantlr/preprocessor/Rule;)Z
    .locals 4

    .line 60
    iget-object v0, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    const-string v1, "public"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 66
    :cond_1
    iget-object v0, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    const-string v1, "protected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "private"

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3

    .line 72
    :cond_3
    iget-object p1, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v3
.end method

.method public sameSignature(Lantlr/preprocessor/Rule;)Z
    .locals 4

    .line 91
    iget-object v0, p0, Lantlr/preprocessor/Rule;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/preprocessor/Rule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    iget-object v1, p0, Lantlr/preprocessor/Rule;->args:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Lantlr/preprocessor/Rule;->getArgs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 95
    :goto_0
    iget-object v3, p0, Lantlr/preprocessor/Rule;->returnValue:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {p1}, Lantlr/preprocessor/Rule;->getReturnValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lantlr/preprocessor/Rule;->args:Ljava/lang/String;

    return-void
.end method

.method public setBang()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lantlr/preprocessor/Rule;->bang:Z

    return-void
.end method

.method public setEnclosingGrammar(Lantlr/preprocessor/Grammar;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lantlr/preprocessor/Rule;->enclosingGrammar:Lantlr/preprocessor/Grammar;

    return-void
.end method

.method public setInitAction(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lantlr/preprocessor/Rule;->initAction:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Lantlr/collections/impl/IndexedVector;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lantlr/preprocessor/Rule;->options:Lantlr/collections/impl/IndexedVector;

    return-void
.end method

.method public setReturnValue(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lantlr/preprocessor/Rule;->returnValue:Ljava/lang/String;

    return-void
.end method

.method public setThrowsSpec(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lantlr/preprocessor/Rule;->throwsSpec:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 135
    iget-object v0, p0, Lantlr/preprocessor/Rule;->returnValue:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "returns "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/preprocessor/Rule;->returnValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    iget-object v2, p0, Lantlr/preprocessor/Rule;->args:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 137
    :cond_1
    invoke-virtual {p0}, Lantlr/preprocessor/Rule;->getBang()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "!"

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 139
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    const-string v6, " "

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lantlr/preprocessor/Rule;->visibility:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/preprocessor/Rule;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/preprocessor/Rule;->throwsSpec:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lantlr/preprocessor/Rule;->options:Lantlr/collections/impl/IndexedVector;

    const-string v2, "line.separator"

    if-eqz v1, :cond_5

    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "options {"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lantlr/preprocessor/Rule;->options:Lantlr/collections/impl/IndexedVector;

    invoke-virtual {v1}, Lantlr/collections/impl/IndexedVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/preprocessor/Option;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 148
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_5
    iget-object v1, p0, Lantlr/preprocessor/Rule;->initAction:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 151
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/preprocessor/Rule;->initAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/preprocessor/Rule;->block:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
