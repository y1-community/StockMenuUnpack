.class final Lnl/siegmann/epublib/epub/PackageDocumentWriter$1;
.super Ljava/lang/Object;
.source "PackageDocumentWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/siegmann/epublib/epub/PackageDocumentWriter;->getAllResourcesSortById(Lnl/siegmann/epublib/domain/Book;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnl/siegmann/epublib/domain/Resource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lnl/siegmann/epublib/domain/Resource;

    check-cast p2, Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p0, p1, p2}, Lnl/siegmann/epublib/epub/PackageDocumentWriter$1;->compare(Lnl/siegmann/epublib/domain/Resource;Lnl/siegmann/epublib/domain/Resource;)I

    move-result p1

    return p1
.end method

.method public compare(Lnl/siegmann/epublib/domain/Resource;Lnl/siegmann/epublib/domain/Resource;)I
    .locals 0

    .line 113
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
