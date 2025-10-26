.class public final synthetic Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;

.field public final synthetic f$1:Lcom/innioasis/music/data/Album;

.field public final synthetic f$2:Lcom/innioasis/music/adapter/AlbumListAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/data/Album;

    iput-object p3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;->f$2:Lcom/innioasis/music/adapter/AlbumListAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/data/Album;

    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;->f$2:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-static {v0, v1, v2}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$r8$lambda$9GzQc4gG21iRuZsIfIvLmGtB5Dk(Landroid/widget/ImageView;Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;)V

    return-void
.end method
