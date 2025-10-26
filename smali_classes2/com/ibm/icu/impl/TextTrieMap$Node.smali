.class Lcom/ibm/icu/impl/TextTrieMap$Node;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;>;"
        }
    .end annotation
.end field

.field private _text:[C

.field private _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ibm/icu/impl/TextTrieMap;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;Lcom/ibm/icu/impl/TextTrieMap$1;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/List<",
            "TV;>;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;>;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    .line 247
    iput-object p3, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 248
    iput-object p4, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    return-void
.end method

.method private add([CILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CITV;)V"
        }
    .end annotation

    .line 318
    array-length v0, p1

    if-ne v0, p2, :cond_0

    .line 319
    iget-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 325
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$Node;

    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/TextTrieMap;->access$300([CI)[C

    move-result-object p1

    invoke-direct {p0, v1, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v2, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    .line 326
    iget-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 331
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 332
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 333
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 334
    aget-char v3, p1, p2

    iget-object v4, v2, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v5, 0x0

    aget-char v6, v4, v5

    if-ge v3, v6, :cond_3

    .line 335
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_1

    .line 338
    :cond_3
    aget-char v3, p1, p2

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_2

    .line 339
    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->lenMatches([CI)I

    move-result v0

    .line 340
    iget-object v1, v2, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v1, v1

    if-ne v0, v1, :cond_4

    add-int/2addr p2, v0

    .line 342
    invoke-direct {v2, p1, p2, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_4
    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/TextTrieMap$Node;->split(I)V

    add-int/2addr p2, v0

    .line 346
    invoke-direct {v2, p1, p2, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    :goto_0
    return-void

    .line 352
    :cond_5
    :goto_1
    new-instance v2, Lcom/ibm/icu/impl/TextTrieMap$Node;

    iget-object v3, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/TextTrieMap;->access$300([CI)[C

    move-result-object p1

    invoke-direct {p0, v1, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, v3, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;TV;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 404
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 406
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private lenMatches([CI)I
    .locals 4

    .line 377
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 378
    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v2, v1

    if-ge v2, v0, :cond_0

    array-length v0, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 381
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v2, v2, v1

    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private matchFollowing(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Lcom/ibm/icu/impl/TextTrieMap$Output;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 359
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    .line 361
    iput-boolean v0, p2, Lcom/ibm/icu/impl/TextTrieMap$Output;->partialMatch:Z

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v4, v1

    if-eq v2, v4, :cond_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method private split(I)V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->access$300([CI)[C

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/impl/TextTrieMap;->access$400([CII)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    .line 395
    new-instance p1, Lcom/ibm/icu/impl/TextTrieMap$Node;

    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    iget-object v3, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 398
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 399
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/TextTrieMap$CharIterator;",
            "TV;)V"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/TextTrieMap;->access$200(Ljava/lang/CharSequence;)[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    return-void
.end method

.method public charCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public findMatch(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Lcom/ibm/icu/impl/TextTrieMap$Output;)Lcom/ibm/icu/impl/TextTrieMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/TextTrieMap$CharIterator;",
            "Lcom/ibm/icu/impl/TextTrieMap$Output;",
            ")",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p2, Lcom/ibm/icu/impl/TextTrieMap$Output;->partialMatch:Z

    :cond_1
    return-object v1

    .line 281
    :cond_2
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 283
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v3, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    if-ge v4, v5, :cond_4

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v3, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_3

    .line 287
    invoke-direct {v3, p1, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->matchFollowing(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Lcom/ibm/icu/impl/TextTrieMap$Output;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v1, v3

    :cond_5
    :goto_0
    return-object v1
.end method

.method public putLeadCodePoints(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 6

    .line 297
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 301
    iget-object v2, v1, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    .line 302
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v1}, Lcom/ibm/icu/impl/TextTrieMap$Node;->charCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 305
    iget-object v1, v1, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 306
    :cond_3
    iget-object v1, v1, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 309
    iget-object v4, v4, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v4, v3

    .line 310
    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 311
    invoke-virtual {p1, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public values()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
