.class final Lcom/innioasis/fm/FmRadioService$Record;
.super Ljava/lang/Object;
.source "FmRadioService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/fm/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Record"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/fm/FmRadioService$Record;",
        "",
        "()V",
        "mCallback",
        "Lcom/innioasis/fm/FMRadioListener;",
        "getMCallback",
        "()Lcom/innioasis/fm/FMRadioListener;",
        "setMCallback",
        "(Lcom/innioasis/fm/FMRadioListener;)V",
        "mHashCode",
        "",
        "getMHashCode",
        "()I",
        "setMHashCode",
        "(I)V",
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
.field private mCallback:Lcom/innioasis/fm/FMRadioListener;

.field private mHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMCallback()Lcom/innioasis/fm/FMRadioListener;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$Record;->mCallback:Lcom/innioasis/fm/FMRadioListener;

    return-object v0
.end method

.method public final getMHashCode()I
    .locals 1

    .line 833
    iget v0, p0, Lcom/innioasis/fm/FmRadioService$Record;->mHashCode:I

    return v0
.end method

.method public final setMCallback(Lcom/innioasis/fm/FMRadioListener;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService$Record;->mCallback:Lcom/innioasis/fm/FMRadioListener;

    return-void
.end method

.method public final setMHashCode(I)V
    .locals 0

    .line 833
    iput p1, p0, Lcom/innioasis/fm/FmRadioService$Record;->mHashCode:I

    return-void
.end method
