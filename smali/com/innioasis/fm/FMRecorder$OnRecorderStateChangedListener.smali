.class public interface abstract Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;
.super Ljava/lang/Object;
.source "FMRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/fm/FMRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRecorderStateChangedListener"
.end annotation


# virtual methods
.method public abstract onPlayRecordFileComplete()V
.end method

.method public abstract onRecorderError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onRecorderStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
