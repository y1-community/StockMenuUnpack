.class public final Lcom/innioasis/y1/dialog/EqEditDialog$save$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "EqEditDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/dialog/EqEditDialog;->save()V
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
        "com/innioasis/y1/dialog/EqEditDialog$save$1",
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

    iput-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    .line 350
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEp$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    .line 375
    invoke-static {v1, v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$upDataEqPreset(Lcom/innioasis/y1/dialog/EqEditDialog;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 376
    sget-object v1, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$setSave$p(Lcom/innioasis/y1/dialog/EqEditDialog;Z)V

    .line 379
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->dismiss()V

    .line 380
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->cancel()V

    return-void
.end method

.method public confirm()V
    .locals 8

    .line 352
    new-instance v6, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    .line 353
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v1

    .line 354
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v2

    .line 355
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v3

    .line 356
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v4

    .line 357
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v5

    move-object v0, v6

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;-><init>(SSSSS)V

    .line 361
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0, v6}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$upDataEqPreset(Lcom/innioasis/y1/dialog/EqEditDialog;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 366
    sget-object v0, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    invoke-virtual {v0, v6}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 367
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v0, v7}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$setSave$p(Lcom/innioasis/y1/dialog/EqEditDialog;Z)V

    .line 368
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->dismiss()V

    .line 369
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->cancel()V

    return-void
.end method
