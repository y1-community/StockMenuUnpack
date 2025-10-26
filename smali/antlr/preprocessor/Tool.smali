.class public Lantlr/preprocessor/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# instance fields
.field protected antlrTool:Lantlr/Tool;

.field protected args:[Ljava/lang/String;

.field protected grammarFileName:Ljava/lang/String;

.field protected grammars:Lantlr/collections/impl/Vector;

.field protected nargs:I

.field protected theHierarchy:Lantlr/preprocessor/Hierarchy;


# direct methods
.method public constructor <init>(Lantlr/Tool;[Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    .line 25
    invoke-direct {p0, p2}, Lantlr/preprocessor/Tool;->processArguments([Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 29
    new-instance v0, Lantlr/Tool;

    invoke-direct {v0}, Lantlr/Tool;-><init>()V

    .line 30
    new-instance v1, Lantlr/preprocessor/Tool;

    invoke-direct {v1, v0, p0}, Lantlr/preprocessor/Tool;-><init>(Lantlr/Tool;[Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Lantlr/preprocessor/Tool;->preprocess()Z

    .line 32
    invoke-virtual {v1}, Lantlr/preprocessor/Tool;->preprocessedArgList()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 34
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private processArguments([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lantlr/preprocessor/Tool;->nargs:I

    .line 99
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 100
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_8

    .line 101
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    const-string v3, "Zero length argument ignoring..."

    invoke-virtual {v2, v3}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :cond_0
    aget-object v2, p1, v1

    const-string v3, "-glib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 110
    iget-object v2, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    const-string v3, "-glib cannot deal with \'/\' on a PC: use \'\\\'; ignoring..."

    invoke-virtual {v2, v3}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 113
    aget-object v2, p1, v1

    const/16 v3, 0x3b

    invoke-static {v2, v3}, Lantlr/Tool;->parseSeparatedList(Ljava/lang/String;C)Lantlr/collections/impl/Vector;

    move-result-object v2

    iput-object v2, p0, Lantlr/preprocessor/Tool;->grammars:Lantlr/collections/impl/Vector;

    goto/16 :goto_1

    .line 117
    :cond_2
    aget-object v2, p1, v1

    const-string v3, "-o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    iget-object v2, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    iget v3, p0, Lantlr/preprocessor/Tool;->nargs:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lantlr/preprocessor/Tool;->nargs:I

    aget-object v5, p1, v1

    aput-object v5, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 119
    array-length v5, p1

    if-lt v3, v5, :cond_3

    .line 120
    iget-object v2, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    const-string v3, "missing output directory with -o option; ignoring"

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v4, 0x1

    .line 124
    iput v1, p0, Lantlr/preprocessor/Tool;->nargs:I

    aget-object v1, p1, v3

    aput-object v1, v2, v4

    .line 125
    iget-object v1, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lantlr/Tool;->setOutputDirectory(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    .line 128
    :cond_4
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    .line 129
    iget-object v2, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    iget v3, p0, Lantlr/preprocessor/Tool;->nargs:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lantlr/preprocessor/Tool;->nargs:I

    aget-object v4, p1, v1

    aput-object v4, v2, v3

    goto :goto_1

    .line 133
    :cond_5
    aget-object v2, p1, v1

    iput-object v2, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lantlr/preprocessor/Tool;->grammars:Lantlr/collections/impl/Vector;

    if-nez v2, :cond_6

    .line 135
    new-instance v2, Lantlr/collections/impl/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object v2, p0, Lantlr/preprocessor/Tool;->grammars:Lantlr/collections/impl/Vector;

    .line 137
    :cond_6
    iget-object v2, p0, Lantlr/preprocessor/Tool;->grammars:Lantlr/collections/impl/Vector;

    iget-object v3, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v1, 0x1

    .line 138
    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 139
    iget-object p1, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    const-string v0, "grammar file must be last; ignoring other arguments..."

    invoke-virtual {p1, v0}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public preprocess()Z
    .locals 6

    .line 40
    iget-object v0, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    const-string v2, "no grammar file specified"

    invoke-virtual {v0, v2}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lantlr/preprocessor/Tool;->grammars:Lantlr/collections/impl/Vector;

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lantlr/preprocessor/Hierarchy;

    iget-object v2, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    invoke-direct {v0, v2}, Lantlr/preprocessor/Hierarchy;-><init>(Lantlr/Tool;)V

    iput-object v0, p0, Lantlr/preprocessor/Tool;->theHierarchy:Lantlr/preprocessor/Hierarchy;

    .line 46
    iget-object v0, p0, Lantlr/preprocessor/Tool;->grammars:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    :try_start_0
    iget-object v3, p0, Lantlr/preprocessor/Tool;->theHierarchy:Lantlr/preprocessor/Hierarchy;

    invoke-virtual {v3, v2}, Lantlr/preprocessor/Hierarchy;->readGrammarFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    iget-object v0, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " not found"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    return v1

    .line 59
    :cond_1
    iget-object v0, p0, Lantlr/preprocessor/Tool;->theHierarchy:Lantlr/preprocessor/Hierarchy;

    invoke-virtual {v0}, Lantlr/preprocessor/Hierarchy;->verifyThatHierarchyIsComplete()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 62
    :cond_2
    iget-object v0, p0, Lantlr/preprocessor/Tool;->theHierarchy:Lantlr/preprocessor/Hierarchy;

    iget-object v2, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/Hierarchy;->expandGrammarsInFile(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lantlr/preprocessor/Tool;->theHierarchy:Lantlr/preprocessor/Hierarchy;

    iget-object v2, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/GrammarFile;->nameForExpandedGrammarFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    iget-object v0, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    iget v1, p0, Lantlr/preprocessor/Tool;->nargs:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lantlr/preprocessor/Tool;->nargs:I

    iget-object v2, p0, Lantlr/preprocessor/Tool;->grammarFileName:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_1

    .line 72
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lantlr/preprocessor/GrammarFile;->generateExpandedFile()V

    .line 73
    iget-object v0, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    iget v3, p0, Lantlr/preprocessor/Tool;->nargs:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lantlr/preprocessor/Tool;->nargs:I

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    invoke-virtual {v5}, Lantlr/Tool;->getOutputDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "file.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x1

    return v0

    .line 78
    :catch_1
    iget-object v0, p0, Lantlr/preprocessor/Tool;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "cannot write expanded grammar file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    return v1
.end method

.method public preprocessedArgList()[Ljava/lang/String;
    .locals 4

    .line 87
    iget v0, p0, Lantlr/preprocessor/Tool;->nargs:I

    new-array v1, v0, [Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v1, p0, Lantlr/preprocessor/Tool;->args:[Ljava/lang/String;

    return-object v1
.end method
