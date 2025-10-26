.class final Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 230
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u5230\u8fbe\u5e95\u90e8 \u2705"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->access$getTextAdapter(Lcom/innioasis/y1_eBook/ui/text/TextActivity;)Lcom/innioasis/y1_eBook/ui/text/TextAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextActivity$addListener$2;->this$0:Lcom/innioasis/y1_eBook/ui/text/TextActivity;

    check-cast v0, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    .line 234
    new-instance v2, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getEndIndex()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;-><init>(I)V

    check-cast v2, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1_eBook/ui/text/TextActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method
