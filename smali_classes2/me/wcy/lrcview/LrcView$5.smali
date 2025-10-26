.class Lme/wcy/lrcview/LrcView$5;
.super Ljava/lang/Object;
.source "LrcView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/wcy/lrcview/LrcView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/wcy/lrcview/LrcView;


# direct methods
.method constructor <init>(Lme/wcy/lrcview/LrcView;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LrcView"

    const-string v1, "hideTimelineRunnable run"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$700(Lme/wcy/lrcview/LrcView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Lme/wcy/lrcview/LrcView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/wcy/lrcview/LrcView;->access$702(Lme/wcy/lrcview/LrcView;Z)Z

    .line 618
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$1300(Lme/wcy/lrcview/LrcView;)I

    move-result v1

    invoke-static {v0, v1}, Lme/wcy/lrcview/LrcView;->access$1400(Lme/wcy/lrcview/LrcView;I)V

    :cond_0
    return-void
.end method
