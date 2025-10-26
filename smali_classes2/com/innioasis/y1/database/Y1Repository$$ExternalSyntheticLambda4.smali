.class public final synthetic Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/innioasis/y1/database/Y1Repository;

.field public final synthetic f$1:Lcom/innioasis/y1/database/Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;->f$0:Lcom/innioasis/y1/database/Y1Repository;

    iput-object p2, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;->f$1:Lcom/innioasis/y1/database/Progress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;->f$0:Lcom/innioasis/y1/database/Y1Repository;

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;->f$1:Lcom/innioasis/y1/database/Progress;

    invoke-static {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->$r8$lambda$jCOyEtfSJAr4Vn_YXfx-39B3ddc(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V

    return-void
.end method
