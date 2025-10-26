.class Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfusabledataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;,
        Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;,
        Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fKeySet:Lcom/ibm/icu/text/UnicodeSet;

.field private fKeyVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fLineNum:I

.field private fParseHexNum:Ljava/util/regex/Pattern;

.field private fParseLine:Ljava/util/regex/Pattern;

.field private fStringTable:Ljava/lang/StringBuffer;

.field private fTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fValueVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stringPool:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 835
    const-class v0, Lcom/ibm/icu/text/SpoofChecker;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    .line 853
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Lcom/ibm/icu/text/UnicodeSet;

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    .line 856
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-direct {v0}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    return-void
.end method

.method public static buildConfusableData(Ljava/io/Reader;Lcom/ibm/icu/text/SpoofChecker$SpoofData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1042
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;-><init>()V

    .line 1043
    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->build(Ljava/io/Reader;Lcom/ibm/icu/text/SpoofChecker$SpoofData;)V

    return-void
.end method


# virtual methods
.method build(Ljava/io/Reader;Lcom/ibm/icu/text/SpoofChecker$SpoofData;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 863
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 865
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, "(?m)^[ \\t]*([0-9A-Fa-f]+)[ \\t]+;[ \\t]*([0-9A-Fa-f]+(?:[ \\t]+[0-9A-Fa-f]+)*)[ \\t]*;\\s*(?:(SL)|(SA)|(ML)|(MA))[ \\t]*(?:#.*?)?$|^([ \\t]*(?:#.*?)?)$|^(.*?)$"

    .line 882
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    const-string p1, "\\s*([0-9A-F]+)"

    .line 892
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    const/4 p1, 0x0

    .line 896
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    .line 897
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 902
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 903
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    const/4 v1, 0x7

    .line 904
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 908
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    const-string v4, "Confusables, line "

    if-gez v3, :cond_5

    .line 919
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const-string v5, ": Bad code point: "

    const v6, 0x10ffff

    if-gt v1, v6, :cond_4

    .line 925
    iget-object v7, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 927
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 929
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    if-gt v10, v6, :cond_2

    .line 935
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 931
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-static {v10, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 933
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 942
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->addString(Ljava/lang/String;)Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v2

    .line 947
    iget-object v3, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_1

    .line 921
    :cond_4
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 923
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 911
    :cond_5
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": Unrecognized Line: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 913
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 964
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->sort()V

    .line 965
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    .line 966
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    .line 969
    iget-object v3, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->getByIndex(I)Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v3

    .line 970
    iget-object v4, v3, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 971
    iget-object v5, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ne v4, v2, :cond_7

    .line 976
    iget-object v4, v3, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput v4, v3, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    goto :goto_4

    .line 978
    :cond_7
    iput v5, v3, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 979
    iget-object v4, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    iget-object v3, v3, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 991
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 992
    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 993
    iget-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    .line 998
    iget-object v3, v2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-gt v3, v4, :cond_9

    .line 1002
    iget-object v3, v2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Lcom/ibm/icu/text/SpoofChecker$ConfusableDataUtils;->codePointAndLengthToKey(II)I

    move-result v1

    .line 1003
    iget v2, v2, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 1005
    iget-object v3, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 999
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Confusable prototypes cannot be longer than 256 entries."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1014
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1015
    new-array v1, v0, [I

    iput-object v1, p2, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_b

    .line 1018
    iget-object v2, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1019
    invoke-static {v2}, Lcom/ibm/icu/text/SpoofChecker$ConfusableDataUtils;->keyToCodePoint(I)I

    .line 1022
    iget-object v3, p2, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1027
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1029
    new-array v0, v0, [S

    iput-object v0, p2, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 1031
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1033
    iget-object v2, p2, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    add-int/lit8 v3, p1, 0x1

    int-to-short v1, v1

    aput-short v1, v2, p1

    move p1, v3

    goto :goto_7

    .line 1037
    :cond_c
    iget-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    return-void

    .line 869
    :cond_d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0xa

    .line 870
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
