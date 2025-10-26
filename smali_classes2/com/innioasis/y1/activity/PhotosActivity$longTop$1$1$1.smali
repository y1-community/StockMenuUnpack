.class public final Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "PhotosActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->invoke(I)V
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
        "com/innioasis/y1/activity/PhotosActivity$longTop$1$1$1",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    .line 712
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V

    .line 719
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public confirm()V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$delete(Lcom/innioasis/y1/activity/PhotosActivity;)V

    return-void
.end method
