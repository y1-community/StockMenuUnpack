.class public final Lcom/ibm/icu/text/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# instance fields
.field private final compiledPattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    return-void
.end method

.method public static compile(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/SimpleFormatter;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 62
    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Lcom/ibm/icu/text/SimpleFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static compileMinMaxArguments(Ljava/lang/CharSequence;II)Lcom/ibm/icu/text/SimpleFormatter;
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance p1, Lcom/ibm/icu/text/SimpleFormatter;

    invoke-direct {p1, p0}, Lcom/ibm/icu/text/SimpleFormatter;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getArgumentLimit()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTextWithNoArguments()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/ibm/icu/text/SimpleFormatter;->getArgumentLimit()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/ibm/icu/text/SimpleFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
