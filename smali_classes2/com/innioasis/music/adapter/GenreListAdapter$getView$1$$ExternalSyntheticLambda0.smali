.class public final synthetic Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Lcom/innioasis/music/data/Genre;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/innioasis/music/data/Genre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/data/Genre;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/data/Genre;

    invoke-static {v0, v1}, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$r8$lambda$cd-byQ7ldAxel6vTT-7-5BbGmDg(Landroid/widget/TextView;Lcom/innioasis/music/data/Genre;)V

    return-void
.end method
