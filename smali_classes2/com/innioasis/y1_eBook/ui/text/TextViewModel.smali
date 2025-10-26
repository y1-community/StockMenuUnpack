.class public final Lcom/innioasis/y1_eBook/ui/text/TextViewModel;
.super Lcom/innioasis/y1_eBook/base/BaseViewModel;
.source "TextViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "Lcom/innioasis/y1_eBook/ui/text/TextState;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0005\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u00162\u0008\u0008\u0002\u0010 \u001a\u00020\u0016H\u0002J \u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\"\u001a\u00020\u00162\u0008\u0008\u0002\u0010 \u001a\u00020\u0016H\u0002J!\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J\u0014\u0010\'\u001a\u00020\u0016*\u00020\u00182\u0006\u0010(\u001a\u00020)H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextViewModel;",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "book",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "isLoading",
        "",
        "mutableSharedFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "getMutableSharedFlow",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "collect",
        "",
        "it",
        "(Lcom/innioasis/y1_eBook/ui/text/TextIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findFirstLineBreak",
        "",
        "bytes",
        "",
        "getImage",
        "url",
        "",
        "getLastContext",
        "",
        "Lcom/innioasis/y1_eBook/ui/text/TextItem;",
        "startIndex",
        "maxLines",
        "getNextContext",
        "endIndex",
        "saveProgress",
        "i",
        "offset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "indexOf",
        "byte",
        "",
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
.field private book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

.field private charset:Ljava/nio/charset/Charset;

.field private isLoading:Z

