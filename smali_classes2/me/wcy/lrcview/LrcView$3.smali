.class Lme/wcy/lrcview/LrcView$3;
.super Landroid/os/AsyncTask;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/wcy/lrcview/LrcView;->loadLrcByUrl(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/wcy/lrcview/LrcView;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lme/wcy/lrcview/LrcView$3;->this$0:Lme/wcy/lrcview/LrcView;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$3;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 383
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView$3;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 386
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lme/wcy/lrcview/LrcUtils;->getContentFromNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 383
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$3;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$000(Lme/wcy/lrcview/LrcView;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$3;->val$flag:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$3;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->loadLrc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
