.class public final Lcom/innioasis/fm/adapter/FirstUseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirstUseAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0011H\u0016J\u0006\u0010\u001b\u001a\u00020\u0011J$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u000e\u0010!\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/innioasis/fm/adapter/FirstUseAdapter;",
        "Landroid/widget/BaseAdapter;",
        "context",
        "Landroid/content/Context;",
        "mList",
        "",
        "",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getMList",
        "()Ljava/util/List;",
        "setMList",
        "(Ljava/util/List;)V",
        "nowPosition",
        "",
        "addAll",
        "",
        "myList",
        "getCount",
        "getItem",
        "",
        "position",
        "getItemId",
        "",
        "getNowPosition",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "setNowPosition",
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
.field private context:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nowPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "myList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {p0}, Lcom/innioasis/fm/adapter/FirstUseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getMList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public final getNowPosition()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->nowPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 28
    iget-object p2, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->context:Landroid/content/Context;

    const p3, 0x7f0d00d9

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a02b5

    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget p3, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->nowPosition:I

    if-ne p1, p3, :cond_0

    const p1, 0x7f080094

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080092

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const-string p1, "view"

    .line 36
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public final setNowPosition(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/innioasis/fm/adapter/FirstUseAdapter;->nowPosition:I

    .line 42
    invoke-virtual {p0}, Lcom/innioasis/fm/adapter/FirstUseAdapter;->notifyDataSetChanged()V

    return-void
.end method
