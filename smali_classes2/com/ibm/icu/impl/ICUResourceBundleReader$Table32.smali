.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table32"
.end annotation


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1108
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1109
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 1110
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    .line 1111
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    array-length p1, p1

    iput p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->size:I

    .line 1112
    iget p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->size:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    iput p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1106
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->getContainer32Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    return p1
.end method
