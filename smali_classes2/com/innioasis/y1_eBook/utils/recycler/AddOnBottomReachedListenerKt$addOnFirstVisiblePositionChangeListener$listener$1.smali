.class public final Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "addOnBottomReachedListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->addOnFirstVisiblePositionChangeListener(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastPosition:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;->$lastPosition:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 176
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 182
    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;->$lastPosition:Lkotlin/jvm/internal/Ref$IntRef;

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 183
    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
