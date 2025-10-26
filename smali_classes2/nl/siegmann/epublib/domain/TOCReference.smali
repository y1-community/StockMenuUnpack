.class public Lnl/siegmann/epublib/domain/TOCReference;
.super Lnl/siegmann/epublib/domain/TitledResourceReference;
.source "TOCReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COMPARATOR_BY_TITLE_IGNORE_CASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5052f55be0370f18L


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lnl/siegmann/epublib/domain/TOCReference$1;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/TOCReference$1;-><init>()V

    sput-object v0, Lnl/siegmann/epublib/domain/TOCReference;->COMPARATOR_BY_TITLE_IGNORE_CASE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0, v0}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/domain/Resource;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p2, p1, p3}, Lnl/siegmann/epublib/domain/TitledResourceReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p4, p0, Lnl/siegmann/epublib/domain/TOCReference;->children:Ljava/util/List;

    return-void
.end method

.method public static getComparatorByTitleIgnoreCase()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lnl/siegmann/epublib/domain/TOCReference;->COMPARATOR_BY_TITLE_IGNORE_CASE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public addChildSection(Lnl/siegmann/epublib/domain/TOCReference;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 1

    .line 57
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TOCReference;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TOCReference;->children:Ljava/util/List;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lnl/siegmann/epublib/domain/TOCReference;->children:Ljava/util/List;

    return-void
.end method
