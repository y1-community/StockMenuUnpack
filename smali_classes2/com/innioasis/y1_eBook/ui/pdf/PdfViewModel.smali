.class public final Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;
.super Lcom/innioasis/y1_eBook/base/BaseViewModel;
.source "PdfViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfState;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfState;",
        "Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;",
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
        "(Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
            "Lcom/innioasis/y1_eBook/ui/pdf/PdfState;",
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

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;->collect(Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;

    iget v1, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;

    invoke-direct {v0, p0, p2}, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;-><init>(Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    instance-of p2, p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent$InitBook;

    if-eqz p2, :cond_6

    .line 24
    sget-object p2, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/AppDatabase;->bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    move-result-object p2

    check-cast p1, Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent$InitBook;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/pdf/PdfIntent$InitBook;->getBookId()I

    move-result p1

    iput-object p0, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel$collect$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;->getBookById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 20
    :goto_1
    check-cast p2, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    if-nez p2, :cond_4

    .line 26
    new-instance p2, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;

    const v0, 0x7f110051

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 29
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    new-instance p2, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;

    const v0, 0x7f110052

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$Toast;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 34
    :cond_5
    new-instance v0, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$InitBookSuccess;

    invoke-direct {v0, p2}, Lcom/innioasis/y1_eBook/ui/pdf/PdfState$InitBookSuccess;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseState;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;->reply(Lcom/innioasis/y1_eBook/base/BaseState;)V

    .line 37
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getMutableSharedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/innioasis/y1_eBook/ui/pdf/PdfState;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/pdf/PdfViewModel;->mutableSharedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method
