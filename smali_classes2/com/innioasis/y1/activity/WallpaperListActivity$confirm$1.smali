.class final Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WallpaperListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/WallpaperListActivity;->confirm()V
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
.field final synthetic $progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/activity/WallpaperListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;->$progressDialog:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;->$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->access$updateRight(Lcom/innioasis/y1/activity/WallpaperListActivity;)V

    .line 112
    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->updateBaseWallpaper()V

    return-void
.end method
