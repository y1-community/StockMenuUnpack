.class final Lnl/siegmann/epublib/domain/TOCReference$1;
.super Ljava/lang/Object;
.source "TOCReference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/siegmann/epublib/domain/TOCReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnl/siegmann/epublib/domain/TOCReference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lnl/siegmann/epublib/domain/TOCReference;

    check-cast p2, Lnl/siegmann/epublib/domain/TOCReference;

    invoke-virtual {p0, p1, p2}, Lnl/siegmann/epublib/domain/TOCReference$1;->compare(Lnl/siegmann/epublib/domain/TOCReference;Lnl/siegmann/epublib/domain/TOCReference;)I

    move-result p1

    return p1
.end method

.method public compare(Lnl/siegmann/epublib/domain/TOCReference;Lnl/siegmann/epublib/domain/TOCReference;)I
    .locals 1

    .line 27
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/TOCReference;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/TOCReference;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
