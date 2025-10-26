.class final Lcom/innioasis/fm/FMMainActivity$initView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FMMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity;->initView()V
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
.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$initView$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity$initView$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 187
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "\u5173\u673a\u4fdd\u5b58"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$initView$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0, v1}, Lcom/innioasis/fm/FMMainActivity;->access$setSoundRecordingState(Lcom/innioasis/fm/FMMainActivity;Z)V

    .line 190
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$initView$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$initView$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
