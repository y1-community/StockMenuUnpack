.class public Lantlr/ANTLRHashString;
.super Ljava/lang/Object;
.source "ANTLRHashString.java"


# static fields
.field private static final prime:I = 0x97


# instance fields
.field private buf:[C

.field private len:I

.field private lexer:Lantlr/CharScanner;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/CharScanner;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lantlr/CharScanner;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    .line 35
    invoke-virtual {p0, p1}, Lantlr/ANTLRHashString;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([CILantlr/CharScanner;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    .line 25
    invoke-virtual {p0, p1, p2}, Lantlr/ANTLRHashString;->setBuffer([CI)V

    return-void
.end method

.method private final charAt(I)C
    .locals 1

    .line 39
    iget-object v0, p0, Lantlr/ANTLRHashString;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lantlr/ANTLRHashString;->buf:[C

    aget-char p1, v0, p1

    :goto_0
    return p1
.end method

.method private final length()I
    .locals 1

    .line 94
    iget-object v0, p0, Lantlr/ANTLRHashString;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lantlr/ANTLRHashString;->len:I

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 44
    instance-of v0, p1, Lantlr/ANTLRHashString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lantlr/ANTLRHashString;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    invoke-direct {v0, p1, v2}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    goto :goto_0

    .line 53
    :cond_1
    move-object v0, p1

    check-cast v0, Lantlr/ANTLRHashString;

    .line 55
    :goto_0
    invoke-direct {p0}, Lantlr/ANTLRHashString;->length()I

    move-result p1

    .line 56
    invoke-direct {v0}, Lantlr/ANTLRHashString;->length()I

    move-result v2

    if-eq v2, p1, :cond_2

    return v1

    .line 59
    :cond_2
    iget-object v2, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    invoke-virtual {v2}, Lantlr/CharScanner;->getCaseSensitiveLiterals()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_6

    .line 61
    invoke-direct {p0, v2}, Lantlr/ANTLRHashString;->charAt(I)C

    move-result v3

    invoke-direct {v0, v2}, Lantlr/ANTLRHashString;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_6

    .line 68
    iget-object v3, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    invoke-direct {p0, v2}, Lantlr/ANTLRHashString;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/CharScanner;->toLower(C)C

    move-result v3

    iget-object v4, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    invoke-direct {v0, v2}, Lantlr/ANTLRHashString;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/CharScanner;->toLower(C)C

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 78
    invoke-direct {p0}, Lantlr/ANTLRHashString;->length()I

    move-result v0

    .line 80
    iget-object v1, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    invoke-virtual {v1}, Lantlr/CharScanner;->getCaseSensitiveLiterals()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit16 v1, v1, 0x97

    .line 82
    invoke-direct {p0, v2}, Lantlr/ANTLRHashString;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    mul-int/lit16 v1, v1, 0x97

    .line 87
    iget-object v3, p0, Lantlr/ANTLRHashString;->lexer:Lantlr/CharScanner;

    invoke-direct {p0, v2}, Lantlr/ANTLRHashString;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/CharScanner;->toLower(C)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public setBuffer([CI)V
    .locals 0

    .line 98
    iput-object p1, p0, Lantlr/ANTLRHashString;->buf:[C

    .line 99
    iput p2, p0, Lantlr/ANTLRHashString;->len:I

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lantlr/ANTLRHashString;->s:Ljava/lang/String;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lantlr/ANTLRHashString;->s:Ljava/lang/String;

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lantlr/ANTLRHashString;->buf:[C

    return-void
.end method
