.class public final Linfo/monitorenter/util/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field private final m_key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private m_value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Linfo/monitorenter/util/Entry;->m_key:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 99
    :cond_2
    check-cast p1, Linfo/monitorenter/util/Entry;

    .line 100
    iget-object v2, p0, Linfo/monitorenter/util/Entry;->m_key:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 101
    iget-object v2, p1, Linfo/monitorenter/util/Entry;->m_key:Ljava/lang/Object;

    if-eqz v2, :cond_4

    return v1

    .line 104
    :cond_3
    iget-object v3, p1, Linfo/monitorenter/util/Entry;->m_key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 107
    :cond_4
    iget-object v2, p0, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 108
    iget-object p1, p1, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    if-eqz p1, :cond_6

    return v1

    .line 111
    :cond_5
    iget-object p1, p1, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Linfo/monitorenter/util/Entry;->m_key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 142
    iget-object v0, p0, Linfo/monitorenter/util/Entry;->m_key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v2, p0, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Linfo/monitorenter/util/Entry;->m_value:Ljava/lang/Object;

    return-object v0
.end method
