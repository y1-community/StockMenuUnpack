.class public final Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;
.super Lcom/innioasis/y1_eBook/base/BaseViewModel;
.source "EpubViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubState;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0019\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0008H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u001c\u001a\u00020\u0012H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubState;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "index",
        "",
        "info",
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;",
        "isLoading",
        "",
        "mutableSharedFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "getMutableSharedFlow",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "collect",
        "",
        "it",
        "(Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChapterContent",
        "getImage",
        "url",
        "",
        "initBook",
        "bookId",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "jumpChapter",
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
.field private index:I

.field private info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

.field private isLoading:Z

.field private final mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubState;",
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

    .line 15
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1_eBook/base/BaseViewModel;-><init>(Landroid/app/Application;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 17
    invoke-static {v0, v1, p1, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method

.method public static final synthetic access$initBook(Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->initBook(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getChapterContent(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getChapterContentByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    iput p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->index:I

    .line 70
    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;

    invoke-direct {p1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    return-void
.end method

.method private final getImage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final initBook(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;

    invoke-direct {v0, p0, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 74
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    sget-object p2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object p2

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel$initBook$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->getBookById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 74
    :goto_1
    check-cast p2, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-nez p2, :cond_4

    .line 77
    new-instance p2, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    const v0, 0x7f110051

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 80
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 81
    new-instance p2, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    const v0, 0x7f110052

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 82
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 87
    :cond_5
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubState$StartLoading;

    const v1, 0x7f1100c7

    invoke-static {v1}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$StartLoading;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 88
    iput-boolean v3, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->isLoading:Z

    .line 90
    new-instance v0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    .line 93
    sget-object v0, Lcom/innioasis/y1_eBook/ui/epub/EpubState$EndLoading;->INSTANCE:Lcom/innioasis/y1_eBook/ui/epub/EpubState$EndLoading;

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->isLoading:Z

    .line 97
    new-instance v1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$InitBookSuccess;

    iget-object v2, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$InitBookSuccess;-><init>(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 100
    iput v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->index:I

    .line 101
    iget-object p2, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->index:I

    invoke-virtual {p2, v0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getChapterContentByIndex(I)Ljava/lang/String;

    move-result-object p2

    .line 102
    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;

    invoke-direct {v0, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterContentSuccess;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 103
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final jumpChapter()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterSuccess;

    iget v2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->index:I

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$GetChapterSuccess;-><init>(ILjava/util/List;)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->collect(Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;->getBookId()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->initBook(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 29
    :cond_1
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;

    if-eqz p2, :cond_5

    .line 31
    iget-boolean p2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->isLoading:Z

    if-eqz p2, :cond_2

    .line 32
    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    const p2, 0x7f1100c7

    invoke-static {p2}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 33
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 35
    :cond_2
    iget p2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->index:I

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;->getI()I

    move-result p1

    add-int/2addr p2, p1

    if-gez p2, :cond_3

    .line 38
    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    const p2, 0x7f110041

    invoke-static {p2}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->info:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_4

    .line 43
    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;

    const p2, 0x7f110042

    invoke-static {p2}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 46
    :cond_4
    invoke-direct {p0, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->getChapterContent(I)V

    goto :goto_0

    .line 49
    :cond_5
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$GetImage;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$GetImage;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$GetImage;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->getImage(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_6
    sget-object p2, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;->INSTANCE:Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->jumpChapter()V

    goto :goto_0

    .line 52
    :cond_7
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByIndex;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByIndex;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByIndex;->getIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->getChapterContent(I)V

    .line 54
    :cond_8
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getMutableSharedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubState;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method
