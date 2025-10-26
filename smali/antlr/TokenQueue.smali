.class Lantlr/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# instance fields
.field private buffer:[Lantlr/Token;

.field protected nbrEntries:I

.field private offset:I

.field private sizeLessOne:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    const/16 p1, 0x10

    .line 25
    invoke-direct {p0, p1}, Lantlr/TokenQueue;->init(I)V

    return-void

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    if-lt p1, v0, :cond_1

    const p1, 0x7fffffff

    .line 30
    invoke-direct {p0, p1}, Lantlr/TokenQueue;->init(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 36
    :cond_2
    invoke-direct {p0, v0}, Lantlr/TokenQueue;->init(I)V

    return-void
.end method

.method private final expand()V
    .locals 4

    .line 59
    iget-object v0, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lantlr/Token;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 63
    :goto_0
    iget-object v3, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lantlr/TokenQueue;->elementAt(I)Lantlr/Token;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iput-object v0, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    .line 68
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/TokenQueue;->sizeLessOne:I

    .line 69
    iput v1, p0, Lantlr/TokenQueue;->offset:I

    return-void
.end method

.method private final init(I)V
    .locals 1

    .line 77
    new-array v0, p1, [Lantlr/Token;

    iput-object v0, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    add-int/lit8 p1, p1, -0x1

    .line 79
    iput p1, p0, Lantlr/TokenQueue;->sizeLessOne:I

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lantlr/TokenQueue;->offset:I

    .line 81
    iput p1, p0, Lantlr/TokenQueue;->nbrEntries:I

    return-void
.end method


# virtual methods
.method public final append(Lantlr/Token;)V
    .locals 4

    .line 43
    iget v0, p0, Lantlr/TokenQueue;->nbrEntries:I

    iget-object v1, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 44
    invoke-direct {p0}, Lantlr/TokenQueue;->expand()V

    .line 46
    :cond_0
    iget-object v0, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    iget v1, p0, Lantlr/TokenQueue;->offset:I

    iget v2, p0, Lantlr/TokenQueue;->nbrEntries:I

    add-int/2addr v1, v2

    iget v3, p0, Lantlr/TokenQueue;->sizeLessOne:I

    and-int/2addr v1, v3

    aput-object p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 47
    iput v2, p0, Lantlr/TokenQueue;->nbrEntries:I

    return-void
.end method

.method public final elementAt(I)Lantlr/Token;
    .locals 2

    .line 54
    iget-object v0, p0, Lantlr/TokenQueue;->buffer:[Lantlr/Token;

    iget v1, p0, Lantlr/TokenQueue;->offset:I

    add-int/2addr v1, p1

    iget p1, p0, Lantlr/TokenQueue;->sizeLessOne:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final removeFirst()V
    .locals 2

    .line 93
    iget v0, p0, Lantlr/TokenQueue;->offset:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lantlr/TokenQueue;->sizeLessOne:I

    and-int/2addr v0, v1

    iput v0, p0, Lantlr/TokenQueue;->offset:I

    .line 94
    iget v0, p0, Lantlr/TokenQueue;->nbrEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/TokenQueue;->nbrEntries:I

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lantlr/TokenQueue;->offset:I

    .line 88
    iput v0, p0, Lantlr/TokenQueue;->nbrEntries:I

    return-void
.end method
