.class public final synthetic Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/innioasis/y1/database/Y1Repository;

.field public final synthetic f$1:Lcom/innioasis/y1/database/Bookmark;


# direct methods
.method public synthetic constructor <init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;->f$0:Lcom/innioasis/y1/database/Y1Repository;

    iput-object p2, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;->f$1:Lcom/innioasis/y1/database/Bookmark;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;->f$0:Lcom/innioasis/y1/database/Y1Repository;

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;->f$1:Lcom/innioasis/y1/database/Bookmark;

    invoke-static {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->$r8$lambda$KrueT8wEPgjiTKQl6qNvWrWDwn8(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V

    return-void
.end method
