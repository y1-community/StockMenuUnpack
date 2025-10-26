.class public final Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;
.super Ljava/lang/Object;
.source "EpubChapterInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpubChapterInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpubChapterInfo.kt\ncom/innioasis/y1_eBook/utils/epub/EpubChapterInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,154:1\n1860#2,3:155\n*S KotlinDebug\n*F\n+ 1 EpubChapterInfo.kt\ncom/innioasis/y1_eBook/utils/epub/EpubChapterInfo\n*L\n93#1:155,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u0003J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J&\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u001cH\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;",
        "",
        "epubFilePath",
        "",
        "(Ljava/lang/String;)V",
        "book",
        "Lnl/siegmann/epublib/domain/Book;",
        "getBook",
        "()Lnl/siegmann/epublib/domain/Book;",
        "setBook",
        "(Lnl/siegmann/epublib/domain/Book;)V",
        "chapterList",
        "",
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
        "getChapterList",
        "()Ljava/util/List;",
        "chapterList$delegate",
        "Lkotlin/Lazy;",
        "epubReader",
        "Lnl/siegmann/epublib/epub/EpubReader;",
        "getEpubReader",
        "()Lnl/siegmann/epublib/epub/EpubReader;",
        "setEpubReader",
        "(Lnl/siegmann/epublib/epub/EpubReader;)V",
        "getChapterContent",
        "href",
        "getChapterContentByIndex",
        "index",
        "",
        "getImageByUrl",
        "Ljava/io/InputStream;",
        "url",
        "parseEpubChapters",
        "processTocRef",
        "ref",
        "Lnl/siegmann/epublib/domain/TOCReference;",
        "depth",
        "position",
        "ChapterInfo",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public book:Lnl/siegmann/epublib/domain/Book;

.field private final chapterList$delegate:Lkotlin/Lazy;

.field private epubReader:Lnl/siegmann/epublib/epub/EpubReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const-string v0, "epubFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lnl/siegmann/epublib/epub/EpubReader;

    invoke-direct {v0}, Lnl/siegmann/epublib/epub/EpubReader;-><init>()V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->epubReader:Lnl/siegmann/epublib/epub/EpubReader;

    .line 26
    new-instance v0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$chapterList$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$chapterList$2;-><init>(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->chapterList$delegate:Lkotlin/Lazy;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    new-instance v2, Lnl/siegmann/epublib/epub/EpubReader;

    invoke-direct {v2}, Lnl/siegmann/epublib/epub/EpubReader;-><init>()V

    iput-object v2, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->epubReader:Lnl/siegmann/epublib/epub/EpubReader;

    .line 42
    new-instance v3, Lnet/sf/jazzlib/ZipFile;

    invoke-direct {v3, p1}, Lnet/sf/jazzlib/ZipFile;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-virtual {v2, v3, p1}, Lnl/siegmann/epublib/epub/EpubReader;->readEpubLazy(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    const-string v2, "epubReader.readEpubLazy(\u2026e(epubFilePath), \"UTF-8\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->setBook(Lnl/siegmann/epublib/domain/Book;)V

    .line 44
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790EPUB\u6587\u4ef6\u8017\u65f6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$parseEpubChapters(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;)Ljava/util/List;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->parseEpubChapters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final parseEpubChapters()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Book;->getTableOfContents()Lnl/siegmann/epublib/domain/TableOfContents;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/TableOfContents;->getTocReferences()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v6, Lnl/siegmann/epublib/domain/TOCReference;

    const-string v8, "ref"

    .line 59
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, v3, v5}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->processTocRef(Lnl/siegmann/epublib/domain/TOCReference;II)Ljava/util/List;

    move-result-object v5

    .line 58
    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move v5, v7

    goto :goto_0

    :cond_1
    check-cast v4, Ljava/util/List;

    goto :goto_1

    .line 61
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 63
    :goto_1
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790EPUB\u7ae0\u8282\u8017\u65f6:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method private final processTocRef(Lnl/siegmann/epublib/domain/TOCReference;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            "II)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 84
    new-instance v1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;

    .line 85
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/TOCReference;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 86
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/TOCReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ref.resource.href"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {v1, v2, v3, p2, p3}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    const/4 p3, 0x0

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    if-gez p3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Lnl/siegmann/epublib/domain/TOCReference;

    const-string v3, "childRef"

    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v1, v3, p3}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->processTocRef(Lnl/siegmann/epublib/domain/TOCReference;II)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 94
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p3, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final getBook()Lnl/siegmann/epublib/domain/Book;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->book:Lnl/siegmann/epublib/domain/Book;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "book"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChapterContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "href"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 112
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getData()[B

    move-result-object p1

    const-string v0, "resource.data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final getChapterContentByIndex(I)Ljava/lang/String;
    .locals 6

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getChapterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;

    .line 125
    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getChapterContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790EPUB\u5185\u5bb9\u8017\u65f6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getChapterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->chapterList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getEpubReader()Lnl/siegmann/epublib/epub/EpubReader;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->epubReader:Lnl/siegmann/epublib/epub/EpubReader;

    return-object v0
.end method

.method public final getImageByUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "file:///android_assets/"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 141
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setBook(Lnl/siegmann/epublib/domain/Book;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->book:Lnl/siegmann/epublib/domain/Book;

    return-void
.end method

.method public final setEpubReader(Lnl/siegmann/epublib/epub/EpubReader;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->epubReader:Lnl/siegmann/epublib/epub/EpubReader;

    return-void
.end method
