.class public Lcom/ibm/icu/impl/Row;
.super Ljava/lang/Object;
.source "Row.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/Row$R5;,
        Lcom/ibm/icu/impl/Row$R4;,
        Lcom/ibm/icu/impl/Row$R3;,
        Lcom/ibm/icu/impl/Row$R2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        "C2:",
        "Ljava/lang/Object;",
        "C3:",
        "Ljava/lang/Object;",
        "C4:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;",
        "Ljava/lang/Cloneable;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/impl/Row<",
        "TC0;TC1;TC2;TC3;TC4;>;>;"
    }
.end annotation


# instance fields
.field protected volatile frozen:Z

.field protected items:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/ibm/icu/impl/Row$R2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;)",
            "Lcom/ibm/icu/impl/Row$R2<",
            "TC0;TC1;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ibm/icu/impl/Row$R2;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/Row$R2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ibm/icu/impl/Row$R3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;)",
            "Lcom/ibm/icu/impl/Row$R3<",
            "TC0;TC1;TC2;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/ibm/icu/impl/Row$R3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/Row$R3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ibm/icu/impl/Row$R4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            "C3:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;TC3;)",
            "Lcom/ibm/icu/impl/Row$R4<",
            "TC0;TC1;TC2;TC3;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/ibm/icu/impl/Row$R4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ibm/icu/impl/Row$R4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/ibm/icu/impl/Row$R5;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            "C3:",
            "Ljava/lang/Object;",
            "C4:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;TC3;TC4;)",
            "Lcom/ibm/icu/impl/Row$R5<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 37
    new-instance v6, Lcom/ibm/icu/impl/Row$R5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/Row$R5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Row;->frozen:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 182
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Row;

    .line 183
    iget-object v1, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/impl/Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Row;

    .line 194
    iget-object v1, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 195
    iput-boolean v1, v0, Lcom/ibm/icu/impl/Row;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Row;->cloneAsThawed()Lcom/ibm/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 137
    check-cast p1, Lcom/ibm/icu/impl/Row;

    .line 138
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p1, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v1

    .line 143
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 144
    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p1, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    aget-object v4, v6, v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-static {v5, v4}, Lcom/ibm/icu/impl/Utility;->checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 118
    :cond_1
    :try_start_0
    check-cast p1, Lcom/ibm/icu/impl/Row;

    .line 119
    iget-object v2, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v3, v2

    iget-object v4, p1, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    return v0

    .line 123
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    .line 124
    iget-object v7, p1, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aget-object v5, v7, v5

    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    :cond_4
    return v1

    :catch_0
    return v0
.end method

.method public freeze()Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/ibm/icu/impl/Row;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Row;->freeze()Lcom/ibm/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public get0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC0;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get1()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC1;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get2()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC2;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get3()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC3;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get4()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC4;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v1, v0

    .line 103
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    mul-int/lit8 v1, v1, 0x25

    .line 104
    invoke-static {v4}, Lcom/ibm/icu/impl/Utility;->checkHash(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isFrozen()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Row;->frozen:Z

    return v0
.end method

.method protected set(ILjava/lang/Object;)Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Row;->frozen:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object p0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify frozen object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set0(Ljava/lang/Object;)Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;)",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Row;->set(ILjava/lang/Object;)Lcom/ibm/icu/impl/Row;

    move-result-object p1

    return-object p1
.end method

.method public set1(Ljava/lang/Object;)Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC1;)",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Row;->set(ILjava/lang/Object;)Lcom/ibm/icu/impl/Row;

    move-result-object p1

    return-object p1
.end method

.method public set2(Ljava/lang/Object;)Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC2;)",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Row;->set(ILjava/lang/Object;)Lcom/ibm/icu/impl/Row;

    move-result-object p1

    return-object p1
.end method

.method public set3(Ljava/lang/Object;)Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC3;)",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Row;->set(ILjava/lang/Object;)Lcom/ibm/icu/impl/Row;

    move-result-object p1

    return-object p1
.end method

.method public set4(Ljava/lang/Object;)Lcom/ibm/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC4;)",
            "Lcom/ibm/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Row;->set(ILjava/lang/Object;)Lcom/ibm/icu/impl/Row;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/ibm/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const-string v7, ", "

    .line 160
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
