.class final Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "addOnBottomReachedListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->addOnTopReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;

.field final synthetic $this_addOnTopReachedListener:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;->$this_addOnTopReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;->$listener:Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;->$this_addOnTopReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;->$listener:Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
