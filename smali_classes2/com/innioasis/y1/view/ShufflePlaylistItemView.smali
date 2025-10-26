.class public final Lcom/innioasis/y1/view/ShufflePlaylistItemView;
.super Landroid/widget/LinearLayout;
.source "ShufflePlaylistItemView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0016\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0019J\u0006\u0010\u001a\u001a\u00020\u0014J\u0006\u0010\u001b\u001a\u00020\u0017J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u000eJ\u0006\u0010\u001e\u001a\u00020\u0017J\u0006\u0010\u001f\u001a\u00020\u0017J\u0006\u0010 \u001a\u00020\u0017J\u0008\u0010!\u001a\u00020\u0017H\u0002R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/innioasis/y1/view/ShufflePlaylistItemView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "adapter",
        "Lcom/innioasis/music/adapter/MyBaseAdapter;",
        "Lcom/innioasis/y1/database/Song;",
        "binding",
        "Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;",
        "value",
        "",
        "isSelect",
        "()Z",
        "setSelect",
        "(Z)V",
        "oldPosition",
        "",
        "adapterNowPosition",
        "bind",
        "",
        "getPlaylist",
        "",
        "getPosition",
        "hide",
        "onAntiClockwise",
        "isMultiSelect",
        "onClockwise",
        "recordOldPosition",
        "show",
        "updateSelectUI",
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
.field private adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/music/adapter/MyBaseAdapter<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final binding:Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;

.field private isSelect:Z

.field private oldPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->binding:Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;

    const/4 p1, -0x1

    .line 89
    iput p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->oldPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->binding:Lcom/innioasis/y1/databinding/ViewShufflePlaylistItemBinding;

    const/4 p1, -0x1

    .line 89
    iput p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->oldPosition:I

    return-void
.end method

.method private final adapterNowPosition()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private final setSelect(Z)V
    .locals 3

    .line 30
    iput-boolean p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect:Z

    .line 31
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "ShufflePlaylistItemView"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set isSelect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final updateSelectUI()V
    .locals 4

    .line 54
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-boolean v2, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect:Z

    if-eqz v2, :cond_0

    const v3, 0x7f08014a

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/innioasis/music/adapter/MyBaseAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/adapter/MyBaseAdapter<",
            "Lcom/innioasis/y1/database/Song;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    .line 63
    new-instance v0, Lcom/innioasis/y1/view/ShufflePlaylistItemView$bind$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView$bind$1;-><init>(Lcom/innioasis/y1/view/ShufflePlaylistItemView;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->setOnSetItems(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getPlaylist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-boolean v1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect:Z

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0

    .line 71
    :cond_2
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()I
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->getPosition()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public final hide()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->setSelect(Z)V

    .line 85
    invoke-direct {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->updateSelectUI()V

    const/16 v0, 0x8

    .line 86
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->setVisibility(I)V

    return-void
.end method

.method public final isSelect()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect:Z

    return v0
.end method

.method public final onAntiClockwise(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapterNowPosition()I

    move-result p1

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->oldPosition:I

    if-gtz p1, :cond_3

    invoke-virtual {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 46
    iget-object p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/MyBaseAdapter;->cancelSelect()V

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->setDenySelectIndex(Z)V

    .line 48
    :goto_0
    invoke-direct {p0, v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->setSelect(Z)V

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->updateSelectUI()V

    return-void
.end method

.method public final onClockwise()V
    .locals 2

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->setSelect(Z)V

    .line 36
    iget-object v1, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapter:Lcom/innioasis/music/adapter/MyBaseAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->setDenySelectIndex(Z)V

    .line 37
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->updateSelectUI()V

    return-void
.end method

.method public final recordOldPosition()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->adapterNowPosition()I

    move-result v0

    iput v0, p0, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->oldPosition:I

    return-void
.end method

.method public final show()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->setVisibility(I)V

    return-void
.end method
