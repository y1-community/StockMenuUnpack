.class public Lcom/mediatek/FMTransmitter/FMTransmitterNative;
.super Ljava/lang/Object;
.source "FMTransmitterNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fmjni"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native activeAF()S
.end method

.method static native activeTA()S
.end method

.method static native autoscan()[S
.end method

.method static native closedev()Z
.end method

.method static native deactiveTA()S
.end method

.method static native getLRText()[B
.end method

.method static native getPS()[B
.end method

.method static native getTXFreqList(FII)[S
.end method

.method static native isRDSTXSupport()I
.end method

.method static native isRDSsupport()I
.end method

.method static native isTXSupport()I
.end method

.method static native opendev()Z
.end method

.method static native powerdown(I)Z
.end method

.method static native powerup(F)Z
.end method

.method static native powerupTX(F)Z
.end method

.method static native rdsset(Z)I
.end method

.method static native readrds()S
.end method

.method static native seek(FZ)F
.end method

.method static native setRDSTX(S[C[SI)Z
.end method

.method static native setRDSTXEnabled(Z)Z
.end method

.method static native setmute(Z)I
.end method

.method static native stopscan()Z
.end method

.method static native tune(F)Z
.end method

.method static native tuneTX(F)Z
.end method
