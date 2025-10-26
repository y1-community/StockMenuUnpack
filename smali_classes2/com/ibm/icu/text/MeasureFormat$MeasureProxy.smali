.class Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;
.super Ljava/lang/Object;
.source "MeasureFormat.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53ba9df5cf4d9362L


# instance fields
.field private formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field private keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Lcom/ibm/icu/util/ULocale;

.field private numberFormat:Lcom/ibm/icu/text/NumberFormat;

.field private subClass:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V
    .locals 0

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->locale:Lcom/ibm/icu/util/ULocale;

    .line 973
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 974
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 975
    iput p4, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    .line 976
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    return-void
.end method

.method private createTimeUnitFormat()Lcom/ibm/icu/text/TimeUnitFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1022
    :goto_0
    new-instance v1, Lcom/ibm/icu/text/TimeUnitFormat;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 1023
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/TimeUnitFormat;

    return-object v1

    .line 1020
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1028
    iget v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/MeasureFormat;->getCurrencyFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0

    .line 1036
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->createTimeUnitFormat()Lcom/ibm/icu/text/TimeUnitFormat;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 996
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 997
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->locale:Lcom/ibm/icu/util/ULocale;

    .line 998
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/ibm/icu/text/MeasureFormat;->access$000(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 999
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-eqz v0, :cond_1

    .line 1003
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    .line 1007
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    return-void

    .line 1009
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing optional values map."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1001
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing number format."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 985
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 986
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 988
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 989
    iget v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 990
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
