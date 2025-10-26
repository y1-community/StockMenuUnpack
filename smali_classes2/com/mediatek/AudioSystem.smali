.class public Lcom/mediatek/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3fffe001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_OUT_ALL:I = 0x4000ffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x6000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_CALL_2:I = 0x4

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field private static final NUM_DEVICE_STATES:I = 0x1

.field private static final NUM_FORCE_CONFIG:I = 0xc

.field private static final NUM_FORCE_USE:I = 0x5

.field public static final NUM_MODES:I = 0x5

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xc

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM:I = 0xa

.field public static final STREAM_MATV:I = 0xb

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static mErrorCallback:Lcom/mediatek/AudioSystem$ErrorCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static errorCallbackFromNative(I)V
    .locals 2

    .line 189
    const-class v0, Lcom/mediatek/AudioSystem;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Lcom/mediatek/AudioSystem;->mErrorCallback:Lcom/mediatek/AudioSystem$ErrorCallback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 193
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 195
    invoke-interface {v1, p0}, Lcom/mediatek/AudioSystem$ErrorCallback;->onError(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 193
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static native getAudioCommand(I)I
.end method

.method public static native getAudioData(II[B)I
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    const-string p0, ""

    return-object p0

    :sswitch_0
    const-string p0, "remote_submix"

    return-object p0

    :sswitch_1
    const-string p0, "usb_device"

    return-object p0

    :sswitch_2
    const-string p0, "usb_accessory"

    return-object p0

    :sswitch_3
    const-string p0, "digital_dock"

    return-object p0

    :sswitch_4
    const-string p0, "analog_dock"

    return-object p0

    :sswitch_5
    const-string p0, "aux_digital"

    return-object p0

    :sswitch_6
    const-string p0, "bt_a2dp_spk"

    return-object p0

    :sswitch_7
    const-string p0, "bt_a2dp_hp"

    return-object p0

    :sswitch_8
    const-string p0, "bt_a2dp"

    return-object p0

    :sswitch_9
    const-string p0, "bt_sco_carkit"

    return-object p0

    :sswitch_a
    const-string p0, "bt_sco_hs"

    return-object p0

    :sswitch_b
    const-string p0, "bt_sco"

    return-object p0

    :sswitch_c
    const-string p0, "headphone"

    return-object p0

    :sswitch_d
    const-string p0, "headset"

    return-object p0

    :cond_0
    const-string p0, "speaker"

    return-object p0

    :cond_1
    const-string p0, "earpiece"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x40 -> :sswitch_9
        0x80 -> :sswitch_8
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getEmParameter([BI)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native muteMicrophone(Z)I
.end method

.method public static native setAudioCommand(II)I
.end method

.method public static native setAudioData(II[B)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;)I
.end method

.method public static native setEmParameter([BI)I
.end method

.method public static setErrorCallback(Lcom/mediatek/AudioSystem$ErrorCallback;)V
    .locals 1

    .line 176
    const-class v0, Lcom/mediatek/AudioSystem;

    monitor-enter v0

    .line 177
    :try_start_0
    sput-object p0, Lcom/mediatek/AudioSystem;->mErrorCallback:Lcom/mediatek/AudioSystem$ErrorCallback;

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {}, Lcom/mediatek/AudioSystem;->isMicrophoneMuted()Z

    return-void

    :catchall_0
    move-exception p0

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static native setStreamVolumeIndex(III)I
.end method
