.class public Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;
.super Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;
.source "TreeNodeUniqueChildren.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addChildNode(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 110
    invoke-interface {p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getUserObject()Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;->getChilds()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    .line 116
    invoke-interface {v1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getUserObject()Ljava/lang/Object;

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    check-cast v0, [Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    invoke-interface {p1, v0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->addChildNodes([Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z

    .line 122
    invoke-interface {p1, p0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->setParent(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)V

    .line 124
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;->removeChild(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z

    .line 128
    :cond_1
    invoke-super {p0, p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode$DefaultTreeNode;->addChildNode(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z

    move-result p1

    return p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument node is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
