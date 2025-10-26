.class public Lcom/mediatek/FMRadio/FMRadioNative;
.super Ljava/lang/Object;
.source "FMRadioNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fmjni"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native activeAF()S
.end method

.method public static native activeTA()S
.end method

.method public static native autoscan()[S
.end method

.method public static native closedev()Z
.end method

.method public static native deactiveTA()S
.end method

.method public static native emcmd([S)[S
.end method

.method public static native emsetth(II)Z
.end method

.method public static native getAFList()[S
.end method

.method public static native getHardwareVersion()[I
.end method

.method public static native getLRText()[B
.end method

.method public static native getPI()S
.end method

.method public static native getPS()[B
.end method

.method public static native getPTY()B
.end method

.method public static native getchipid()I
.end method

.method public static native isFMPoweredUp()I
.end method

.method public static native isRDSsupport()I
.end method

.method public static native opendev()Z
.end method

.method public static native powerdown(I)Z
.end method

.method public static native powerup(F)Z
.end method

.method public static native rdsset(Z)I
.end method

.method public static native readCapArray()S
.end method

.method public static native readRdsBler()S
.end method

.method public static native readRssi()I
.end method

.method public static native readrds()S
.end method

.method public static native scannew(III)[S
.end method

.method public static native seek(FZ)F
.end method

.method public static native seeknew(IIIIII)I
.end method

.method public static native setFMViaBTController(Z)Z
.end method

.method public static native setStereoMono(Z)Z
.end method

.method public static native setmute(Z)I
.end method

.method public static native stereoMono()Z
.end method

.method public static native stopscan()Z
.end method

.method public static native switchAntenna(I)I
.end method

.method public static native tune(F)Z
.end method

.method public static native tunenew(IIII)Z
.end method
