.class public final Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;
.super Lcom/innioasis/y1_eBook/base/BaseViewModel;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "Lcom/innioasis/y1_eBook/ui/search/SearchState;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchViewModel.kt\ncom/innioasis/y1_eBook/ui/search/SearchViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0011\u0010\u000f\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0019\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J\u001f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001a2\u0006\u0010\u001b\u001a\u00020\u0014H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchState;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "mutableSharedFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "getMutableSharedFlow",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "collect",
        "",
        "it",
        "(Lcom/innioasis/y1_eBook/ui/search/SearchIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFileBook",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTextFileLength",
        "",
        "file",
        "Ljava/io/File;",
        "isTargetFile",
        "",
        "saveBook",
        "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "searchBook",
        "",
        "root",
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
.field private final mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/search/SearchState;",
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

    .line 17
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1_eBook/base/BaseViewModel;-><init>(Landroid/app/Application;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 19
    invoke-static {v0, v1, p1, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method

.method public static final synthetic access$getFileBook(Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->getFileBook(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isTargetFile(Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Ljava/io/File;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->isTargetFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$saveBook(Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->saveBook(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchBook(Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->searchBook(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getFileBook(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;-><init>(Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    new-instance p1, Ljava/io/File;

    const-string v2, "/storage/sdcard0"

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$getFileBook$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->searchBook(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 31
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 37
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "\u6587\u4ef6\u540d:%s"

    invoke-virtual {v4, v2, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 39
    :cond_4
    new-instance v1, Lcom/innioasis/y1_eBook/ui/search/SearchState$GetFileBookSuccess;

    invoke-direct {v1, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchState$GetFileBookSuccess;-><init>(Ljava/util/List;)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final getTextFileLength(Ljava/io/File;)I
    .locals 6

    const/4 v0, -0x1

    .line 94
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of p1, v2, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    if-eqz p1, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, p1

    :goto_0
    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/BufferedReader;

    const/4 v4, 0x0

    new-array v1, v1, [C

    .line 98
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v5, v0, :cond_1

    add-int/2addr v4, v5

    goto :goto_1

    .line 94
    :cond_1
    :try_start_2
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_2
    return v0
.end method

.method private final isTargetFile(Ljava/io/File;)Z
    .locals 4

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".epub"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 62
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".txt"

    .line 63
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final saveBook(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;

    iget v3, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;

    invoke-direct {v2, v0, v1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;-><init>(Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 71
    iget v4, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2
    iget-object v4, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v6, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v7, "file.absolutePath"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->label:I

    invoke-interface {v1, v4, v2}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->getBookByPath(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v6, v0

    move-object v4, v7

    .line 71
    :goto_1
    check-cast v1, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-nez v1, :cond_6

    .line 75
    sget-object v1, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v7, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v7}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object v1

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v14, v7

    .line 77
    new-instance v4, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    const/4 v8, 0x0

    const-string v7, "name"

    .line 78
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "absolutePath"

    .line 79
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x41

    const/16 v17, 0x0

    move-object v7, v4

    .line 77
    invoke-direct/range {v7 .. v17}, Lcom/innioasis/y1_eBook/data/database/entities/Book;-><init>(ILjava/lang/String;Ljava/lang/String;JIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    iput-object v6, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$saveBook$1;->label:I

    invoke-interface {v1, v4, v2}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->insert(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v2, v6

    .line 85
    :goto_2
    new-instance v1, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;

    const v3, 0x7f11005b

    invoke-static {v3}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v2, v1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto :goto_3

    .line 87
    :cond_6
    new-instance v1, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;

    const v2, 0x7f11005a

    invoke-static {v2}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v6, v1}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 89
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final searchBook(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$searchBook$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel$searchBook$2;-><init>(Ljava/io/File;Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/innioasis/y1_eBook/ui/search/SearchIntent;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->collect(Lcom/innioasis/y1_eBook/ui/search/SearchIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/search/SearchIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/search/SearchIntent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$GetFileBook;->INSTANCE:Lcom/innioasis/y1_eBook/ui/search/SearchIntent$GetFileBook;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->getFileBook(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 27
    :cond_1
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->saveBook(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 29
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getMutableSharedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/search/SearchState;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method
