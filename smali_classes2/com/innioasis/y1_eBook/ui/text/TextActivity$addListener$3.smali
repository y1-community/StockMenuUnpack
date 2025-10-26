.class final Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TextActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/text/TextActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "firstVisible",
        "",
        "lastVisible",
        "totalItemCount",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->invoke(III)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(III)V
    .locals 5

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    .line 240
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p3, p2, [Ljava/lang/Object;

    const-string v1, "\u5230\u8fbe\u5e95\u90e8,\u4e14\u4e0d\u52a0\u8f7d\u4e86"

    invoke-virtual {p1, v1, p3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p1

    iget-object p3, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    invoke-static {p3}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    .line 243
    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getEndIndex()I

    move-result p1

    invoke-direct {v0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;-><init>(II)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p3, v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void

    .line 248
    :cond_0
    iget-object p3, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    invoke-static {p3}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$3;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    check-cast p3, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    .line 249
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fdd\u5b58\u8fdb\u5ea6  position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \nitem ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") \nitem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getStartIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 252
    invoke-static {v1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v2

    const v3, 0x7f0a00b1

    invoke-virtual {v2, p1, v3}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getViewByPosition(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    new-instance p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    invoke-virtual {p3}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getStartIndex()I

    move-result p3

    aget p2, p2, v0

    invoke-direct {p1, p3, p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;-><init>(II)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {v1, p1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    :cond_1
    return-void
.end method
