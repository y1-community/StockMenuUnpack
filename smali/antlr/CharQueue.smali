.class public Lantlr/CharQueue;
.super Ljava/lang/Object;
.source "CharQueue.java"


# instance fields
.field protected buffer:[C

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
    invoke-virtual {p0, p1}, Lantlr/CharQueue;->init(I)V

    return-void

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    if-lt p1, v0, :cond_1

    const p1, 0x7fffffff

    .line 30
    invoke-virtual {p0, p1}, Lantlr/CharQueue;->init(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/CharQueue;->init(I)V

    return-void
.end method

.method private final expand()V
    .locals 4

    .line 58
    iget-object v0, p0, Lantlr/CharQueue;->buffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    iget-object v3, p0, Lantlr/CharQueue;->buffer:[C

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lantlr/CharQueue;->elementAt(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iput-object v0, p0, Lantlr/CharQueue;->buffer:[C

    .line 67
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CharQueue;->sizeLessOne:I

    .line 68
    iput v1, p0, Lantlr/CharQueue;->offset:I

    return-void
.end method


# virtual methods
.method public final append(C)V
    .locals 4

    .line 42
    iget v0, p0, Lantlr/CharQueue;->nbrEntries:I

    iget-object v1, p0, Lantlr/CharQueue;->buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-direct {p0}, Lantlr/CharQueue;->expand()V

    .line 45
    :cond_0
    iget-object v0, p0, Lantlr/CharQueue;->buffer:[C

    iget v1, p0, Lantlr/CharQueue;->offset:I

    iget v2, p0, Lantlr/CharQueue;->nbrEntries:I

    add-int/2addr v1, v2

    iget v3, p0, Lantlr/CharQueue;->sizeLessOne:I

    and-int/2addr v1, v3

    aput-char p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 46
    iput v2, p0, Lantlr/CharQueue;->nbrEntries:I

    return-void
.end method

.method public final elementAt(I)C
    .locals 2

    .line 53
    iget-object v0, p0, Lantlr/CharQueue;->buffer:[C

    iget v1, p0, Lantlr/CharQueue;->offset:I

    add-int/2addr v1, p1

    iget p1, p0, Lantlr/CharQueue;->sizeLessOne:I

    and-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1
.end method

.method public init(I)V
    .locals 1

    .line 76
    new-array v0, p1, [C

    iput-object v0, p0, Lantlr/CharQueue;->buffer:[C

    add-int/lit8 p1, p1, -0x1

    .line 78
    iput p1, p0, Lantlr/CharQueue;->sizeLessOne:I

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lantlr/CharQueue;->offset:I

    .line 80
    iput p1, p0, Lantlr/CharQueue;->nbrEntries:I

    return-void
.end method

.method public final removeFirst()V
    .locals 2

    .line 92
    iget v0, p0, Lantlr/CharQueue;->offset:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lantlr/CharQueue;->sizeLessOne:I

    and-int/2addr v0, v1

    iput v0, p0, Lantlr/CharQueue;->offset:I

    .line 93
    iget v0, p0, Lantlr/CharQueue;->nbrEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CharQueue;->nbrEntries:I

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lantlr/CharQueue;->offset:I

    .line 87
    iput v0, p0, Lantlr/CharQueue;->nbrEntries:I

    return-void
.end method
