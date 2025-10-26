.class public Linfo/monitorenter/cpdetector/io/JarArchive;
.super Ljava/io/File;
.source "JarArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;
    }
.end annotation


# instance fields
.field protected childs:Ljava/util/Set;

.field protected jar:Ljava/util/jar/JarFile;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Linfo/monitorenter/cpdetector/io/JarArchive$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Linfo/monitorenter/cpdetector/io/JarArchive;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    .line 93
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/JarArchive;->parseTree()Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    move-result-object p1

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "tree:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1, p0}, Linfo/monitorenter/cpdetector/io/JarArchive;->buildTree(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;Linfo/monitorenter/cpdetector/io/JarArchive;)V

    return-void
.end method

.method private getSearchPath(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 166
    invoke-interface {p1, v0}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getUserObjectPathFromRoot(Ljava/util/List;)V

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseTree()Linfo/monitorenter/cpdetector/util/collections/ITreeNode;
    .locals 6

    .line 113
    new-instance v0, Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;-><init>()V

    .line 115
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 121
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "/"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 123
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 125
    new-instance v5, Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;

    invoke-direct {v5, v4}, Linfo/monitorenter/cpdetector/util/collections/TreeNodeUniqueChildren;-><init>(Ljava/lang/Object;)V

    .line 126
    invoke-interface {v2, v5}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->addChildNode(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Z

    move-object v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected buildTree(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;Linfo/monitorenter/cpdetector/io/JarArchive;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/monitorenter/cpdetector/util/collections/ITreeNode;

    .line 143
    invoke-direct {p0, p2}, Linfo/monitorenter/cpdetector/io/JarArchive;->getSearchPath(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;)Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Searching for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")is null!!!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;

    invoke-direct {v0, p0, v1, p0}, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;-><init>(Linfo/monitorenter/cpdetector/io/JarArchive;Ljava/util/jar/JarEntry;Ljava/io/File;)V

    .line 151
    invoke-virtual {v0, p2, p0}, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->buildTree(Linfo/monitorenter/cpdetector/util/collections/ITreeNode;Linfo/monitorenter/cpdetector/io/JarArchive;)V

    .line 152
    iget-object p2, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has finished building..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public canRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public compareTo(Ljava/io/File;)I
    .locals 0

    .line 213
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/JarArchive;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public createNewFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public delete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteOnExit()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 252
    invoke-super {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 1

    .line 272
    invoke-super {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-super {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-super {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 313
    invoke-super {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 324
    invoke-super {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 1

    .line 334
    invoke-super {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 344
    invoke-super {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 354
    invoke-super {p0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 364
    invoke-super {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 404
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 414
    invoke-super {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 4

    .line 424
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 425
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 426
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 5

    .line 439
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 440
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 442
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 444
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public listFiles()[Ljava/io/File;
    .locals 4

    .line 458
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    .line 459
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 460
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 4

    .line 473
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 474
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 478
    invoke-interface {p1, v2}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/io/File;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    check-cast p1, [Ljava/io/File;

    return-object p1
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 5

    .line 492
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 493
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/JarArchive;->childs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 495
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/io/File;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    check-cast p1, [Ljava/io/File;

    return-object p1
.end method

.method public mkdir()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mkdirs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setLastModified(J)Z
    .locals 0

    .line 541
    invoke-super {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    return p1
.end method

.method public setReadOnly()Z
    .locals 1

    .line 551
    invoke-super {p0}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 561
    invoke-super {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 1

    .line 571
    invoke-super {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 581
    invoke-super {p0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
