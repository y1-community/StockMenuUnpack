.class Lcom/ibm/icu/text/SourceTargetUtility;
.super Ljava/lang/Object;
.source "SourceTargetUtility.java"


# static fields
.field static NFC:Lcom/ibm/icu/text/Normalizer2;

.field static final NON_STARTERS:Lcom/ibm/icu/text/UnicodeSet;


# instance fields
.field final sourceCache:Lcom/ibm/icu/text/UnicodeSet;

.field final sourceStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final transform:Lcom/ibm/icu/text/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/SourceTargetUtility;->NON_STARTERS:Lcom/ibm/icu/text/UnicodeSet;

    .line 24
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFCInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/SourceTargetUtility;->NFC:Lcom/ibm/icu/text/Normalizer2;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/SourceTargetUtility;-><init>(Lcom/ibm/icu/text/Transform;Lcom/ibm/icu/text/Normalizer2;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/Transform;Lcom/ibm/icu/text/Normalizer2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/text/Normalizer2;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ibm/icu/text/SourceTargetUtility;->transform:Lcom/ibm/icu/text/Transform;

    if-eqz p2, :cond_0

    .line 58
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceCache:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceCache:Lcom/ibm/icu/text/UnicodeSet;

    .line 62
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const v2, 0x10ffff

    if-gt v1, v2, :cond_7

    .line 64
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/ibm/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-static {v1, v2}, Lcom/ibm/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceCache:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-nez p2, :cond_2

    goto :goto_3

    .line 73
    :cond_2
    sget-object v3, Lcom/ibm/icu/text/SourceTargetUtility;->NFC:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 77
    :cond_3
    invoke-interface {p1, v3}, Lcom/ibm/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 79
    iget-object v4, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    .line 84
    :cond_5
    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/Normalizer2;->isInert(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 85
    iget-object v2, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceCache:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceCache:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/Transliterator;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 118
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Transliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 119
    new-instance p2, Lcom/ibm/icu/text/UnicodeSet;

    iget-object v0, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceCache:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p2

    .line 120
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 121
    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/ibm/icu/text/SourceTargetUtility;->transform:Lcom/ibm/icu/text/Transform;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/ibm/icu/text/SourceTargetUtility;->transform:Lcom/ibm/icu/text/Transform;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {p4, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 129
    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    :cond_2
    return-void
.end method
