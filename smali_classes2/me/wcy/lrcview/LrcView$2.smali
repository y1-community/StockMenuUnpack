.class Lme/wcy/lrcview/LrcView$2;
.super Landroid/os/AsyncTask;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/wcy/lrcview/LrcView;->lambda$loadLrc$2$me-wcy-lrcview-LrcView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lme/wcy/lrcview/LrcEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/wcy/lrcview/LrcView;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Lme/wcy/lrcview/LrcView;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$2;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 348
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView$2;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lme/wcy/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lme/wcy/lrcview/LrcUtils;->parseLrc([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 348
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lme/wcy/lrcview/LrcEntry;",
            ">;)V"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$000(Lme/wcy/lrcview/LrcView;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$2;->val$flag:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0, p1}, Lme/wcy/lrcview/LrcView;->access$1500(Lme/wcy/lrcview/LrcView;Ljava/util/List;)V

    .line 358
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$2;->this$0:Lme/wcy/lrcview/LrcView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lme/wcy/lrcview/LrcView;->access$1600(Lme/wcy/lrcview/LrcView;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
