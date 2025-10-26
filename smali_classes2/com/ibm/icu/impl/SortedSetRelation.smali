.class public Lcom/ibm/icu/impl/SortedSetRelation;
.super Ljava/lang/Object;
.source "SortedSetRelation.java"


# static fields
.field public static final A:I = 0x6

.field public static final ADDALL:I = 0x7

.field public static final ANY:I = 0x7

.field public static final A_AND_B:I = 0x2

.field public static final A_NOT_B:I = 0x4

.field public static final B:I = 0x3

.field public static final B_NOT_A:I = 0x1

.field public static final B_REMOVEALL:I = 0x1

.field public static final COMPLEMENTALL:I = 0x5

.field public static final CONTAINS:I = 0x6

.field public static final DISJOINT:I = 0x5

.field public static final EQUALS:I = 0x2

.field public static final ISCONTAINED:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NO_A:I = 0x1

.field public static final NO_B:I = 0x4

.field public static final REMOVEALL:I = 0x4

.field public static final RETAINALL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/SortedSet<",
            "TT;>;I",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "+TT;>;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :pswitch_0
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :pswitch_1
    return-object p0

    .line 164
    :pswitch_2
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 165
    invoke-virtual {p1, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 166
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 167
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 156
    :pswitch_3
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    return-object p0

    .line 152
    :pswitch_4
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 153
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 159
    :pswitch_5
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    return-object p0

    .line 170
    :pswitch_6
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 171
    invoke-virtual {p1, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 172
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 173
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 176
    :pswitch_7
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/SortedSet<",
            "TT;>;I",
            "Ljava/util/SortedSet<",
            "TT;>;)Z"
        }
    .end annotation

    if-ltz p1, :cond_14

    const/4 v0, 0x7

    if-gt p1, v0, :cond_14

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x2

    if-eq p1, v5, :cond_5

    const/4 v5, 0x3

    if-eq p1, v5, :cond_4

    const/4 v5, 0x6

    if-eq p1, v5, :cond_3

    goto :goto_3

    .line 86
    :cond_3
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-ge p1, v5, :cond_6

    return v2

    .line 87
    :cond_4
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-le p1, v5, :cond_6

    return v2

    .line 88
    :cond_5
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-eq p1, v5, :cond_6

    return v2

    .line 92
    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 93
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v4

    .line 95
    :cond_8
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result p1

    if-nez p1, :cond_9

    return v0

    .line 100
    :cond_9
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 101
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 104
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 107
    :goto_4
    move-object v6, p1

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v6, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_e

    if-nez v3, :cond_a

    return v2

    .line 110
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_c

    .line 111
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_b

    return v1

    :cond_b
    return v4

    .line 113
    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    .line 116
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 117
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_e
    if-gez v6, :cond_11

    if-nez v0, :cond_f

    return v2

    .line 120
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_10

    return v4

    .line 123
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_11
    if-nez v4, :cond_12

    return v2

    .line 126
    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_13

    return v0

    .line 129
    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 74
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method
