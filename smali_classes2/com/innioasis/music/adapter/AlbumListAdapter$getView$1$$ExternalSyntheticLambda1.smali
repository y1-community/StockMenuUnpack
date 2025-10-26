.class public final synthetic Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Lcom/innioasis/music/data/Album;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/innioasis/music/data/Album;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;->f$1:Lcom/innioasis/music/data/Album;

    iput-object p3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;->f$1:Lcom/innioasis/music/data/Album;

    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;->f$2:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$r8$lambda$dSJILne8h40QpV53AOPJugRXvKc(Landroid/widget/TextView;Lcom/innioasis/music/data/Album;Landroid/widget/TextView;)V

    return-void
.end method
