.class public final Lcom/innioasis/y1_eBook/ui/main/MainViewModel;
.super Lcom/innioasis/y1_eBook/base/BaseViewModel;
.source "MainViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "Lcom/innioasis/y1_eBook/ui/main/MainState;",
        "Lcom/innioasis/y1_eBook/ui/main/MainIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0011\u0010\u000f\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J)\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/main/MainViewModel;",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "Lcom/innioasis/y1_eBook/ui/main/MainState;",
        "Lcom/innioasis/y1_eBook/ui/main/MainIntent;",
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
        "(Lcom/innioasis/y1_eBook/ui/main/MainIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBookList",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeBook",
        "book",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "canDeleteFile",
        "",
        "canToast",
        "(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
            "Lcom/innioasis/y1_eBook/ui/main/MainState;",
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

    .line 13
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1_eBook/base/BaseViewModel;-><init>(Landroid/app/Application;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 15
    invoke-static {v0, v1, p1, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method

.method public static final synthetic access$getBookList(Lcom/innioasis/y1_eBook/ui/main/MainViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->getBookList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeBook(Lcom/innioasis/y1_eBook/ui/main/MainViewModel;Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->removeBook(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getBookList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;-><init>(Lcom/innioasis/y1_eBook/ui/main/MainViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    sget-object p1, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object p1

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$getBookList$1;->label:I

    invoke-interface {p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->getAllBooks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 54
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 56
    new-instance v1, Lcom/innioasis/y1_eBook/ui/main/MainState$GetBookListSuccess;

    invoke-direct {v1, p1}, Lcom/innioasis/y1_eBook/ui/main/MainState$GetBookListSuccess;-><init>(Ljava/util/List;)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final removeBook(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;

    invoke-direct {v0, p0, p4}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;-><init>(Lcom/innioasis/y1_eBook/ui/main/MainViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p3, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->Z$1:Z

    iget-boolean p2, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->Z$0:Z

    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    iget-object v0, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    sget-object p4, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p4, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p4

    invoke-virtual {p4}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object p4

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->Z$0:Z

    iput-boolean p3, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->Z$1:Z

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel$removeBook$1;->label:I

    invoke-interface {p4, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->delete(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    if-lez p4, :cond_6

    if-eqz p2, :cond_5

    .line 33
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 37
    :cond_4
    new-instance p2, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;

    const p4, 0x7f110046

    invoke-static {p4}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4, p1, p3}, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;-><init>(Ljava/lang/String;Lcom/innioasis/y1_eBook/data/database/entities/Book;Z)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 41
    :cond_5
    new-instance p2, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;

    const p4, 0x7f110057

    invoke-static {p4}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4, p1, p3}, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;-><init>(Ljava/lang/String;Lcom/innioasis/y1_eBook/data/database/entities/Book;Z)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    .line 46
    new-instance p2, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;

    const p4, 0x7f110045

    invoke-static {p4}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4, p1, p3}, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;-><init>(Ljava/lang/String;Lcom/innioasis/y1_eBook/data/database/entities/Book;Z)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    goto :goto_2

    .line 48
    :cond_7
    new-instance p2, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;

    const p4, 0x7f110056

    invoke-static {p4}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4, p1, p3}, Lcom/innioasis/y1_eBook/ui/main/MainState$DeleteBookSuccess;-><init>(Ljava/lang/String;Lcom/innioasis/y1_eBook/data/database/entities/Book;Z)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {v0, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 52
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->collect(Lcom/innioasis/y1_eBook/ui/main/MainIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/main/MainIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/main/MainIntent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$GetBookList;->INSTANCE:Lcom/innioasis/y1_eBook/ui/main/MainIntent$GetBookList;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->getBookList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->getBook()Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-result-object v0

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->getCanDeleteFile()Z

    move-result v1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->getCanToast()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->removeBook(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 25
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
            "Lcom/innioasis/y1_eBook/ui/main/MainState;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method
