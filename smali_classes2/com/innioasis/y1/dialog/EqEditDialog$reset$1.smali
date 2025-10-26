.class public final Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "EqEditDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/dialog/EqEditDialog;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/dialog/EqEditDialog$reset$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/innioasis/y1/dialog/EqEditDialog;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/dialog/EqEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    .line 440
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 442
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getPreset$p(Lcom/innioasis/y1/dialog/EqEditDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/EqSPUtils;->del(I)V

    .line 443
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getPreset$p(Lcom/innioasis/y1/dialog/EqEditDialog;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 453
    :pswitch_0
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getRock()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getPop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :pswitch_2
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getJazz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getHiphop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :pswitch_4
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getHeavymetal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :pswitch_5
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getFolk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :pswitch_6
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getFlat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :pswitch_7
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getDance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :pswitch_8
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getClassical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :pswitch_9
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getNormal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->resetEQ(Ljava/lang/String;)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$setAdapterData(Lcom/innioasis/y1/dialog/EqEditDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
