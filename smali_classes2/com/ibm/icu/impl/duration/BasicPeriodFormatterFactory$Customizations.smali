.class Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Customizations"
.end annotation


# instance fields
.field countVariant:B

.field displayDirection:Z

.field displayLimit:Z

.field separatorVariant:B

.field unitVariant:B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 227
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    const/4 v0, 0x2

    .line 228
    iput-byte v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    const/4 v0, 0x0

    .line 229
    iput-byte v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 230
    iput-byte v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-void
.end method


# virtual methods
.method public copy()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .locals 2

    .line 233
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    .line 234
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 235
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    .line 236
    iget-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    iput-byte v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    .line 237
    iget-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    iput-byte v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 238
    iget-byte v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    iput-byte v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-object v0
.end method