.field private final mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/text/TextState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1_eBook/base/BaseViewModel;-><init>(Landroid/app/Application;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 21
    invoke-static {v0, v1, p1, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    const-string p1, "UTF-8"

    .line 29
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "forName(\"UTF-8\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static final synthetic access$saveProgress(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->saveProgress(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getImage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final getLastContext(II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/ui/text/TextItem;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 200
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 201
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-int v0, v2

    .line 204
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    if-gez p1, :cond_3

    .line 205
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 207
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 209
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v3, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v6, v3

    check-cast v6, Ljava/io/RandomAccessFile;

    add-int/lit8 v7, p1, 0x1

    .line 210
    new-array v8, v7, [B

    .line 211
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 212
    invoke-virtual {v6, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_5

    .line 216
    aget-byte v6, v8, v5

    const/16 v9, 0xa

    if-ne v6, v9, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, -0x1

    .line 221
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    add-int/lit8 v6, v6, 0x1

    const-string v10, "pos"

    .line 223
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v6, v10, :cond_6

    .line 224
    new-instance v11, Lkotlin/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v11, v6, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 228
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 229
    new-instance v4, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v4, v6, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_8
    move-object v6, v4

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ge v6, p1, :cond_9

    .line 231
    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-gt v4, p1, :cond_9

    .line 233
    new-instance v6, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v6, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_9
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 238
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    const-string p2, "ranges.subList(startIndexOfTake, ranges.size)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/lit8 v4, p2, 0x1

    .line 240
    invoke-static {v8, v0, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    .line 241
    iget-object v6, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 242
    new-instance v4, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    invoke-direct {v4, v5, v0, p2}, Lcom/innioasis/y1_eBook/ui/text/TextItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 244
    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method static synthetic getLastContext$default(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x64

    .line 195
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getLastContext(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getNextContext(II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/ui/text/TextItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 131
    iget-object v3, v1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 137
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v6, Ljava/io/Closeable;

    const/4 v4, 0x0

    :try_start_0
    move-object v7, v6

    check-cast v7, Ljava/io/RandomAccessFile;

    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 139
    invoke-virtual {v3}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getProgress()I

    move-result v0

    :cond_2
    int-to-long v9, v0

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gez v0, :cond_3

    move-wide v9, v11

    .line 141
    :cond_3
    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    long-to-int v3, v9

    .line 145
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v10, v2, :cond_8

    .line 148
    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "carryBytes"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v10, v8, :cond_5

    .line 151
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 152
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    if-nez v2, :cond_4

    const/4 v12, 0x1

    :cond_4
    xor-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/String;

    .line 153
    iget-object v7, v1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 154
    array-length v0, v0

    add-int/2addr v0, v3

    sub-int/2addr v0, v13

    .line 155
    new-instance v7, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    invoke-direct {v7, v2, v3, v0}, Lcom/innioasis/y1_eBook/ui/text/TextItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_5
    invoke-virtual {v9, v0, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 164
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 165
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0xa

    invoke-direct {v1, v10, v14}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->indexOf([BB)I

    move-result v15

    :goto_1
    if-eq v15, v8, :cond_7

    .line 166
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v2, :cond_7

    add-int/lit8 v15, v15, 0x1

    .line 169
    invoke-static {v10, v12, v15}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    .line 170
    iget-object v12, v1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    add-int v8, v3, v15

    sub-int/2addr v8, v13

    .line 172
    new-instance v12, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    invoke-direct {v12, v9, v3, v8}, Lcom/innioasis/y1_eBook/ui/text/TextItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v8, 0x1

    .line 176
    array-length v8, v10

    sub-int/2addr v8, v15

    .line 177
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-lez v8, :cond_6

    .line 178
    invoke-virtual {v9, v10, v15, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 180
    :cond_6
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 181
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v10, v14}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->indexOf([BB)I

    move-result v15

    const/4 v8, -0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_7
    const/4 v8, -0x1

    goto :goto_0

    .line 185
    :cond_8
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method static synthetic getNextContext$default(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x64

    .line 130
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getNextContext(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final indexOf([BB)I
    .locals 3

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private final saveProgress(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;

    invoke-direct {v0, p0, p3}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    iget-object p3, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-eqz p3, :cond_4

    .line 106
    invoke-virtual {p3, p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->setProgress(I)V

    .line 107
    invoke-virtual {p3, p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->setOffset(I)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->setLastReadTime(J)V

    .line 109
    sget-object p1, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object p2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object p1

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    invoke-interface {p1, p3, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->update(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 111
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->collect(Lcom/innioasis/y1_eBook/ui/text/TextIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/text/TextIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;

    invoke-direct {v0, p0, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;-><init>(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    .line 99
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :pswitch_0
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent;

    iget-object v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    iget-object v0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;

    if-eqz p2, :cond_2

    .line 37
    sget-object p2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object p2

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;->getBookId()I

    move-result p1

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->getBookById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    move-object p1, p0

    move-object v0, p1

    .line 31
    :goto_1
    check-cast p2, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    iput-object p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    .line 39
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-eqz p1, :cond_11

    .line 40
    sget-object p2, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->INSTANCE:Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->detectCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->charset:Ljava/nio/charset/Charset;

    .line 41
    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getProgress()I

    move-result p2

    invoke-static {v0, p2, v3, v5, v4}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getNextContext$default(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 42
    new-instance v1, Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getOffset()I

    move-result p1

    invoke-direct {v1, p2, p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;-><init>(Ljava/util/List;I)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 46
    :cond_2
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;

    if-eqz p2, :cond_3

    .line 47
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;->getI()I

    move-result p1

    invoke-static {p0, p1, v3, v5, v4}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getNextContext$default(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;

    invoke-direct {p2, p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;-><init>(Ljava/util/List;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 52
    :cond_3
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetLastContent;

    if-eqz p2, :cond_4

    .line 53
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetLastContent;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetLastContent;->getI()I

    move-result p1

    invoke-static {p0, p1, v3, v5, v4}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getLastContext$default(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;

    invoke-direct {p2, p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;-><init>(Ljava/util/List;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 58
    :cond_4
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->getI()I

    move-result p2

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->getOffset()I

    move-result p1

    iput v5, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-direct {p0, p2, p1, v0}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->saveProgress(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 99
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 59
    :cond_6
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetImage;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetImage;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetImage;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getImage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 60
    :cond_7
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;

    if-eqz p2, :cond_9

    .line 61
    sget-object p2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    move-result-object p2

    .line 62
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;->getBookId()I

    move-result p1

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;->getBookmarksByBookId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, p0

    .line 31
    :goto_3
    check-cast p2, Ljava/util/List;

    .line 64
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;

    invoke-direct {v0, p2}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;-><init>(Ljava/util/List;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 67
    :cond_9
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;

    if-eqz p2, :cond_c

    .line 69
    sget-object p2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    move-result-object p2

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;->getBookMark()Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p1

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;->insert(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    move-object p1, p0

    :goto_4
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_b

    .line 71
    new-instance p2, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;

    const v0, 0x7f110059

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 73
    :cond_b
    new-instance p2, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;

    const v0, 0x7f110058

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 77
    :cond_c
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;

    if-eqz p2, :cond_d

    .line 78
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;->getItem()Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->getProgress()I

    move-result p2

    invoke-static {p0, p2, v3, v5, v4}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->getNextContext$default(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;->getItem()Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->getOffset()I

    move-result p1

    invoke-direct {v0, p2, p1}, Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;-><init>(Ljava/util/List;I)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto/16 :goto_7

    .line 83
    :cond_d
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;

    if-eqz p2, :cond_11

    .line 85
    move-object p2, p1

    check-cast p2, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;->getAll()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 87
    sget-object v2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    move-result-object v2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;->getBookMark()Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->getBookId()I

    move-result p2

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-interface {v2, p2, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;->deleteAllByBookId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    return-object v1

    :cond_e
    move-object v2, p0

    goto :goto_5

    .line 90
    :cond_f
    sget-object v2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    move-result-object v2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;->getBookMark()Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p2

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-interface {v2, p2, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;->delete(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    return-object v1

    .line 93
    :goto_5
    sget-object p2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    move-result-object p2

    .line 94
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;->getBookMark()Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->getBookId()I

    move-result p1

    iput-object v2, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$collect$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;->getBookmarksByBookId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_10

    return-object v1

    :cond_10
    move-object p1, v2

    .line 31
    :goto_6
    check-cast p2, Ljava/util/List;

    .line 96
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;

    invoke-direct {v0, p2}, Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;-><init>(Ljava/util/List;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 99
    :cond_11
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final findFirstLineBreak([B)I
    .locals 4

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 253
    aget-byte v2, p1, v1

    int-to-char v2, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v1, 0x1

    .line 257
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-byte p1, p1, v0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public getMutableSharedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/text/TextState;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method
