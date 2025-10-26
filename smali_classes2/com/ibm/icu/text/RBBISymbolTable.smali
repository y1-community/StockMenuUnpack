.class Lcom/ibm/icu/text/RBBISymbolTable;
.super Ljava/lang/Object;
.source "RBBISymbolTable.java"

# interfaces
.implements Lcom/ibm/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    }
.end annotation


# instance fields
.field fCachedSetLookup:Lcom/ibm/icu/text/UnicodeSet;

.field fHashTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field fRuleScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

.field ffffString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/RBBIRuleScanner;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fRuleScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    const-string p1, "\uffff"

    .line 38
    iput-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Lcom/ibm/icu/text/RBBINode;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-eqz v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fRuleScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

    const p2, 0x10207

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RBBIRuleScanner;->error(I)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-direct {v0}, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;-><init>()V

    .line 165
    iput-object p1, v0, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    .line 166
    iput-object p2, v0, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Lcom/ibm/icu/text/RBBINode;

    .line 167
    iget-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    iget-object p2, v0, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 62
    :cond_0
    iget-object p1, p1, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Lcom/ibm/icu/text/RBBINode;

    .line 63
    :goto_0
    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget v1, v1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 64
    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 68
    iget v1, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-nez v1, :cond_2

    .line 72
    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 73
    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fInputSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fCachedSetLookup:Lcom/ibm/icu/text/UnicodeSet;

    .line 74
    iget-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fRuleScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

    const v2, 0x1020f

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/RBBIRuleScanner;->error(I)V

    .line 81
    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fCachedSetLookup:Lcom/ibm/icu/text/UnicodeSet;

    .line 84
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method

.method public lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;
    .locals 2

    const/4 v0, 0x0

    const v1, 0xffff

    if-ne p1, v1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fCachedSetLookup:Lcom/ibm/icu/text/UnicodeSet;

    .line 102
    iput-object v0, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fCachedSetLookup:Lcom/ibm/icu/text/UnicodeSet;

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method lookupNode(Ljava/lang/String;)Lcom/ibm/icu/text/RBBINode;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p1, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Lcom/ibm/icu/text/RBBINode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 4

    .line 114
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 118
    invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v0, :cond_0

    .line 119
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    :cond_0
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v1, v0, :cond_3

    const-string p1, ""

    return-object p1

    .line 128
    :cond_3
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 129
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method rbbiSymtablePrint()V
    .locals 9

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Variable Definitions\nName               Node Val     String Val\n----------------------------------------------------------------------\n"

    .line 176
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    const/4 v2, 0x0

    .line 182
    :goto_0
    array-length v3, v0

    const-string v4, "\n"

    if-ge v2, v3, :cond_0

    .line 183
    aget-object v3, v0, v2

    .line 185
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 186
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Lcom/ibm/icu/text/RBBINode;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 188
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nParsed Variable Definitions\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 193
    aget-object v2, v0, v1

    .line 194
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, v2, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 195
    iget-object v2, v2, Lcom/ibm/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Lcom/ibm/icu/text/RBBINode;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/RBBINode;->printTree(Z)V

    .line 196
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
