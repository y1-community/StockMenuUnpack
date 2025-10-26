.class final Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TextViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->saveProgress(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.innioasis.y1_eBook.ui.text.TextViewModel"
    f = "TextViewModel.kt"
    i = {}
    l = {
        0x6d
    }
    m = "saveProgress"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/text/TextViewModel;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/text/TextViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->label:I

    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextViewModel$saveProgress$1;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextViewModel;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0}, Lcom/innioasis/y1_eBook/ui/text/TextViewModel;->access$saveProgress(Lcom/innioasis/y1_eBook/ui/text/TextViewModel;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
