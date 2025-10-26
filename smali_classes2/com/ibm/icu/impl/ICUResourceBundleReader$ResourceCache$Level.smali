.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Level"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field keys:[I

.field levelBitsList:I

.field mask:I

.field shift:I

.field values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1186
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    .line 1195
    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    and-int/lit8 p1, p1, 0xf

    const/4 p2, 0x1

    shl-int p1, p2, p1

    add-int/lit8 p2, p1, -0x1

    .line 1199
    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    .line 1200
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    .line 1201
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method get(I)Ljava/lang/Object;
    .locals 2

    .line 1205
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v0, p1, v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v0, v1

    .line 1206
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1208
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    if-nez v1, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    if-eqz v0, :cond_1

    .line 1213
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .line 1220
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v0, p1, v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v0, v1

    .line 1221
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1223
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {p1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->access$2000([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v2, :cond_3

    .line 1226
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v3, v2, v0

    check-cast v3, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    if-eqz v3, :cond_1

    .line 1228
    invoke-virtual {v3, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1230
    :cond_1
    aput p1, v1, v0

    .line 1231
    invoke-static {p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->access$2100(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    aput-object p1, v2, v0

    return-object p2

    .line 1236
    :cond_3
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    shr-int/lit8 v4, v3, 0x4

    iget v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v5, v3

    invoke-direct {v1, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    .line 1237
    iget v3, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v3, v2, v3

    iget v4, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v3, v4

    .line 1238
    iget-object v4, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput v2, v4, v3

    .line 1239
    iget-object v2, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v2, v3

    .line 1240
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 1241
    aput-object v1, v4, v0

    .line 1242
    invoke-virtual {v1, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
