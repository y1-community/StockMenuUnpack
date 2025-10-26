.class public Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;
.super Ljava/lang/Object;
.source "ITreeNode.java"

# interfaces
.implements Linfo/monitorenter/cpdetector/util/collections/ITreeNode;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/monitorenter/cpdetector/util/collections/ITreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/monitorenter/cpdetector/util/collections/ITreeNode;",
        "Ljava/lang/Comparable<",
        "Linfo/monitorenter/cpdetector/util/collections/ITreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field protected m_children:Ljava/util/SortedSet;

.field m_parent:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

.field protected m_userObject:Ljava/lang/Object;

.field protected marked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->marked:Z

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_userObject:Ljava/lang/Object;

    .line 460
    iput-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_parent:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    .line 475
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_children:Ljava/util/SortedSet;

    const-string v0, "root"

    .line 476
    iput-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_userObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;-><init>()V

    .line 490
    iput-object p1, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_userObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addChildNode(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 588
    :cond_0
    invoke-interface {p1, p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->setParent(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)V

    .line 589
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_children:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final addChildNodes([Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 859
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 860
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->addChildNode(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public compareTo(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_userObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 426
    check-cast p1, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->compareTo(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 441
    instance-of v0, p1, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 442
    check-cast p1, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;

    .line 443
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    .line 444
    invoke-virtual {p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    move v1, p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final getAllChildren()Ljava/util/List;
    .locals 2

    .line 890
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_children:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getChilds()Ljava/util/Iterator;
    .locals 1

    .line 651
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_children:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Linfo/monitorenter/cpdetector/util/collections/ITreeNode;
    .locals 1

    .line 660
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_parent:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    if-nez v0, :cond_0

    sget-object v0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->ROOT:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    :cond_0
    return-object v0
.end method

.method public getPathFromRoot(Ljava/util/List;)V
    .locals 1

    .line 903
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->getParent()Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    move-result-object v0

    invoke-interface {v0, p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getPathFromRoot(Ljava/util/List;)V

    .line 907
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final getUserObject()Ljava/lang/Object;
    .locals 1

    .line 690
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserObjectPathFromRoot(Ljava/util/List;)V
    .locals 2

    .line 917
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 918
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->getPathFromRoot(Ljava/util/List;)V

    .line 919
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 920
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    invoke-interface {v1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isLeaf()Z
    .locals 1

    .line 816
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_children:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRoot()Z
    .locals 1

    .line 825
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_parent:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeChild(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z
    .locals 1

    .line 773
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_children:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setParent(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)V
    .locals 1

    .line 802
    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_parent:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    if-eqz v0, :cond_0

    .line 804
    invoke-interface {v0, p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->removeChild(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z

    .line 806
    :cond_0
    iput-object p1, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_parent:Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    .line 831
    invoke-virtual {p0, v0, v1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->toStringInternal(Ljava/lang/StringBuffer;I)V

    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringInternal(Ljava/lang/StringBuffer;I)V
    .locals 4

    .line 836
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-> "

    .line 837
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v0, 0x28

    .line 839
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->m_userObject:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 840
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p2

    :goto_0
    if-lez v1, :cond_1

    const-string v2, "  "

    .line 842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->getChilds()Ljava/util/Iterator;

    move-result-object v1

    .line 846
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\n"

    .line 847
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->toStringInternal(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    :cond_2
    return-void
.end method
