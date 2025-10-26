.class public final Lcom/mediatek/fm/databinding/ActivityFmmainBinding;
.super Ljava/lang/Object;
.source "ActivityFmmainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final mainDiantai:Landroid/widget/TextView;

.field public final mainDiantai2:Landroid/widget/TextView;

.field public final mainVolumeLeft:Landroid/widget/ImageView;

.field public final mainVolumeLinear:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mainVolumeRight:Landroid/widget/ImageView;

.field public final mainVolumeSeekbar:Landroid/widget/SeekBar;

.field public final radioRuler:Landroid/widget/HorizontalScrollView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ruler:Lcom/mediatek/view/FmView;

.field public final soundRecordingIcon:Landroid/widget/ImageView;

.field public final soundRecordingLayout:Landroid/widget/LinearLayout;

.field public final soundRecordingText:Landroid/widget/TextView;

.field public final tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/HorizontalScrollView;Lcom/mediatek/view/FmView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iput-object p2, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainDiantai:Landroid/widget/TextView;

    .line 72
    iput-object p3, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainDiantai2:Landroid/widget/TextView;

    .line 73
    iput-object p4, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLeft:Landroid/widget/ImageView;

    .line 74
    iput-object p5, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLinear:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p6, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeRight:Landroid/widget/ImageView;

    .line 76
    iput-object p7, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeSeekbar:Landroid/widget/SeekBar;

    .line 77
    iput-object p8, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->radioRuler:Landroid/widget/HorizontalScrollView;

    .line 78
    iput-object p9, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->ruler:Lcom/mediatek/view/FmView;

    .line 79
    iput-object p10, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingIcon:Landroid/widget/ImageView;

    .line 80
    iput-object p11, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingLayout:Landroid/widget/LinearLayout;

    .line 81
    iput-object p12, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingText:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mediatek/fm/databinding/ActivityFmmainBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 112
    sget v1, Lcom/mediatek/fm/R$id;->main_diantai:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 118
    sget v1, Lcom/mediatek/fm/R$id;->main_diantai2:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 124
    sget v1, Lcom/mediatek/fm/R$id;->main_volume_left:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 130
    sget v1, Lcom/mediatek/fm/R$id;->main_volume_linear:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 136
    sget v1, Lcom/mediatek/fm/R$id;->main_volume_right:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 142
    sget v1, Lcom/mediatek/fm/R$id;->main_volume_seekbar:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    .line 148
    sget v1, Lcom/mediatek/fm/R$id;->radio_ruler:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/HorizontalScrollView;

    if-eqz v11, :cond_0

    .line 154
    sget v1, Lcom/mediatek/fm/R$id;->ruler:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/mediatek/view/FmView;

    if-eqz v12, :cond_0

    .line 160
    sget v1, Lcom/mediatek/fm/R$id;->sound_recording_icon:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 166
    sget v1, Lcom/mediatek/fm/R$id;->sound_recording_layout:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 172
    sget v1, Lcom/mediatek/fm/R$id;->sound_recording_text:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 178
    sget v1, Lcom/mediatek/fm/R$id;->tune_frequency:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v16, :cond_0

    .line 184
    new-instance v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/HorizontalScrollView;Lcom/mediatek/view/FmView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v1

    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mediatek/fm/databinding/ActivityFmmainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mediatek/fm/databinding/ActivityFmmainBinding;
    .locals 2

    .line 99
    sget v0, Lcom/mediatek/fm/R$layout;->activity_fmmain:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->bind(Landroid/view/View;)Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
